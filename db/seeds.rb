User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all
BookReservation.delete_all
PhotoRegistration.delete_all

user1 = User.create(:email => "user1@vit.com", :password => "123456", :username => "user1", :confirmed_at => Time.now)
user2 = User.create(:email => "user2@vit.com", :password => "123456", :username => "user2", :confirmed_at => Time.now)
user3 = User.create(:email => "lytienphuc0810@gmail.com", :password => "123456", :username => "user3", :confirmed_at => Time.now)
user3 = User.create(:email => "admin@gmail.com", :password => "123456", :username => "admin", :role => "admin", :confirmed_at => Time.now)
user4 = User.create(:email => "librarian@gmail.com", :password => "123456", :username => "librarian", :role => "librarian", :confirmed_at => Time.now)

book1 = Book.create(:title => "Book1", :book_code => "1234")
book2 = Book.create(:title => "Book2", :book_code => "12345")
book3 = Book.create(:title => "Book3", :book_code => "123456")

for i in 4..100
	User.create(email: "user#{i}@vit.com", password: "123456", username: "user#{i}", :confirmed_at => Time.now)
	Book.create(:title => "Book#{i}", :book_code => "#{i}")
end

book_ins1 = BookInstance.create()
book_ins2 = BookInstance.create()
book_ins3 = BookInstance.create()
book_ins4 = BookInstance.create()
book_ins5 = BookInstance.create()
book_ins6 = BookInstance.create()
book_ins7 = BookInstance.create()
book_ins8 = BookInstance.create()
book_ins9 = BookInstance.create()
book_ins10 = BookInstance.create()
book_ins11 = BookInstance.create()
book_ins12 = BookInstance.create()

notice1 = Notice.create(:title => "Notice", :content => "blablabla1")
notice2 = Notice.create(:title => "Notice", :content => "blablabla2")
notice3 = Notice.create(:title => "Notice", :content => "blablabla3")
notice4 = Notice.create(:title => "Notice", :content => "blablabla4")
notice5 = Notice.create(:title => "Notice", :content => "blablabla5")
notice6 = Notice.create(:title => "Notice", :content => "blablabla6")
notice7 = Notice.create(:title => "Notice", :content => "blablabla7")
notice8 = Notice.create(:title => "Notice", :content => "blablabla8")
notice9 = Notice.create(:title => "Notice", :content => "blablabla9")
notice10 = Notice.create(:title => "Notice", :content => "blablabla10")

book_reserve1 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 1)
book_reserve2 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 2)
book_reserve3 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 3)
book_reserve4 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 4)
book_reserve5 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 5)
book_reserve6 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 6)
book_reserve7 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 7)
book_reserve8 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 8)
book_reserve9 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 9)
book_reserve10 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 10)

photo_regist1 = PhotoRegistration.create(:finish_date => Date.today)
photo_regist2 = PhotoRegistration.create(:finish_date => Date.today + 1)
photo_regist3 = PhotoRegistration.create(:finish_date => Date.today + 2)
photo_regist4 = PhotoRegistration.create(:finish_date => Date.today + 3)
photo_regist5 = PhotoRegistration.create(:finish_date => Date.today + 4)
photo_regist6 = PhotoRegistration.create(:finish_date => Date.today + 5)
photo_regist7 = PhotoRegistration.create(:finish_date => Date.today + 6)
photo_regist8 = PhotoRegistration.create(:finish_date => Date.today + 7)
photo_regist9 = PhotoRegistration.create(:finish_date => Date.today + 8)
photo_regist10 = PhotoRegistration.create(:finish_date => Date.today + 9)


# assocciation giua cac bang!!!
user1.book_reservations = [book_reserve1, book_reserve2]
user2.book_reservations = [book_reserve3]
user3.book_reservations = [book_reserve4, book_reserve5]
user4.book_reservations = [book_reserve6]
user5.book_reservations = [book_reserve7, book_reserve8]
user6.book_reservations = [book_reserve9]
user7.book_reservations = [book_reserve10]

user1.photo_registrations = [photo_regist1]
user2.photo_registrations = [photo_regist2, photo_regist3]
user3.photo_registrations = [photo_regist4]
user4.photo_registrations = [photo_regist5, photo_regist6]
user5.photo_registrations = [photo_regist7]
user6.photo_registrations = [photo_regist8, photo_regist9]
user7.photo_registrations = [photo_regist10]


book_reserve1.book_instance = book_ins7
book_reserve2.book_instance = book_ins8
book_reserve3.book_instance = book_ins9
book_reserve4.book_instance = book_ins10
book_reserve5.book_instance = book_ins11
book_reserve6.book_instance = book_ins12

photo_regist1.book_instance = book_ins1
photo_regist2.book_instance = book_ins2
photo_regist3.book_instance = book_ins3
photo_regist4.book_instance = book_ins4
photo_regist5.book_instance = book_ins5
photo_regist6.book_instance = book_ins6

book1.book_instances = [book_ins1, book_ins2, book_ins7, book_ins8]
book2.book_instances = [book_ins3, book_ins4, book_ins9, book_ins10]
book3.book_instances = [book_ins5, book_ins6, book_ins11, book_ins12]

user1.notices = [notice1, notice2]
user2.notices = [notice3]
user3.notices = [notice4, notice5]
user4.notices = [notice6]
user5.notices = [notice7, notice8]
user6.notices = [notice9]
user7.notices = [notice10]