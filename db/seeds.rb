# encoding: UTF-8
User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all
BookReservation.delete_all
PhotoRegistration.delete_all

user1 = User.create(:email => "user1@vit.com", :password => "123456", :password_confirmation => "123456", remember_me => "true", :username => "user1", role => "user", :confirmed_at => Time.now, locale => "HCM")
user2 = User.create(:email => "user2@vit.com", :password => "123456", :password_confirmation => "123456", remember_me => "true", :username => "user2", role => "user", :confirmed_at => Time.now, locale => "HN")
user3 = User.create(:email => "lytienphuc0810@gmail.com", :password => "123456", :password_confirmation => "123456", remember_me => "true", :username => "user3", role => "user", :confirmed_at => Time.now, locale => "HP")
user4 = User.create(:email => "admin@gmail.com", :password => "123456", :password_confirmation => "123456", remember_me => "false", :username => "admin", :role => "admin", :confirmed_at => Time.now, locale => "DN")
user5 = User.create(:email => "librarian@gmail.com", :password => "123456", :password_confirmation => "123456", remember_me => "true", :username => "librarian", :role => "librarian", :confirmed_at => Time.now, locale => "NT")
user6 = User.create(:email => "anhvule@yahoo.com", :password => "123456", :password_confirmation => "123456", remember_me => "false", :username => "user4", role => "user", :confirmed_at => Time.now, locale => "HCM")
user7 = User.create(:email => "kysy@yahoo.com", :password => "123456", :password_confirmation => "123456", remember_me => "true", :username => "librarian1", role => "librarian", :confirmed_at => Time.now, locale => "HCM")


book1 = Book.create(:title => "Systems analysis and design", :book_code => "1234",:description => "human-centered book that concisely presents the latest systems development methods, tools, and techniques to readers in an engaging and easy-to-understand manner. ", :author => "Kenneth E. Kendall", :image_url => "http://pixhost.me/avaxhome/f1/01/001e01f1_medium.jpeg", :release_date => "01/11/2012", :rating => "1")
book2 = Book.create(:title => "Data Structures and Algorithm in C++", :book_code => "12345",:description => "this practical and theoretical book prepares students with a solid foundation in data structures for future courses and work in design implementation, testing, or maintenance of virtually any software system.", :author => " Adam Drozdek", :image_url => "http://www.ebook3000.com/upimg/userup/0808/2106201610a.jpg", :release_date => "02/11/2012", :rating => "2")
book3 = Book.create(:title => "JavaScript", :book_code => "123456",:description => "a programmer's guide and comprehensive reference to the core language and to the client-side JavaScript APIs defined by web browsers.", :author => "David Flanagan", :image_url => "http://ecx.images-amazon.com/images/I/413CBBMP2CL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "03/11/2012", :rating => "3")
book4 = Book.create(:title => "Dreamweaver CS5", :book_code => "1",:description => "Dreamweaver CS5: The Missing Manual takes you through site creation step-by-step, from building your very first page to launching a template-driven, fully interactive site. You'll hone your skills with the help of hands-on, guided tutorials throughout the book.", :author => "David Sawyer McFarland", :image_url => "http://ecx.images-amazon.com/images/I/4152NIXcFgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "04/11/2012", :rating => "4")
book5 = Book.create(:title => "Head first design pattern", :book_code => "12",:description => "Head First Design Patterns will load patterns into your brain in a way that sticks", :author => "Elisabeth Freeman, Eric Freeman, Bert Bates and Kathy Sierra", :image_url => "http://ecx.images-amazon.com/images/I/51Q6l%2BMyLgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "05/11/2012", :rating => "5")
book6 = Book.create(:title => "Compiler", :book_code => "123",:description => "", :author => "", :image_url => "http://ecx.images-amazon.com/images/I/51EoBfWbafL._AA300_.jpg", :release_date => "06/11/2012", :rating => "1")
book7 = Book.create(:title => "Beginning Java", :book_code => "1235",:description => "The authors, recognizing that few readers will ever go on to construct a compiler, retain their focus on the broader set of problems faced in software design and software development.", :author => " Alfred V. Aho, Monica S. Lam, Ravi Sethi and Jeffrey D. Ullman", :image_url => "http://ecx.images-amazon.com/images/I/5149oJpa-zL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "07/11/2012", :rating => "2")
book8 = Book.create(:title => "C++", :book_code => "125",:description => "C++ Primer Plus is a carefully crafted, complete tutorial on one of the most significant and widely used programming languages today. An accessible and easy-to-use self-study guide, this book is appropriate for both serious students of programming as well as developers already proficient in other languages.", :author => "Stephen Prata", :image_url => "http://bks0.books.google.com.vn/books?id=hwpqHb5NBSoC&printsec=frontcover&img=1&zoom=1&source=gbs_api", :release_date => "08/11/2012", :rating => "3")
book9 = Book.create(:title => "Discrete Mathematics", :book_code => "12456",:description => "Aimed at undergraduate mathematics and computer science students, this book is an excellent introduction to a lot of problems of discrete mathematics.", :author => "Laszlo Lovasz, Jozsef Pelikan and Katalin L. Vesztergombi ", :image_url => "http://vig-fp.prenhall.com/bigcovers/0131593188.jpg", :release_date => "09/11/2012", :rating => "4")
book10 = Book.create(:title => "Beginning android 4", :book_code => "125",:description => " It is your first step on the path to creating marketable apps for the burgeoning Android Market, Amazon's Android Appstore, and more", :author => " Grant Allen", :image_url => "http://bks3.books.google.com.vn/books?id=_1otcB06lWYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", :release_date => "10/11/2012", :rating => "5")
book11 = Book.create(:title => "Android game", :book_code => "15",:description => "everything you need to join the ranks of successful Android game developers", :author => " Robert Green and Mario Zechner", :image_url => "http://bks4.books.google.com.vn/books?id=SoOvFjTXwA4C&printsec=frontcover&img=1&zoom=1&source=gbs_api", :release_date => "11/11/2012", :rating => "1")
book12 = Book.create(:title => "Learning Android", :book_code => "124567",:description => "This fast-paced introduction to the newest release of Android OS gives aspiring mobile app developers what they need to know to program for today's hottest Android smartphones and tablets.", :author => "Wei Meng Lee", :image_url => "http://bks8.books.google.com.vn/books?id=oMYQz4_BW48C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", :release_date => "12/11/2012", :rating => "2")


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
book_ins21 = BookInstance.create(:book_instance_code => "ASD0")
book_ins22 = BookInstance.create(:book_instance_code => "ASD4")
book_ins23 = BookInstance.create(:book_instance_code => "ASDC")
book_ins24 = BookInstance.create(:book_instance_code => "ASDH")

notice1 = Notice.create(:title => "Notice1", :content => "THÔNG BÁO (Tuyển dụng viên chức): Thư viện thông báo tuyển dụng viên chức sự nghiệp năm 2012:")
notice2 = Notice.create(:title => "Notice2", :content => "THƯ VIỆN TỔNG HỢP PHỐI HỢP VỚI PHÒNG GIÁO DỤC THÀNH PHỐ TỔ CHỨC HỘI THI TUYÊN TRUYỀN GIỚI THIỆU SÁCH CHÚNG EM VỚI DI SẢN VĂN HÓA HUẾ")
notice3 = Notice.create(:title => "Notice3", :content => "Thông báo của Thư viện về các nguồn thông tin khoa học của Viện KHXH Việt nam sẵn sàng phục vụ tra cứu trực tuyến")
notice4 = Notice.create(:title => "Notice4", :content => "Thông báo làm thẻ thư viện năm học 2012-2013: Hạn cuối để đăng ký làm thẻ Thư viện theo lớp là ngày 30/11/2012 (Thứ Sáu).")
notice5 = Notice.create(:title => "Notice5", :content => "Thông báo danh sách sinh viên chưa trả sách")
notice6 = Notice.create(:title => "Notice6", :content => "Thông báo tổ chức bán sách giảm giá của công ty FAHASA")
notice7 = Notice.create(:title => "Notice7", :content => "Quy định nội dung và hình thức đề cương luận văn / luận án sau đại học")
notice8 = Notice.create(:title => "Notice8", :content => "Thông báo bổ sung tài liệu tham khảo tại Thư viện năm học 2012-2013")
notice9 = Notice.create(:title => "Notice9", :content => "Thông báo cung cấp tài khoản dùng thử Cơ sở dữ liệu tạp chí điện tử của NXB InformaHealthCare")
notice10 = Notice.create(:title => "Notice10", :content => "Thông báo về việc thay đổi tài khoản dùng thử CSDL sách điện tử MyiLibrary")

book_reserve1 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 1, :extention_day => Date.today + 2)
book_reserve2 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 2, :extention_day => Date.today + 3)
book_reserve3 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 3)
book_reserve4 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 4, :extention_day => Date.today + 5)
book_reserve5 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 5, :extention_day => Date.today + 6)
book_reserve6 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 6, :extention_day => Date.today + 7)
book_reserve7 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 7, :extention_day => Date.today + 8)
book_reserve8 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 8, :extention_day => Date.today + 9)
book_reserve9 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 9)
book_reserve10 = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 10)

photo_regist1 = PhotoRegistration.create(:finish_date => Date.today, :quantity => 1)
photo_regist2 = PhotoRegistration.create(:finish_date => Date.today + 1, :quantity => 2)
photo_regist3 = PhotoRegistration.create(:finish_date => Date.today + 2, :quantity => 3)
photo_regist4 = PhotoRegistration.create(:finish_date => Date.today + 3, :quantity => 4)
photo_regist5 = PhotoRegistration.create(:finish_date => Date.today + 4, :quantity => 5)
photo_regist6 = PhotoRegistration.create(:finish_date => Date.today + 5, :quantity => 6)
photo_regist7 = PhotoRegistration.create(:finish_date => Date.today + 6, :quantity => 7)
photo_regist8 = PhotoRegistration.create(:finish_date => Date.today + 7, :quantity => 8)
photo_regist9 = PhotoRegistration.create(:finish_date => Date.today + 8, :quantity => 9)
photo_regist10 = PhotoRegistration.create(:finish_date => Date.today + 9, :quantity => 10)


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
book4.book_instances = [book_ins7, book_ins8]
book5.book_instances = [book_ins9, book_ins10]
book6.book_instances = [book_ins11, book_ins12]
book7.book_instances = [book_ins13, book_ins14]
book8.book_instances = [book_ins15, book_ins16]
book9.book_instances = [book_ins17, book_ins18]
book10.book_instances = [book_ins19, book_ins20]
book11.book_instances = [book_ins21, book_ins22]
book12.book_instances = [book_ins23, book_ins24]

user1.notices = [notice1, notice2]
user2.notices = [notice3]
user3.notices = [notice4, notice5]
user4.notices = [notice6]
user5.notices = [notice7, notice8]
user6.notices = [notice9]
user7.notices = [notice10]