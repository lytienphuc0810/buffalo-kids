# encoding: utf-8
User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all
BookReservation.delete_all
PhotoRegistration.delete_all

user1 = User.create(:email => "user1@vit.com", :password => "123456", :username => "user1", :confirmed_at => Time.now)
user2 = User.create(:email => "user2@vit.com", :password => "123456", :username => "user2", :confirmed_at => Time.now)
user3 = User.create(:email => "lytienphuc0810@gmail.com", :password => "123456", :username => "user3", :confirmed_at => Time.now)
user4 = User.create(:email => "admin@gmail.com", :password => "123456", :username => "admin", :role => "admin", :confirmed_at => Time.now)
user5 = User.create(:email => "librarian@gmail.com", :password => "123456", :username => "librarian", :role => "librarian", :confirmed_at => Time.now)
user6 = User.create(:email => "anhvule@yahoo.com", :password => "123456", :username => "user4", :confirmed_at => Time.now)
user7 = User.create(:email => "kysy@yahoo.com", :password => "123456", :username => "librarian1", :confirmed_at => Time.now)


book1 = Book.create(:title => "Book1", :book_code => "1234", :image_url => "http://pixhost.me/avaxhome/f1/01/001e01f1_medium.jpeg")
book2 = Book.create(:title => "Book2", :book_code => "12345", :image_url => "http://www.ebook3000.com/upimg/userup/0808/2106201610a.jpg")
book3 = Book.create(:title => "Book3", :book_code => "123456", :image_url => "http://ecx.images-amazon.com/images/I/413CBBMP2CL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg")
book4 = Book.create(:title => "Book4", :book_code => "1", :image_url => "http://ecx.images-amazon.com/images/I/4152NIXcFgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg")
book5 = Book.create(:title => "Book5", :book_code => "12", :image_url => "http://ecx.images-amazon.com/images/I/51Q6l%2BMyLgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg")
book6 = Book.create(:title => "Book6", :book_code => "123", :image_url => "http://ecx.images-amazon.com/images/I/51EoBfWbafL._AA300_.jpg")
book7 = Book.create(:title => "Book7", :book_code => "1235", :image_url => "http://ecx.images-amazon.com/images/I/5149oJpa-zL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg")
book8 = Book.create(:title => "Book8", :book_code => "125", :image_url => "http://bks0.books.google.com.vn/books?id=hwpqHb5NBSoC&printsec=frontcover&img=1&zoom=1&source=gbs_api")
book9 = Book.create(:title => "Book9", :book_code => "12456", :image_url => "http://vig-fp.prenhall.com/bigcovers/0131593188.jpg")
book10 = Book.create(:title => "Book10", :book_code => "125", :image_url => "http://bks3.books.google.com.vn/books?id=_1otcB06lWYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api")
book11 = Book.create(:title => "Book11", :book_code => "15", :image_url => "http://bks4.books.google.com.vn/books?id=SoOvFjTXwA4C&printsec=frontcover&img=1&zoom=1&source=gbs_api")
book12 = Book.create(:title => "Book12", :book_code => "124567", :image_url => "http://bks8.books.google.com.vn/books?id=oMYQz4_BW48C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api")


book_ins1 = BookInstance.create(:book_instance_code => "QCS1")
book_ins2 = BookInstance.create(:book_instance_code => "CDD1")
book_ins3 = BookInstance.create(:book_instance_code => "SWE1")
book_ins4 = BookInstance.create(:book_instance_code => "SDW2")
book_ins5 = BookInstance.create(:book_instance_code => "GFS3")
book_ins6 = BookInstance.create(:book_instance_code => "SAD2")
book_ins7 = BookInstance.create(:book_instance_code => "VBF2")
book_ins8 = BookInstance.create(:book_instance_code => "SAE1")
book_ins9 = BookInstance.create(:book_instance_code => "ASD2")
book_ins10 = BookInstance.create(:book_instance_code => "ASD3")
book_ins11 = BookInstance.create(:book_instance_code => "ASD6")
book_ins12 = BookInstance.create(:book_instance_code => "ASD7")
book_ins13 = BookInstance.create(:book_instance_code => "QCS2")
book_ins14 = BookInstance.create(:book_instance_code => "CDD2")
book_ins15 = BookInstance.create(:book_instance_code => "SWE2")
book_ins16 = BookInstance.create(:book_instance_code => "SDW3")
book_ins17 = BookInstance.create(:book_instance_code => "GFS4")
book_ins18 = BookInstance.create(:book_instance_code => "SAD5")
book_ins19 = BookInstance.create(:book_instance_code => "VBF6")
book_ins20 = BookInstance.create(:book_instance_code => "SAE2")
book_ins21 = BookInstance.create(:book_instance_code => "ASD3")
book_ins22 = BookInstance.create(:book_instance_code => "ASD4")
book_ins23 = BookInstance.create(:book_instance_code => "ASD7")
book_ins24 = BookInstance.create(:book_instance_code => "ASD9")

notice1 = Notice.create(:title => "Notice", :content => "THÔNG BÁO (Tuyển dụng viên chức): Thư viện thông báo tuyển dụng viên chức sự nghiệp năm 2012:")
notice2 = Notice.create(:title => "Notice", :content => "THƯ VIỆN TỔNG HỢP PHỐI HỢP VỚI PHÒNG GIÁO DỤC THÀNH PHỐ TỔ CHỨC HỘI THI TUYÊN TRUYỀN GIỚI THIỆU SÁCH CHÚNG EM VỚI DI SẢN VĂN HÓA HUẾ")
notice3 = Notice.create(:title => "Notice", :content => "Thông báo của Thư viện về các nguồn thông tin khoa học của Viện KHXH Việt nam sẵn sàng phục vụ tra cứu trực tuyến")
notice4 = Notice.create(:title => "Notice", :content => "Thông báo làm thẻ thư viện năm học 2012-2013: Hạn cuối để đăng ký làm thẻ Thư viện theo lớp là ngày 30/11/2012 (Thứ Sáu).")
notice5 = Notice.create(:title => "Notice", :content => "Thông báo danh sách sinh viên chưa trả sách")
notice6 = Notice.create(:title => "Notice", :content => "Thông báo tổ chức bán sách giảm giá của công ty FAHASA")
notice7 = Notice.create(:title => "Notice", :content => "Quy định nội dung và hình thức đề cương luận văn / luận án sau đại học")
notice8 = Notice.create(:title => "Notice", :content => "Thông báo bổ sung tài liệu tham khảo tại Thư viện năm học 2012-2013")
notice9 = Notice.create(:title => "Notice", :content => "Thông báo cung cấp tài khoản dùng thử Cơ sở dữ liệu tạp chí điện tử của NXB InformaHealthCare")
notice10 = Notice.create(:title => "Notice", :content => "Thông báo về việc thay đổi tài khoản dùng thử CSDL sách điện tử MyiLibrary")

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

book1.book_instances = [book_ins1, book_ins2]
book2.book_instances = [book_ins3, book_ins4]
book3.book_instances = [book_ins5, book_ins6]
book1.book_instances = [book_ins7, book_ins8]
book2.book_instances = [book_ins9, book_ins10]
book3.book_instances = [book_ins11, book_ins12]
book1.book_instances = [book_ins13, book_ins14]
book2.book_instances = [book_ins15, book_ins16]
book3.book_instances = [book_ins17, book_ins18]
book1.book_instances = [book_ins19, book_ins20]
book2.book_instances = [book_ins21, book_ins22]
book3.book_instances = [book_ins23, book_ins24]

user1.notices = [notice1, notice2]
user2.notices = [notice3]
user3.notices = [notice4, notice5]
user4.notices = [notice6]
user5.notices = [notice7, notice8]
user6.notices = [notice9]
user7.notices = [notice10]