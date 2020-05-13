#!/usr/bin/env ruby

require_relative '../lib/load_file.rb'
require_relative '../lib/space.rb'
require_relative '../lib/indentation.rb'

file = ARGV.shift
new_file = LoadFile.new(file)
space_check = LineSpace.new
indent_check = IndentationCheck.new
puts
puts 'Checking File!!!'
puts

space_check.check_line_spacing(new_file.file_content)
indent_check.indentation_check(new_file.file_content)

puts
puts 'That\'s it!!'
puts
