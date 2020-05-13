require 'strscan'

class IndentationCheck
  def indentation_check(file_content)
    file_content.each_with_index do |ele, index|
      new_index = index + 1
      indentation_error?(ele, new_index)
    end
  end

  def indentation_error?(str, line)
    str.reset
    puts "Line no-#{line}: Expected 2 space indentation" if str.match?(/^\w+\s*-.\w*:/) || str.match?(/^\w+\s*\w*:/)
  end
end
