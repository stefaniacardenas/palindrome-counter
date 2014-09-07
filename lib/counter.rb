#!/usr/bin/env ruby 

def first_line(file_path)
	lines = IO.readlines(file_path)
	lines.first.to_i
end

def last_line(file_path)
	lines = IO.readlines(file_path)
	lines.last.to_i
end

def my_array(file_path)
	range = (first_line(file_path)..last_line(file_path))
	range.to_a
end

# I used the following method that includes one-digit numbers as palindromes.
# In case we want to exclude one-digit numbers we could use delete_if() with a block that deletes number <= 9 from the array.
def palindromes_count(file_path)
	palindromes = my_array(file_path).select {| number | number.to_s.reverse == number.to_s }
	palindromes.count
end

# Printing the output

def title
	puts "Palindrome counter test".upcase
	puts "=====" * 5
end

def output(file_path)
	puts "File checked: #{file_path}"
	puts "Range: #{first_line(file_path)}..#{last_line(file_path)}"
	puts "Palindromes: #{palindromes_count(file_path)}"
	puts "--------" * 5
end