require 'counter'

describe 'Palindrome counter' do

	it "can read the first line of a file" do
		expect(first_line('test_files/example.txt')).to eq 1
	end

end