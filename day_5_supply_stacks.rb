stacks = [["B", "P", "N", "Q", "H", "D", "R", "T"],
  ["W", "G", "B", "J", "T", "V"],
  ["N", "R", "H", "D", "S", "V", "M", "Q"],
  ["P", "Z", "N", "M", "C"],
  ["D", "Z", "B"],
  ["V", "C", "W", "Z"],
  ["G", "Z", "N", "C", "V", "Q", "L", "S"],
  ["L", "G", "J", "M", "D", "N", "V"],
  ["T", "P", "M", "F", "Z", "C", "G"]]

stacks_2 = [["B", "P", "N", "Q", "H", "D", "R", "T"],
  ["W", "G", "B", "J", "T", "V"],
  ["N", "R", "H", "D", "S", "V", "M", "Q"],
  ["P", "Z", "N", "M", "C"],
  ["D", "Z", "B"],
  ["V", "C", "W", "Z"],
  ["G", "Z", "N", "C", "V", "Q", "L", "S"],
  ["L", "G", "J", "M", "D", "N", "V"],
  ["T", "P", "M", "F", "Z", "C", "G"]]

puzzle_input = "move 5 from 4 to 9
move 3 from 5 to 1
move 12 from 9 to 6
move 1 from 6 to 9
move 3 from 2 to 8
move 6 from 3 to 9
move 2 from 2 to 9
move 2 from 3 to 5
move 9 from 8 to 1
move 1 from 6 to 9
move 1 from 8 to 3
move 14 from 1 to 2
move 8 from 2 to 6
move 2 from 2 to 7
move 2 from 5 to 8
move 5 from 2 to 6
move 9 from 7 to 8
move 1 from 9 to 8
move 5 from 6 to 9
move 1 from 3 to 8
move 1 from 7 to 5
move 1 from 1 to 5
move 4 from 1 to 7
move 15 from 6 to 1
move 4 from 7 to 6
move 2 from 5 to 7
move 9 from 8 to 7
move 13 from 1 to 3
move 8 from 6 to 9
move 1 from 6 to 8
move 1 from 7 to 5
move 2 from 1 to 3
move 4 from 7 to 1
move 13 from 3 to 6
move 2 from 1 to 3
move 1 from 5 to 8
move 2 from 3 to 4
move 5 from 7 to 1
move 4 from 1 to 9
move 2 from 4 to 5
move 4 from 6 to 2
move 3 from 2 to 5
move 6 from 8 to 1
move 7 from 6 to 7
move 1 from 3 to 5
move 1 from 2 to 4
move 8 from 1 to 8
move 4 from 6 to 2
move 3 from 5 to 3
move 1 from 4 to 3
move 2 from 1 to 3
move 8 from 8 to 5
move 2 from 3 to 8
move 4 from 5 to 3
move 1 from 9 to 2
move 1 from 8 to 3
move 1 from 2 to 1
move 15 from 9 to 3
move 6 from 7 to 5
move 1 from 7 to 3
move 2 from 2 to 8
move 6 from 9 to 4
move 22 from 3 to 6
move 3 from 8 to 6
move 1 from 1 to 2
move 2 from 9 to 8
move 6 from 4 to 7
move 6 from 7 to 2
move 16 from 6 to 9
move 8 from 2 to 1
move 4 from 6 to 1
move 2 from 3 to 4
move 9 from 5 to 4
move 1 from 7 to 9
move 1 from 6 to 2
move 3 from 5 to 7
move 16 from 9 to 4
move 2 from 7 to 1
move 4 from 6 to 3
move 1 from 9 to 5
move 1 from 9 to 7
move 1 from 7 to 6
move 1 from 7 to 9
move 2 from 9 to 2
move 1 from 6 to 1
move 2 from 8 to 1
move 11 from 4 to 2
move 9 from 2 to 6
move 9 from 6 to 1
move 15 from 4 to 6
move 1 from 4 to 2
move 1 from 5 to 3
move 6 from 6 to 4
move 3 from 2 to 1
move 2 from 4 to 6
move 3 from 6 to 2
move 7 from 6 to 2
move 1 from 4 to 7
move 1 from 7 to 2
move 5 from 3 to 6
move 1 from 5 to 4
move 1 from 4 to 5
move 8 from 1 to 6
move 1 from 4 to 8
move 12 from 6 to 1
move 1 from 3 to 4
move 1 from 4 to 1
move 1 from 3 to 4
move 2 from 6 to 5
move 31 from 1 to 7
move 2 from 5 to 7
move 1 from 8 to 2
move 1 from 5 to 8
move 1 from 8 to 6
move 3 from 4 to 9
move 3 from 9 to 4
move 2 from 4 to 3
move 2 from 1 to 6
move 2 from 3 to 8
move 1 from 4 to 9
move 4 from 2 to 9
move 17 from 7 to 8
move 3 from 8 to 2
move 2 from 9 to 4
move 4 from 2 to 5
move 1 from 1 to 4
move 1 from 9 to 3
move 8 from 8 to 4
move 1 from 9 to 4
move 4 from 8 to 3
move 8 from 2 to 5
move 2 from 2 to 3
move 1 from 2 to 1
move 1 from 8 to 4
move 2 from 8 to 1
move 1 from 7 to 2
move 1 from 8 to 6
move 3 from 4 to 5
move 8 from 4 to 7
move 1 from 2 to 8
move 1 from 8 to 1
move 2 from 4 to 7
move 8 from 5 to 9
move 7 from 5 to 2
move 6 from 3 to 1
move 6 from 1 to 2
move 9 from 9 to 4
move 5 from 7 to 4
move 2 from 1 to 2
move 9 from 4 to 2
move 3 from 6 to 2
move 1 from 6 to 8
move 1 from 8 to 9
move 1 from 3 to 5
move 6 from 7 to 5
move 4 from 4 to 2
move 19 from 2 to 3
move 1 from 4 to 6
move 7 from 7 to 5
move 2 from 1 to 8
move 12 from 3 to 4
move 3 from 4 to 1
move 1 from 6 to 3
move 8 from 5 to 9
move 3 from 9 to 7
move 6 from 4 to 3
move 3 from 1 to 2
move 13 from 3 to 7
move 3 from 4 to 6
move 4 from 9 to 4
move 14 from 7 to 8
move 3 from 5 to 2
move 3 from 2 to 6
move 1 from 6 to 2
move 1 from 3 to 9
move 4 from 4 to 6
move 11 from 2 to 7
move 2 from 9 to 6
move 3 from 5 to 6
move 1 from 9 to 7
move 14 from 6 to 5
move 1 from 5 to 1
move 4 from 5 to 8
move 2 from 5 to 6
move 4 from 2 to 5
move 1 from 2 to 9
move 14 from 8 to 5
move 2 from 8 to 4
move 3 from 8 to 7
move 5 from 5 to 4
move 13 from 5 to 7
move 5 from 7 to 6
move 31 from 7 to 9
move 7 from 6 to 7
move 6 from 5 to 7
move 1 from 8 to 9
move 1 from 5 to 3
move 1 from 3 to 5
move 1 from 1 to 8
move 6 from 4 to 3
move 1 from 8 to 5
move 1 from 4 to 1
move 33 from 9 to 3
move 13 from 7 to 1
move 29 from 3 to 2
move 3 from 3 to 8
move 1 from 5 to 2
move 20 from 2 to 6
move 19 from 6 to 4
move 1 from 7 to 4
move 5 from 1 to 7
move 1 from 8 to 7
move 2 from 8 to 5
move 10 from 2 to 8
move 6 from 3 to 9
move 4 from 7 to 1
move 1 from 3 to 5
move 1 from 1 to 2
move 1 from 7 to 6
move 1 from 2 to 8
move 1 from 8 to 7
move 4 from 9 to 7
move 2 from 5 to 2
move 1 from 8 to 5
move 1 from 8 to 6
move 7 from 8 to 3
move 2 from 9 to 4
move 3 from 5 to 1
move 2 from 2 to 5
move 5 from 7 to 8
move 10 from 4 to 1
move 5 from 8 to 5
move 10 from 1 to 3
move 2 from 6 to 4
move 1 from 7 to 3
move 1 from 8 to 1
move 3 from 5 to 8
move 12 from 4 to 7
move 3 from 5 to 3
move 16 from 1 to 7
move 2 from 3 to 7
move 1 from 5 to 6
move 3 from 8 to 4
move 1 from 4 to 7
move 1 from 6 to 3
move 14 from 3 to 1
move 5 from 3 to 8
move 1 from 3 to 5
move 1 from 7 to 6
move 1 from 6 to 2
move 13 from 7 to 2
move 1 from 5 to 3
move 3 from 4 to 2
move 1 from 3 to 5
move 3 from 8 to 9
move 2 from 8 to 9
move 1 from 6 to 4
move 5 from 2 to 4
move 3 from 2 to 5
move 7 from 7 to 3
move 7 from 4 to 7
move 5 from 3 to 7
move 8 from 2 to 3
move 5 from 9 to 5
move 11 from 1 to 9
move 4 from 3 to 1
move 1 from 2 to 7
move 4 from 1 to 7
move 22 from 7 to 3
move 5 from 3 to 4
move 1 from 7 to 1
move 1 from 1 to 4
move 3 from 4 to 6
move 3 from 1 to 3
move 2 from 6 to 1
move 2 from 4 to 9
move 13 from 9 to 1
move 1 from 6 to 5
move 4 from 7 to 1
move 3 from 1 to 6
move 19 from 3 to 9
move 5 from 3 to 1
move 18 from 9 to 8
move 1 from 9 to 3
move 11 from 1 to 7
move 1 from 4 to 5
move 13 from 8 to 1
move 7 from 5 to 8
move 7 from 8 to 5
move 3 from 6 to 5
move 2 from 3 to 9
move 1 from 3 to 7
move 5 from 5 to 2
move 10 from 1 to 5
move 9 from 7 to 9
move 11 from 5 to 2
move 2 from 8 to 4
move 1 from 4 to 3
move 2 from 7 to 3
move 1 from 7 to 4
move 3 from 8 to 3
move 8 from 5 to 2
move 2 from 3 to 8
move 4 from 3 to 8
move 6 from 2 to 6
move 5 from 1 to 8
move 8 from 2 to 7
move 2 from 4 to 7
move 9 from 2 to 9
move 4 from 7 to 8
move 5 from 1 to 8
move 3 from 7 to 4
move 1 from 8 to 3
move 3 from 7 to 2
move 3 from 1 to 9
move 1 from 4 to 9
move 1 from 6 to 3
move 18 from 8 to 5
move 1 from 8 to 2
move 2 from 4 to 9
move 3 from 2 to 1
move 2 from 2 to 3
move 24 from 9 to 8
move 3 from 3 to 7
move 15 from 8 to 2
move 12 from 2 to 5
move 1 from 7 to 4
move 1 from 3 to 1
move 28 from 5 to 4
move 1 from 7 to 9
move 2 from 2 to 1
move 4 from 6 to 3
move 1 from 5 to 3
move 1 from 5 to 9
move 1 from 2 to 6
move 5 from 3 to 5
move 8 from 4 to 2
move 2 from 6 to 2
move 1 from 7 to 3
move 4 from 2 to 8
move 3 from 1 to 2
move 5 from 2 to 5
move 3 from 5 to 4
move 2 from 1 to 5
move 2 from 2 to 1
move 4 from 9 to 2
move 7 from 8 to 9
move 1 from 3 to 1
move 1 from 1 to 7
move 2 from 8 to 3
move 4 from 9 to 3
move 9 from 5 to 7
move 3 from 3 to 5
move 1 from 5 to 3
move 7 from 7 to 9
move 1 from 7 to 9
move 1 from 5 to 9
move 1 from 5 to 1
move 1 from 8 to 5
move 9 from 9 to 1
move 2 from 7 to 2
move 1 from 5 to 6
move 4 from 3 to 2
move 11 from 2 to 4
move 1 from 8 to 4
move 1 from 8 to 2
move 1 from 2 to 8
move 1 from 6 to 5
move 1 from 8 to 6
move 6 from 1 to 7
move 1 from 5 to 6
move 1 from 6 to 5
move 3 from 9 to 8
move 3 from 8 to 1
move 3 from 7 to 8
move 1 from 6 to 9
move 1 from 2 to 4
move 1 from 9 to 7
move 2 from 7 to 9
move 10 from 1 to 6
move 2 from 9 to 3
move 1 from 5 to 7
move 3 from 7 to 5
move 3 from 5 to 3
move 4 from 6 to 3
move 18 from 4 to 2
move 3 from 4 to 1
move 1 from 1 to 3
move 2 from 1 to 2
move 8 from 2 to 9
move 1 from 4 to 7
move 1 from 7 to 1
move 3 from 9 to 2
move 3 from 8 to 6
move 1 from 4 to 9
move 7 from 2 to 8
move 7 from 6 to 7
move 3 from 9 to 2
move 3 from 2 to 5
move 6 from 4 to 6
move 2 from 5 to 6
move 3 from 3 to 6
move 6 from 6 to 3
move 5 from 7 to 5
move 2 from 4 to 8
move 5 from 5 to 2
move 1 from 7 to 2
move 4 from 6 to 4
move 1 from 7 to 8
move 1 from 6 to 4
move 1 from 5 to 7
move 1 from 3 to 4
move 1 from 6 to 4
move 2 from 9 to 1
move 3 from 1 to 3
move 1 from 3 to 1
move 9 from 2 to 1
move 8 from 1 to 5
move 1 from 7 to 1
move 1 from 9 to 1
move 4 from 5 to 7
move 4 from 7 to 5
move 1 from 1 to 9
move 5 from 2 to 4
move 1 from 9 to 6
move 8 from 8 to 9
move 18 from 4 to 9
move 3 from 5 to 4
move 2 from 6 to 5
move 1 from 8 to 5
move 17 from 9 to 6
move 2 from 8 to 1
move 1 from 4 to 6
move 8 from 6 to 3
move 1 from 1 to 8
move 5 from 5 to 3
move 1 from 1 to 7
move 1 from 8 to 6
move 2 from 4 to 5
move 6 from 9 to 4
move 1 from 7 to 5
move 7 from 6 to 8
move 2 from 6 to 5
move 6 from 8 to 3
move 1 from 9 to 6
move 2 from 9 to 5
move 1 from 3 to 1
move 1 from 8 to 6
move 7 from 5 to 6
move 7 from 6 to 7
move 5 from 4 to 9
move 1 from 4 to 5
move 2 from 9 to 6
move 3 from 1 to 7
move 5 from 6 to 8
move 1 from 1 to 5
move 21 from 3 to 6
move 3 from 7 to 2
move 2 from 9 to 3
move 1 from 9 to 7
move 5 from 5 to 7
move 7 from 6 to 7
move 14 from 7 to 1
move 3 from 2 to 8
move 12 from 1 to 4
move 5 from 7 to 6
move 1 from 7 to 4
move 8 from 8 to 3
move 8 from 3 to 5
move 6 from 5 to 6
move 1 from 5 to 3
move 2 from 1 to 8
move 2 from 8 to 3
move 10 from 3 to 7
move 8 from 4 to 3
move 3 from 4 to 9
move 3 from 9 to 2
move 1 from 2 to 5
move 2 from 2 to 9
move 13 from 3 to 1
move 1 from 4 to 1
move 2 from 1 to 7
move 1 from 5 to 8
move 1 from 9 to 6
move 1 from 9 to 2
move 1 from 4 to 9
move 8 from 6 to 2
move 1 from 9 to 5
move 1 from 2 to 8
move 1 from 5 to 9
move 2 from 2 to 3
move 12 from 6 to 8
move 1 from 3 to 7
move 8 from 8 to 4
move 1 from 9 to 1
move 13 from 1 to 3
move 2 from 4 to 5
move 12 from 7 to 2
move 1 from 5 to 8
move 3 from 3 to 8
move 2 from 4 to 1
move 1 from 1 to 9"

instructions = puzzle_input.split("\n")

# Iterating through instructions and using the .pop method to move crates one by one
# Then using the .push method to add the crate to it's new stack
instructions.each do |instruction|
  instruct_array = instruction.split
  for i in 1..instruct_array[1].to_i
    letter = stacks[instruct_array[3].to_i-1].pop
    stacks[instruct_array[5].to_i - 1].push(letter)
  end
end

final_stacks_ends = []

# Retrieving the "top" crates, i.e. the last elements in each array
stacks.each do |stack|
  final_stacks_ends << stack.last
end

# CrateMover 9000
# Answer: ZBDRNPMVH
p final_stacks_ends.join




########## Part 2 ############

# Iterating through instructions and using the .pop(n) method to move crates together
# # Then using the .push method within a loop to add each crate to it's new stack in the correct order
instructions.each do |instruction|
  instruct_array = instruction.split
  letters = stacks_2[instruct_array[3].to_i-1].pop(instruct_array[1].to_i)
  letters.each do |letter|
    stacks_2[instruct_array[5].to_i - 1].push(letter)
  end
end

final_stacks_ends = []

# Retrieving the "top" crates, i.e. the last elements in each array
stacks_2.each do |stack|
  final_stacks_ends << stack.last
end

# Part 2: CrateMover 9001
# Answer: WDLPFNNNB
p final_stacks_ends.join
