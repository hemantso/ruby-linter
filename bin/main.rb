#!/usr/bin/env ruby

require_relative '../lib/load_file.rb'
require_relative '../lib/space.rb'
require_relative '../lib/indentation.rb'


file = ARGV.shift
new_file = LoadFile.new(file)
space_check = LineSpace.new
indent_check = IndentationCheck.new
puts "Checking File!!!"

space_check.check_line_spacing(new_file.file_content)
indent_check.indentation_check(new_file.file_content)
