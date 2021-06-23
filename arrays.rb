require "pry"
# import Binding from "pry"


#Creating Arrays
# array = ["Max", "Ethan", "Duke"]
names = %w(Max Ethan Duke Tyler Albeto Mike)
# numbers = [1,2,3,4,5]
numbers = (1..5).to_a

#accessing array elements
numbers[0] # first element of array
numbers[-1] # last element of array


#Adding to arrays
numbers.push(6) # has alias .append
numbers.unshift(0)
numbers << 7 # shovel operator(same as push)
# numbers.insert(1, "Hello World")


#remove elements from arrays
numbers.pop # remove last element
numbers.shift    # remove first element


#iterating over arrays

# each method
    # each always returns the original array

# iterate over array of numbers and add each one to an array

# (6..10).to_a.each do |number|
#     numbers << number
# end

(6..10).to_a.each{|number| numbers << number}

names.each do |name|
    puts "Hello #{name}!!"
end

# // [6,7,8,9,10].forEach(number => numbers.push(number))

# map method (alias collect)
    # return a new array of the return values of callback function
# num = 1

# room_assigns = names.map do |name|
#         assign = "#{name} is assigned to room #{num}"
#         num = num + 1
#         # num ++
#         assign
#     end

room_assigns = names.map.with_index(1) do |name, i|
    "#{name} is assigned to room #{i}"
end


# squares = numbers.map do |number|
#     number * number
# end

# squares = numbers.map{|num| num * num}
squares = numbers.collect{|num| num * num}

# // numbers.map(number => number * number)


# reduce method 

total = squares.reduce(0) do |accum, num|
    accum + num
end

# // squares.reduce((accum, num) =>{accum + num}, 0)

quick_total = squares.reduce(:+)



binding.pry




















