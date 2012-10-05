User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all

user1 = User.create(:email => "user1@vit.com", :password => "123456", :username => "user1")
user2 = User.create(:email => "user2@vit.com", :password => "123456", :username => "user2")

book1 = Book.create(:title => "Book1", :book_code => "1234", :image_url => "someurl1")
book2 = Book.create(:title => "Book2", :book_code => "12345", :image_url => "someurl2")
book3 = Book.create(:title => "Book3", :book_code => "123456", :image_url => "someurl3")

book_ins1 = BookInstance.create()
book_ins2 = BookInstance.create()
book_ins3 = BookInstance.create()
book_ins4 = BookInstance.create()
book_ins5 = BookInstance.create()
book_ins6 = BookInstance.create()

notice1 = Notice.create(:title => "Notice", :content => "blablabla", :date_created => "2012/4/10", :date_updated => "2012/5/10")
notice2 = Notice.create(:title => "Notice", :content => "blablabla", :date_created => "2012/4/10", :date_updated => "2012/5/10")
notice3 = Notice.create(:title => "Notice", :content => "blablabla", :date_created => "2012/4/10", :date_updated => "2012/5/10")

# assocciation giua cac bang!!!

user1.book_instances = [book_ins1, book_ins2, book_ins3]
user2.book_instances = [book_ins4, book_ins5, book_ins6]

book1.book_instances = [book_ins1, book_ins2]
book2.book_instances = [book_ins3, book_ins4]
book3.book_instances = [book_ins5, book_ins6]

user1.notices = [notice1, notice2]
user2.notices = [notice3]