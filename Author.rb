class Author

  attr_accessor :name, :biography

  def initialize(name, biography)
    @name = name
    @biography = biography

    writeToFile "Author;#{@name};#{@biography};\n"
  end

  private
  def writeToFile(stringData)

    #write in csv format
    filename = 'data.csv'
    File.open(filename, 'a') do |file|
      file.write(stringData)
    end

  end

end