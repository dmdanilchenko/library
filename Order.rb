class Order

  attr_accessor :book, :reader, :date

  def initialize(book, reader, date)
    @book   = book
    @reader = reader
    @date   = date

    writeToFile "Order;#{@book};#{@reader};#{@date};\n"
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