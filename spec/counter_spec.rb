require 'counter'

describe 'Palindrome counter' do

	it "can read the first line of a file" do
		expect(first_line('test_files/example.txt')).to eq 1
	end

	it "can read the last line of a file" do
		expect(last_line('test_files/example.txt')).to eq 100
	end

	it "converts them into an array of numbers" do
		expect(my_array('test_files/example.txt')).to include(1,5,100)
		expect(my_array('test_files/example.txt').last).to eq last_line('test_files/example.txt')  
	end

	it "counts the palindrome numbers" do
		expect(palindromes_count('test_files/example.txt')).to eq 18
	end

end