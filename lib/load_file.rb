class File
  attr_reader :file, :file_content

  def intialize(file)
    @file = file
    @file_content = get_content(@file)
  end

  def get_content(file)
    file_content = ''
    File.open(file, 'r') { |strings| file_content = strings.readlines.map(&:chomp) }
    scanned_content = file_content.collect { |string| StringScanner.new(string) }

    scanned_content
  end
end
