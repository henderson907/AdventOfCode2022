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

def test_equal?(left, right)
  if left != right
    print "\n", left, "\n"
    print right, "\n"
    print 'FAIL', "\n"
    false
  else
    print 'PASS', "\n"
    true
  end
end

def parse_data(data_string)
  data_string.split("\n")
end

def run(instructions_A)
  output_H = Hash.new(0)
  cycle = 1
  x_register = 1
  output_H[cycle] = x_register
  instructions_A.each do |instruction|
    if instruction == 'noop'
      cycle += 1
      x_register += 0
      output_H[cycle] = x_register
    else # default to instruction addx
      # print instruction.split ' '
      cycle += 1
      output_H[cycle] = x_register
      cycle += 1
      _, v = instruction.split ' '
      x_register += v.to_i
      output_H[cycle] = x_register
    end
  end
  output_H
end

def scanlines(output_H)
  output_H.each do |pixel, value|
    print value
    print "\n" if pixel % 40 == 0
  end
end

def part1(data_string)
  instructions_A = parse_data(data_string)
  output_H = run(instructions_A)
  # print output_H, "\n"
  output_H.filter do |cycle, _v|
    (cycle - 20) % 40 == 0
  end
          .map { |cycle, v| cycle * v }
          .sum
end

def part2(data_string)
  instructions_A = parse_data(data_string)
  output_H = run(instructions_A)
  # print output_H, "\n"
  image_H = Hash.new(' ')
  output_H.each do |pixel, sprite_pos|
    image_H[pixel] = case pixel % 40
                     when sprite_pos
                       '#'
                     when sprite_pos + 1
                       '#'
                     when sprite_pos + 2
                       '#'
                     else
                       ' '
                     end
  end
  # print image_H
  print "\n"
  scanlines(image_H)
end



# ------


p part1(puzzle_input)

p part2(puzzle_input)
