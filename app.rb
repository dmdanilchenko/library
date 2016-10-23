require_relative  'Book'
require_relative  'Order'
require_relative  'Reader'
require_relative  'Author'
require_relative  'Library'

# init test data
Book.new('Harry Potter and the Chamber of Secrets','Joanne Rowling')
Book.new('Harry Potter and the Prisoner of Azkaban','Joanne Rowling')
Book.new('The Tales of Beedle the Bard','Joanne Rowling')
Book.new('The Hobbit or There and Back Again','John Ronald Reuel Tolkien')
Book.new('The Lord of the Rings','John Ronald Reuel Tolkien')
Book.new('The Road Goes Ever On: A Song Cycle','John Ronald Reuel Tolkien')
Book.new('Fight Club','Charles Michael «Chuck» Palahniuk')
Book.new('Snuff','Charles Michael «Chuck» Palahniuk')
Book.new('Stranger Than Fiction','Charles Michael «Chuck» Palahniuk')

Author.new('Charles Michael «Chuck» Palahniuk','born February 21, 1962, is an American novelist and freelance journalist, who describes his work as "transgressional" fiction. He is the author of the award-winning novel Fight Club, which also was made into an acclaimed film of the same name.')
Author.new('John Ronald Reuel Tolkien','английский писатель. Известность ему принесли книги «Хоббит или туда и обратно» и «Властелин Колец», хотя он опубликовал и много других произведений. После его смерти на основе сохранившихся записей была издана книга «Сильмариллион» впоследствии были опубликованы другие его тексты, они продолжают публиковаться и в настоящее время.')
Author.new('Joanne Rowling','появилась на свет 31 июля 1965 в Чиппинг Сотбери, Глостершир, Англия. Её сестра, Ди, родилась двумя годами позже. Роулинг любила рассказывать истории с раннего детства и написала свою первую сказку, когда ей было 5 или 6 лет — это была сказка о кролике по имени Кролик, который болел корью и к нему приходили в гости друзья с гигантской пчелой по имени Мисс Пчела. В детстве она дважды переезжала. Оба раза в города рядом с Бристолем: сначала в Эйт, потом в Винтербурн. Семья переехала снова, когда ей было девять лет — в Татшилл. Она посещала начальную школу в Татшилле и среднюю школу и Виедине.')

Reader.new('Dmitriy','test@google.com','New York','1','33')
Reader.new('Stepan','test@google.com','New York','1','33')
Reader.new('Oleg','test@google.com','New York','1','33')
Reader.new('Tanya','test@google.com','New York','1','33')
Reader.new('Anya','test@google.com','New York','1','33')

Order.new('Harry Potter and the Chamber of Secrets','Dmitriy','2016-01-01')
Order.new('The Tales of Beedle the Bard','Dmitriy','2016-02-01')
Order.new('Fight Club','Dmitriy','2016-01-07')
Order.new('Stranger Than Fiction','Stepan','2016-01-01')
Order.new('Snuff','Stepan','2016-01-01')
Order.new('Fight Club','Stepan','2016-01-01')
Order.new('Harry Potter and the Chamber of Secrets','Stepan','2016-01-01')
Order.new('Stranger Than Fiction','Oleg','2016-01-01')
Order.new('The Tales of Beedle the Bard','Oleg','2016-01-01')
Order.new('Harry Potter and the Prisoner of Azkaban','Oleg','2016-01-01')
Order.new('Fight Club','Tanya','2016-08-01')
Order.new('Fight Club','Anya','2016-11-22')

# init Library
library =  Library.new('data.csv')
puts "the best reader is: #{library.get_best_reader}"
puts "the best book is : #{library.get_bestseller}"
puts "the most popular books are : #{library.get_popularity(3)}"