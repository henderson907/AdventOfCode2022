puzzle_input = "Monkey 0:
Starting items: 89, 84, 88, 78, 70
Operation: new = old * 5
Test: divisible by 7
  If true: throw to monkey 6
  If false: throw to monkey 7

Monkey 1:
Starting items: 76, 62, 61, 54, 69, 60, 85
Operation: new = old + 1
Test: divisible by 17
  If true: throw to monkey 0
  If false: throw to monkey 6

Monkey 2:
Starting items: 83, 89, 53
Operation: new = old + 8
Test: divisible by 11
  If true: throw to monkey 5
  If false: throw to monkey 3

Monkey 3:
Starting items: 95, 94, 85, 57
Operation: new = old + 4
Test: divisible by 13
  If true: throw to monkey 0
  If false: throw to monkey 1

Monkey 4:
Starting items: 82, 98
Operation: new = old + 7
Test: divisible by 19
  If true: throw to monkey 5
  If false: throw to monkey 2

Monkey 5:
Starting items: 69
Operation: new = old + 2
Test: divisible by 2
  If true: throw to monkey 1
  If false: throw to monkey 3

Monkey 6:
Starting items: 82, 70, 58, 87, 59, 99, 92, 65
Operation: new = old * 11
Test: divisible by 5
  If true: throw to monkey 7
  If false: throw to monkey 4

Monkey 7:
Starting items: 91, 53, 96, 98, 68, 82
Operation: new = old * old
Test: divisible by 3
  If true: throw to monkey 4
  If false: throw to monkey 2"

# Creating an initial hash with monkey values
# Could have extracted the data but was easier to do it manually
@monkey_hash = {monkey_0: [89, 84, 88, 78, 70],
               monkey_1: [76, 62, 61, 54, 69, 60, 85],
               monkey_2: [83, 89, 53],
               monkey_3: [95, 94, 85, 57],
               monkey_4: [82, 98],
               monkey_5: [69],
               monkey_6: [82, 70, 58, 87, 59, 99, 92, 65],
               monkey_7: [91, 53, 96, 98, 68, 82]}

@monkey_inspects = Array.new(8, 0)


# Made functions for each chimp which carries out the steps on an inspection
# These could be made into one function as there is repeated code but I couldn't be bothered to refactor
# The commented out lines are for part 1

def chimp_0(value)
  @monkey_inspects[0] += 1
  new_value = value * 5
  #new_value = (new_value / 3).floor
  if (new_value % 7) == 0
    @monkey_hash[:monkey_6] << new_value
  else
    @monkey_hash[:monkey_7] << new_value
  end
end

def chimp_1(value)
  @monkey_inspects[1] += 1
  new_value = value + 1
  #new_value = (new_value / 3).floor
  if (new_value % 17) == 0
    @monkey_hash[:monkey_0] << new_value
  else
    @monkey_hash[:monkey_6] << new_value
  end
end

def chimp_2(value)
  @monkey_inspects[2] += 1
  new_value = value + 8
  #new_value = (new_value / 3).floor
  if (new_value % 11) == 0
    @monkey_hash[:monkey_5] << new_value
  else
    @monkey_hash[:monkey_3] << new_value
  end
end

def chimp_3(value)
  @monkey_inspects[3] += 1
  new_value = value + 4
  #new_value = (new_value / 3).floor
  if (new_value % 13) == 0
    @monkey_hash[:monkey_0] << new_value
  else
    @monkey_hash[:monkey_1] << new_value
  end
end

def chimp_4(value)
  @monkey_inspects[4] += 1
  new_value = value + 7
  #new_value = (new_value / 3).floor
  if (new_value % 19) == 0
    @monkey_hash[:monkey_5] << new_value
  else
    @monkey_hash[:monkey_2] << new_value
  end
end

def chimp_5(value)
  @monkey_inspects[5] += 1
  new_value = value + 2
  #new_value = (new_value / 3).floor
  if (new_value % 2) == 0
    @monkey_hash[:monkey_1] << new_value
  else
    @monkey_hash[:monkey_3] << new_value
  end
end

def chimp_6(value)
  @monkey_inspects[6] += 1
  new_value = value * 11
  #new_value = (new_value / 3).floor
  if (new_value % 5) == 0
    @monkey_hash[:monkey_7] << new_value
  else
    @monkey_hash[:monkey_4] << new_value
  end
end

def chimp_7(value)
  @monkey_inspects[7] += 1
  new_value = value * value
  #new_value = (new_value / 3).floor
  if (new_value % 3) == 0
    @monkey_hash[:monkey_4] << new_value
  else
    @monkey_hash[:monkey_2] << new_value
  end
end

# Directs the value to the correct chimp
def chimp_inspection(chimp_number, value)
  case chimp_number
  when "0"
    chimp_0(value)
  when "1"
    chimp_1(value)
  when "2"
    chimp_2(value)
  when "3"
    chimp_3(value)
  when "4"
    chimp_4(value)
  when "5"
    chimp_5(value)
  when "6"
    chimp_6(value)
  when "7"
    chimp_7(value)
  end
end


################## Part 1 ##################

# Iterates 20 times and takes each chimp, cycles through their values
# Each value is then sent to be inspected
# Once each value for the chimp has been inspected, the values are erased from the chimp
20.times do
  @monkey_hash.each do |key, value|
    chimp_number = key.to_s.split("").pop
    value.each do |number|
      chimp_inspection(chimp_number, mod_number)
    end
    @monkey_hash[key] = []
  end
end

top_two = @monkey_inspects.max(2)
answer = top_two[0] * top_two[1]

# Part 1: 20 iterations with /3 worry control
# Asnwer: 55930
p answer

################## Part 2 ##################

# Iterates 10000 times and takes each chimp, cycles through their values
# The value is divided by the LCM of all the divisor tests to prevent overflow
# As the divisor tests are primes, the LCM is all of them multiplied together
# Each value is then sent to be inspected
# Once each value for the chimp has been inspected, the values are erased from the chimp
10000.times do
  @monkey_hash.each do |key, value|
    chimp_number = key.to_s.split("").pop
    value.each do |number|
      mod_number = number % (7 * 17 * 11 * 13 * 19 * 2 * 5 * 3)
      chimp_inspection(chimp_number, mod_number)
    end
    @monkey_hash[key] = []
  end
end

top_two = @monkey_inspects.max(2)
answer = top_two[0] * top_two[1]

# Part 2: 10000 iterations with lcm worry control to prevent overflow
# Answer: 14636993466
p answer
