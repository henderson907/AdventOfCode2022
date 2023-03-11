# I got some help from a friend for this day as I was struggling to format the logic I needed

puzzle_input = "noop
noop
addx 5
addx 3
addx -2
noop
addx 5
addx 4
noop
addx 3
noop
addx 2
addx -17
addx 18
addx 3
addx 1
noop
addx 5
noop
addx 1
addx 2
addx 5
addx -40
noop
addx 5
addx 2
addx 3
noop
addx 2
addx 3
addx -2
addx 2
addx 2
noop
addx 3
addx 5
addx 2
addx 3
addx -2
addx 2
addx -24
addx 31
addx 2
addx -33
addx -6
addx 5
addx 2
addx 3
noop
addx 2
addx 3
noop
addx 2
addx -1
addx 6
noop
noop
addx 1
addx 4
noop
noop
addx -15
addx 20
noop
addx -23
addx 27
noop
addx -35
addx 1
noop
noop
addx 5
addx 11
addx -10
addx 4
addx 1
noop
addx 2
addx 2
noop
addx 3
noop
addx 3
addx 2
noop
addx 3
addx 2
addx 11
addx -4
addx 2
addx -38
addx -1
addx 2
noop
addx 3
addx 5
addx 2
addx -7
addx 8
addx 2
addx 2
noop
addx 3
addx 5
addx 2
addx -25
addx 26
addx 2
addx 8
addx -1
addx 2
addx -2
addx -37
addx 5
addx 3
addx -1
addx 5
noop
addx 22
addx -21
addx 2
addx 5
addx 2
addx 13
addx -12
addx 4
noop
noop
addx 5
addx 1
noop
noop
addx 2
noop
addx 3
noop
noop"

# Splits puzzle input into seperate commands
def retrieve_instructions(data_string)
  data_string.split("\n")
end


def run(individual_instructions)
  output_shape = Hash.new(0)
  cycle = 1
  x_register = 1
  output_shape[cycle] = x_register
  individual_instructions.each do |instruction|
    if instruction == 'noop'
      cycle += 1
      x_register += 0
      output_shape[cycle] = x_register
    else # default to instruction addx
      cycle += 1
      output_shape[cycle] = x_register
      cycle += 1
      _, v = instruction.split ' '
      x_register += v.to_i
      output_shape[cycle] = x_register
    end
  end
  output_shape
end

# Prints the shape created by the code
def scanlines(output_shape)
  output_shape.each do |position, value|
    print value
    print "\n" if position % 40 == 0
  end
end

# Code for part 1
def part1(puzzle_input)
  individual_instructions = retrieve_instructions(puzzle_input)
  # Passes the instructions to the run function
  output_shape = run(individual_instructions)

  output_shape.filter do |cycle, v|
    (cycle - 20) % 40 == 0
  end
          .map { |cycle, v| cycle * v }
          .sum
end

# Code for part 2
def part2(puzzle_input)
  individual_instructions = retrieve_instructions(puzzle_input)
  output_shape = run(individual_instructions)

  # Creates a new hash to store our final image and then inputs data into it after evaluating
  # whether or not the value held in the output shape hash is divisible by 40 (after adding 0, 1 or 2)
  final_image = Hash.new(' ')
  output_shape.each do |position, value|
    final_image[position] = case position % 40
                     when value
                       '#'
                     when value + 1
                       '#'
                     when value + 2
                       '#'
                     else
                       ' '
                     end
  end

  scanlines(final_image)
end



# ------

# Answer: 13220
p part1(puzzle_input)

# Answer: RUAKHBEK
print "\n"
part2(puzzle_input)
