class Reader

  attr_accessor :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    @name   = name
    @email  = email
    @city   = city
    @street = street
    @house  = house

    writeToFile "Reader;#{@name};#{@email};#{@city};#{@street};#{@house};\n"
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