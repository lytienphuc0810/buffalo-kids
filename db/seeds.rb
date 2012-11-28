# encoding: UTF-8

User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all
BookReservation.delete_all
PhotoRegistration.delete_all

user1 = User.create(:email => "user1@vit.com", :password => "123456", :password_confirmation => "123456", :remember_me => "true", :username => "user1", :role => "user", :confirmed_at => Time.now)
user2 = User.create(:email => "user2@vit.com", :password => "123456", :password_confirmation => "123456", :remember_me => "true", :username => "user2", :role => "user", :confirmed_at => Time.now)
user3 = User.create(:email => "lytienphuc0810@gmail.com", :password => "123456", :password_confirmation => "123456", :remember_me => "true", :username => "user3", :role => "user", :confirmed_at => Time.now)
user4 = User.create(:email => "admin@gmail.com", :password => "123456", :password_confirmation => "123456", :remember_me => "false", :username => "admin", :role => "admin", :confirmed_at => Time.now)
user5 = User.create(:email => "librarian@gmail.com", :password => "123456", :password_confirmation => "123456", :remember_me => "true", :username => "librarian", :role => "librarian", :confirmed_at => Time.now)
user6 = User.create(:email => "anhvule@yahoo.com", :password => "123456", :password_confirmation => "123456", :remember_me => "false", :username => "user4", :role => "user", :confirmed_at => Time.now)
user7 = User.create(:email => "kysy@yahoo.com", :password => "123456", :password_confirmation => "123456", :remember_me => "true", :username => "librarian1", :role => "librarian", :confirmed_at => Time.now)


book1 = Book.create(:title => "Systems analysis and design", :book_code => "0001",:description => "human-centered book that concisely presents the latest systems development methods, tools, and techniques to readers in an engaging and easy-to-understand manner. ", :author => "Kenneth E. Kendall", :image_url => "http://pixhost.me/avaxhome/f1/01/001e01f1_medium.jpeg", :release_date => "01/11/2012", :rating => "1")
book2 = Book.create(:title => "Data Structures and Algorithm in C++", :book_code => "0002",:description => "this practical and theoretical book prepares students with a solid foundation in data structures for future courses and work in design implementation, testing, or maintenance of virtually any software system.", :author => " Adam Drozdek", :image_url => "http://www.ebook3000.com/upimg/userup/0808/2106201610a.jpg", :release_date => "02/11/2012", :rating => "2")
book3 = Book.create(:title => "JavaScript", :book_code => "0003",:description => "a programmer's guide and comprehensive reference to the core language and to the client-side JavaScript APIs defined by web browsers.", :author => "David Flanagan", :image_url => "http://ecx.images-amazon.com/images/I/413CBBMP2CL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "03/11/2012", :rating => "3")
book4 = Book.create(:title => "Dreamweaver CS5", :book_code => "0004",:description => "Dreamweaver CS5: The Missing Manual takes you through site creation step-by-step, from building your very first page to launching a template-driven, fully interactive site. You'll hone your skills with the help of hands-on, guided tutorials throughout the book.", :author => "David Sawyer McFarland", :image_url => "http://ecx.images-amazon.com/images/I/4152NIXcFgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "04/11/2012", :rating => "4")
book5 = Book.create(:title => "Head first design pattern", :book_code => "0005",:description => "Head First Design Patterns will load patterns into your brain in a way that sticks", :author => "Elisabeth Freeman, Eric Freeman, Bert Bates and Kathy Sierra", :image_url => "http://ecx.images-amazon.com/images/I/51Q6l%2BMyLgL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "05/11/2012", :rating => "5")
book6 = Book.create(:title => "Compiler", :book_code => "0006",:description => "", :author => "", :image_url => "http://ecx.images-amazon.com/images/I/51EoBfWbafL._AA300_.jpg", :release_date => "06/11/2012", :rating => "1")
book7 = Book.create(:title => "Beginning Java", :book_code => "0007",:description => "The authors, recognizing that few readers will ever go on to construct a compiler, retain their focus on the broader set of problems faced in software design and software development.", :author => " Alfred V. Aho, Monica S. Lam, Ravi Sethi and Jeffrey D. Ullman", :image_url => "http://ecx.images-amazon.com/images/I/5149oJpa-zL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg", :release_date => "07/11/2012", :rating => "2")
book8 = Book.create(:title => "C++", :book_code => "0008",:description => "C++ Primer Plus is a carefully crafted, complete tutorial on one of the most significant and widely used programming languages today. An accessible and easy-to-use self-study guide, this book is appropriate for both serious students of programming as well as developers already proficient in other languages.", :author => "Stephen Prata", :image_url => "http://bks0.books.google.com.vn/books?id=hwpqHb5NBSoC&printsec=frontcover&img=1&zoom=1&source=gbs_api", :release_date => "08/11/2012", :rating => "3")
book9 = Book.create(:title => "Discrete Mathematics", :book_code => "0009",:description => "Aimed at undergraduate mathematics and computer science students, this book is an excellent introduction to a lot of problems of discrete mathematics.", :author => "Laszlo Lovasz, Jozsef Pelikan and Katalin L. Vesztergombi ", :image_url => "http://vig-fp.prenhall.com/bigcovers/0131593188.jpg", :release_date => "09/11/2012", :rating => "4")
book10 = Book.create(:title => "Beginning android 4", :book_code => "0010",:description => " It is your first step on the path to creating marketable apps for the burgeoning Android Market, Amazon's Android Appstore, and more", :author => " Grant Allen", :image_url => "http://bks3.books.google.com.vn/books?id=_1otcB06lWYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", :release_date => "10/11/2012", :rating => "5")
book11 = Book.create(:title => "Android game", :book_code => "0011",:description => "everything you need to join the ranks of successful Android game developers", :author => " Robert Green and Mario Zechner", :image_url => "http://bks4.books.google.com.vn/books?id=SoOvFjTXwA4C&printsec=frontcover&img=1&zoom=1&source=gbs_api", :release_date => "11/11/2012", :rating => "1")
book12 = Book.create(:title => "Learning Android", :book_code => "0012",:description => "This fast-paced introduction to the newest release of Android OS gives aspiring mobile app developers what they need to know to program for today's hottest Android smartphones and tablets.", :author => "Wei Meng Lee", :image_url => "http://bks8.books.google.com.vn/books?id=oMYQz4_BW48C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", :release_date => "12/11/2012", :rating => "2")
book13 = Book.create(:title => "C#", :book_code => "0013",:description => "C# is a carefully crafted, complete tutorial on one of the most significant and widely used programming languages today. An accessible and easy-to-use self-study guide, this book is appropriate for both serious students of programming as well as developers already proficient in other languages.", :author => "Neil Smyth", :image_url => "http://bks9.books.google.com.vn/books?id=jwN4VjDE2eAC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70VBfICT8P4gOML6wWh8ptMSwTamKXURj-Bno0OclQdaIZPwmowIvfyLQY-jPPxLslqHkd7dydrQ6yVLmCxqHaZdxdR8C383Kp7Ghi8IT5KUkrSttyBHKIqFn_X2uGxirw1JNwW", :release_date => "08/11/2012", :rating => "2")
book14 = Book.create(:title => "Effective Java", :book_code => "0014",:description => "Java is a carefully crafted, complete tutorial on one of the most significant and widely used programming languages today. An accessible and easy-to-use self-study guide, this book is appropriate for both serious students of programming as well as developers already proficient in other languages.", :author => "Joshua Bloch", :image_url => "http://bks8.books.google.com.vn/books?id=Ft8t0S4VjmwC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72Lyl15uZXRsYZxiRWSbWLl9Ci9BEC8txxGztxlrBABykQlr6uO8jjaKVcJyYDvCLD1I-xvNUPmubCoZVdnDVKsyAUCt8_nBo27yQM8ac2RMqutCv04nfmU_iucbgepXHAd_BNg", :release_date => "08/11/2012", :rating => "3")

for i in 10..100 do
	Book.create(:title => "Book#{i}", :book_code => "1234#{i}")
end

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

notice1 = Notice.create(:title => "THÔNG BÁO (Tuyển dụng viên chức): Thư viện thông báo tuyển dụng viên chức sự nghiệp năm 2012:", :content => "\n Đối tượng dự tuyển:\n Là công dân Việt Nam, có độ tuổi từ 18 tuổi đến 45 tuổi đối với nam và đến 40 tuổi đối với nữ.\n Có lý lịch rõ ràng, phẩm chất đạo đức tốt. Không phải là đối tượng đang trong thời gian truy cứu trách nhiệm hình sự, chấp hành hình phạt tù, cải tạo không giam giữ, quản chế, đang bị áp dụng các biện pháp giáo dục tại xã, phường, thị trấn, thị tứ hoặc đưa vào cơ sở giáo dục xã hội, cơ sở chữa bệnh tâm thần.\n Có trình độ học vấn từ Đại học trở lên, thuộc chuyên môn các ngành: Thông tin - Thư viện, Khoa học Xã hội; có chứng chỉ Ngoại ngữ và Tin học văn phòng trình độ A trở lên.\n Ưu tiên những người đã tham gia công tác thực tế ở lĩnh vực Thông tin - Thư viện từ 01 năm trở lên (có năng khiếu tuyên truyền, giới thiệu sách, báo, năng nổ, hoạt bát); Bản thân là thương binh, hoặc con gia đình chính sách.\n Có đủ sức khoẻ để hoàn thành nhiệm vụ của một viên chức theo quy định của Nhà nước.\nThời gian nhận hồ sơ: Từ ngày ra thông báo đến hết ngày 22 tháng 5 năm 2012.\nHồ sơ nộp tại: Thư viện Tổng hợp tỉnh TT. Huế, số 29A Lê Quý Đôn, Tp. Huế.\nLệ phí nộp hồ sơ: 50.000đ/bộ.\nHồ sơ không trúng tuyển không hoàn lại.\nHồ sơ bán tại: Văn phòng Sở Nội vụ tỉnh Thừa Thiên Huế, số 09 Đống Đa, Tp. Huế).")
notice2 = Notice.create(:title => "THƯ VIỆN PHỐI HỢP VỚI PHÒNG GIÁO DỤC THÀNH PHỐ TỔ CHỨC HỘI THI TUYÊN TRUYỀN GIỚI THIỆU SÁCH CHÚNG EM VỚI DI SẢN VĂN HÓA HUẾ", :content => "Trân trọng")
notice3 = Notice.create(:title => "Thông báo của Thư viện về các nguồn thông tin khoa học của Viện KHXH Việt nam sẵn sàng phục vụ tra cứu trực tuyến", :content => "Thư viện trân trọng thông báo 3 cơ sở dữ liệu (CSDL) về các nguồn thông tin khoa học của Viện KHXH Việt Nam hiện đang sẵn sàng hỗ trợ các nhà khoa học trong và ngoài Viện KHXH Việt Nam tra cứu trực tuyến:\n CSDL Sách Viện KHXH Việt Nam. CSDL vừa được bổ sung dữ liệu mới, hiện có trên 81.500 đầu sách của 29 thư viện các viện nghiên cứu trực thuộc Viện KHXH Việt Nam.\n CSDL Bài tạp chí Viện KHXH Việt Nam xuất bản. Đây là CSDL quản lý và phục vụ tra cứu nguồn tin là các bài tạp chí được đăng trong 29 tạp chí khoa học do các viện nghiên cứu trực thuộc Viện KHXHVN xuất bản. CSDL vừa được bổ sung dữ liệu mới và hiện có trên 23.000 bài tạp chí sẵn sàng cho tra cứu.\n CSDL Đề tài khoa học. Đây là CSDL cung cấp thông tin về các đề tài khoa học cấp nhà nước và cấp bộ do các Viện thuộc Viện KHXHVN thực hiện, chủ trì thực hiện. CSDL hiện có trên 130 đề tài và đang trong quá trình bổ sung dữ liệu mới.")
notice4 = Notice.create(:title => "Thông báo làm thẻ thư viện năm học 2012-2013: Hạn cuối để đăng ký làm thẻ Thư viện theo lớp là ngày 30/11/2012 (Thứ Sáu).", :content => "\n Tất cả sinh viên, học viên của trường phải làm thẻ Thư viện. Phí làm thẻ: 30.000 đ/ thẻ Thư viện. Thẻ Thư viện có giá trị sử dụng trong suốt thời gian học tập tại trường. Khi thanh toán ra trường, thư viện sẽ thu hồi thẻ Thư viện và xác nhận ra trường cho sinh viên.\n Đề nghị Lớp trưởng các lớp liên hệ tại Thư viện để đăng ký và nhận mẫu phiếu dán hình làm thẻ Thư viện theo lớp.")
notice5 = Notice.create(:title => "Thông báo danh sách sinh viên chưa trả sách", :content => "Thời hạn trả sách: 27/08/2012.\nĐề nghị sinh viên trả sách đúng hạn để giáo vụ chuẩn bị cho khóa tiếp theo.\nNếu sinh viên không hoàn trả sách sẽ không được mượn sách cho học phần tiếp theo.")
notice6 = Notice.create(:title => "Thông báo tổ chức bán sách giảm giá của công ty FAHASA", :content => "Nhằm tạo điều kiện cho cán bộ, sinh viên và học viên nhà trường tiếp cận với các loại tài liệu chuyên ngành, thu hút bạn đọc đến với Thư viện thông qua các hoạt động của Thư viện phối hợp với các nhà xuất bản và công ty phát hành sách \nĐược sự đồng ý của Ban Giám Hiệu nhà trường, Công ty Phát hành sách TP.HCM (FAHASA) phối hợp với trường tổ chức “Đợt phục vụ sách giảm giá đặc biệt” như sau:\nNội dung:\nTrưng bày, giới thiệu và bán nhiều loại sách chuyên ngành phù hợp với các khoa ngành đào tạo của trường.\nThời gian: từ ngày 12/11/2012 đến ngày 16/11/2012")
notice7 = Notice.create(:title => "Quy định nội dung và hình thức đề cương luận văn / luận án sau đại học", :content => "Trân trọng")
notice8 = Notice.create(:title => "Thông báo bổ sung tài liệu tham khảo tại Thư viện năm học 2012-2013", :content => "Nhằm đáp ứng nhu cầu tài liệu tham khảo học tập, giảng dạy, nghiên cứu của cán bộ, sinh viên, học viên sau đại học, Thư viện tiến hành bổ sung, cập nhật tài liệu cho năm học 2012-2013 để trình Ban Giám Hiệu duyệt mua.\nĐể việc bổ sung tài liệu phù hợp với nhu cầu cụ thể của các chuyên ngành đào tạo của nhà trường, Thư viện đề nghị các đơn vị đăng ký danh mục tài liệu cần bổ sung theo theo mẫu đính kèm.\nDanh sách tài liệu đăng ký bổ sung vui lòng gửi về Thư viện hạn cuối là ngày 09/11/2012 (thứ Sáu). File đăng ký gửi về cho Thư viện cùng thời gian trên qua email thuvien@ctump.edu.vn\nRất mong nhận được sự hợp tác của các đơn vị để Thư viện hoàn thành nhiệm vụ.\nTrân trọng.")
notice9 = Notice.create(:title => "Thông báo cung cấp tài khoản dùng thử Cơ sở dữ liệu tạp chí điện tử của NXB InformaHealthCare", :content => "Thư viện xin thông báo tài khoản dùng thử Cơ sở dữ liệu tạo chí điện tử của NXB InformaHealthCare. Bộ sưu tập trên cung cấp quyền truy cập toàn văn đến 170 tạp chí và 600 ebook về chuyên ngành y học lâm sàng, dược, khoa học đời sống.\nĐể sử dụng CSDL trên, bạn đọc truy cập vào địa chỉ sau: \nURL: http://informahealthcare.com/action/showPublications?display=byAlphabet&pubType=journal\nThời gian dùng thử từ: 25/9/2012 đến ngày 24/11/2012.\nTrong thời gian dùng thử trên, quý thầy cô và các bạn sinh viên vui lòng đến truy cập tại các máy tính của Thư viện.\nBạn đọc gặp khó khăn trong quá trình sử dụng, vui lòng liên hệ với cán bộ trực tại Thư viện để được giúp đỡ.\nTrân trọng.")
notice10 = Notice.create(:title => "Thông báo về việc thay đổi tài khoản dùng thử CSDL sách điện tử MyiLibrary", :content => "Do có sự thay đổi tài khoản dùng thử từ phía nhà cung cấp, Thư viện xin cập nhật lại thông tin tài khoản dùng thử mới của Bộ sưu tập sách điện tử MyiLibrary. Đây là kho sách điện tử đa ngành lớn nhất với khoảng 200.000 đầu sách của 450 nhà xuất bản lớn trên thế giới.\nBạn đọc nhà trường có quan tâm vui lòng email : thuvien@ctump.edu.vn để được cung cấp tài khoản dùng thử CSDL trên.\nThời gian dùng thử đến hết ngày 20/10/2012. Bạn đọc có thể truy cập tại địa chỉ:\nMyiLibrary: http://lib.myilibrary.com\nNay, Thư viện xin thông báo đến bạn đọc truy cập và sử dụng.\nTrân trọng.")

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
book_reserve7.book_instance = book_ins13
book_reserve8.book_instance = book_ins14
book_reserve9.book_instance = book_ins15
book_reserve10.book_instance = book_ins16

photo_regist1.book_instance = book_ins1
photo_regist2.book_instance = book_ins2
photo_regist3.book_instance = book_ins3
photo_regist4.book_instance = book_ins4
photo_regist5.book_instance = book_ins5
photo_regist6.book_instance = book_ins6
photo_regist7.book_instance = book_ins17
photo_regist8.book_instance = book_ins18
photo_regist9.book_instance = book_ins19
photo_regist10.book_instance = book_ins20

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