class Book

  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author

    writeToFile "Book;#{@title};#{@author};\n"
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

