#!/usr/bin/env ruby 

def first_line(file_path)
	lines = IO.readlines(file_path)
	lines.first.to_i
end

def last_line(file_path)
	lines = IO.readlines(file_path)
	lines.last.to_i
end