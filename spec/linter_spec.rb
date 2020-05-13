require_relative '../lib/load_file.rb'
require_relative '../lib/space.rb'
require_relative '../lib/indentation.rb'

describe LineSpace do
  let(:file) { 'spec/sample_spec.css' }
  let(:new_file) { LoadFile.new(file) }
  let(:space_check) { LineSpace.new }
  let(:indent_check) { IndentationCheck.new }

  describe "#line_spacing_after \',\'" do
    it 'Returns an error for wrong spacing between selectors' do
      expect do
        space_check.line_spacing_after(1, new_file.file_content[0], ',')
      end.to output("Line no-1: Expected single space after \",\"\n").to_stdout
    end
  end

end