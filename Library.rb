

class Library
  attr_accessor :books, :orders, :readers, :authors

  def initialize(dataFileName)
    @books    = []
    @orders   = []
    @readers  = []
    @authors  = []
    loadData (dataFileName)
  end


  def get_best_reader
    @orders.group_by { |orders| orders[:reader] }.values.max_by(&:size).first[:reader]
  end

  def get_bestseller
    @orders.group_by { |orders| orders[:book] }.values.max_by(&:size).first[:book]
  end

  def get_popularity(size)
    @orders.group_by { |orders| orders[:book] }.map{ |book, orders| [book, orders.size] }.max_by(size){ |book, count| count }
  end

  private
  def loadData(filename)

    puts 'reading data file'
    File.open(filename).each do |line|
      tempArr = line.split(';')

      if tempArr[0]=='Book'
        bookHash = {title:tempArr[1],author:tempArr[2]};
        @books.push(bookHash)
      elsif tempArr[0]=='Order'
        orderHash = {:book=>tempArr[1],:reader=>tempArr[2],:date=>tempArr[3]};
        @orders.push(orderHash)
      elsif tempArr[0]=='Reader'
        readerHash = {name:tempArr[1],email:tempArr[2],city:tempArr[3],street:tempArr[4],house:tempArr[5]};
        @readers.push(readerHash)
      elsif tempArr[0]=='Author'
        authorHash = {title:tempArr[1],biography:tempArr[2]};
        @authors.push(authorHash)
      else
        puts 'there is broken string:('
      end

    end

  end

end
