
# encoding: UTF-8
User.delete_all
Notice.delete_all
Book.delete_all
BookInstance.delete_all
BookReservation.delete_alls
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
book_ins21 = BookInstance.create(:book_instance_code => "ASD0")
book_ins22 = BookInstance.create(:book_instance_code => "ASD4")
book_ins23 = BookInstance.create(:book_instance_code => "ASDC")
book_ins24 = BookInstance.create(:book_instance_code => "ASDH")

notice1 = Notice.create(:title => "Thủ tướng Nguyễn Tấn Dũng làm việc tại ÐHQG TP.HCM", :content => 'Sáng 21-10, Thủ tướng Nguyễn Tấn Dũng đã tiếp xúc cử tri theo chuyên đề tại Ðại học Quốc gia TP Hồ Chí Minh trên địa bàn quận Thủ Ðức, TP Hồ Chí Minh và xã Dĩ An, tỉnh Bình Dương để thu thập ý kiến, nguyện vọng của cử tri về những vấn đề liên quan lĩnh vực giáo dục - đào tạo và phát triển kinh tế - xã hội.
Ðóng góp ý kiến tại buổi tiếp xúc, cử tri Ðại học Quốc gia TP Hồ Chí Minh bày tỏ tin tưởng, phấn khởi trước quyết tâm cao của Ðảng, Nhà nước, Quốc hội và Chính phủ trong mục tiêu kiềm chế lạm phát, nhằm duy trì phát triển kinh tế, bảo đảm an sinh xã hội, giữ vững quốc phòng, an ninh. Cử tri đề nghị Chính phủ giao quyền tự chủ cao hơn nữa, ban hành cơ chế đặc biệt cho phép Ðại học Quốc gia TP Hồ Chí Minh thí điểm mô hình, phương pháp giáo dục mới có trọng tâm, trọng điểm, có sự giám sát của Bộ Giáo dục và Ðào tạo nhằm thực hiện mục tiêu tạo bước đột phá trong giáo dục đại học. Cử tri cũng đề xuất những ý kiến liên quan việc: sửa đổi Luật Phòng, chống tham nhũng; bảo vệ chủ quyền Tổ quốc; chăm lo đời sống, lương cán bộ, công chức.
Thông báo với các cử tri về tình hình và kết quả điều hành phát triển kinh tế - xã hội đất nước năm 2012, Thủ tướng Nguyễn Tấn Dũng cho biết, năm 2012 tình hình kinh tế thế giới biến động rất phức tạp, tác động tiêu cực đến nền kinh tế đã hội nhập sâu rộng và có độ mở lớn như nền kinh tế nước ta. Bên cạnh đó, chúng ta phải dành nhiều thời gian và công sức để đối phó với thiên tai, dịch bệnh, các âm mưu thủ đoạn gây mất ổn định chính trị - xã hội và đe dọa chủ quyền quốc gia. Trong điều kiện khó khăn, thách thức đó, công tác lãnh đạo điều hành thực hiện nhiệm vụ phát triển kinh tế - xã hội năm 2012 đã bám sát mục tiêu, nhiệm vụ đề ra trong các nghị quyết của Ðảng và Quốc hội, đạt và vượt 10 trên 15 chỉ tiêu kế hoạch đã đề ra.
Thủ tướng Nguyễn Tấn Dũng cho biết, Chính phủ đề nghị xác định mục tiêu tổng quát của năm 2013 là tăng cường ổn định kinh tế vĩ mô; lạm phát thấp hơn, tăng trưởng cao hơn năm 2012. Ðẩy mạnh thực hiện ba đột phá chiến lược gắn với tái cơ cấu nền kinh tế, chuyển đổi mô hình tăng trưởng. Bảo đảm an sinh xã hội và phúc lợi xã hội. Nâng cao hiệu quả công tác đối ngoại và hội nhập quốc tế. Tăng cường quốc phòng, an ninh và bảo đảm ổn định chính trị - xã hội. Tạo nền tảng phát triển vững chắc hơn cho những năm tiếp theo.
Ðánh giá cao đề xuất của các cử tri về việc tạo cơ chế để nhà trường triển khai thí điểm các mô hình giáo dục mới, đào tạo nhân lực chất lượng cao, Thủ tướng Nguyễn Tấn Dũng nhấn mạnh, phát triển giáo dục là một trong ba khâu đột phá đưa đất nước phát triển nhanh và bền vững, hướng tới mục tiêu CNH, HÐH đất nước. Việc giao cơ chế riêng sẽ tạo điều kiện thuận lợi để Ðại học Quốc gia TP Hồ Chí Minh phát huy tính năng động, sáng tạo; nâng cao vai trò, vị trí của một cơ sở đào tạo đại học hàng đầu của đất nước, không ngừng cải thiện vị trí, uy tín trong nền giáo dục khu vực. Thủ tướng đề nghị nhà trường sớm xây dựng đề án, trình Chính phủ xem xét, quyết định.
Về đề xuất của cử tri trong lĩnh vực phòng, chống tham nhũng, Thủ tướng Nguyễn Tấn Dũng khẳng định, Chính phủ đặt quyết tâm cao trong việc đấu tranh, ngăn chặn, đẩy lùi nạn tham nhũng, gắn với việc thực hiện Nghị quyết T.Ư 4 (khóa XI). Chính phủ cũng đã vừa tiến hành tổng kết, đánh giá việc thực hiện Nghị quyết Trung ương 3 và Luật Phòng, chống tham nhũng; từ đó, nhận ra những khuyết điểm, hạn chế để có biện pháp khắc phục; đồng thời trình Quốc hội cho ý kiến sửa đổi để Luật Phòng, chống tham nhũng phù hợp, sát với điều kiện nước ta và thực thi đem lại hiệu quả cao hơn.
* Cùng ngày 21-10, Ðại học (ÐH) Quốc gia TP Hồ Chí Minh tổ chức Lễ khai khóa năm 2012 và khánh thành ký túc xá (KTX) sinh viên. Thủ tướng Nguyễn Tấn Dũng; đồng chí Lê Thanh Hải, Ủy viên Bộ Chính trị, Bí thư Thành ủy TP Hồ Chí Minh và đại diện lãnh đạo một số bộ, ngành và các địa phương khu vực phía nam dự.
Phát biểu ý kiến tại buổi lễ, Thủ tướng Nguyễn Tấn Dũng biểu dương những kết quả tập thể cán bộ, giảng viên, sinh viên ÐH Quốc gia TP Hồ Chí Minh đã đạt được sau 17 năm xây dựng và phát triển. ÐH Quốc gia TP Hồ Chí Minh ngày càng khẳng định tính vượt trội của mô hình đại học tiên tiến và đổi mới giáo dục của đại học Việt Nam và đang trở thành một trung tâm đào tạo bậc đại học, nghiên cứu khoa học và công nghệ đa ngành, đa lĩnh vực, chất lượng cao.
Thủ tướng khẳng định: Ðảng, Nhà nước ta luôn quan tâm, chăm lo sự nghiệp giáo dục và đào tạo, coi trọng phát triển giáo dục và đào tạo là quốc sách hàng đầu, là nhân tố quyết định thành công của sự nghiệp CNH, HÐH đất nước. Với sự nỗ lực của toàn ngành, của cả hệ thống chính trị và toàn xã hội, đến nay, nền giáo dục nước ta đã có bước phát triển đáng kể. Hơn 20 năm qua, năng lực đào tạo tăng bốn lần. Cả nước hiện có khoảng 400 trường đại học, cao đẳng với quy mô đào tạo hơn hai triệu sinh viên. Tỷ lệ lao động qua đào tạo tăng từ 16% năm 2000 lên 40% vào năm 2010.
Toàn Ðảng, toàn dân ta đang nỗ lực phấn đấu thực hiện thắng lợi mục tiêu, nhiệm vụ Ðại hội XI của Ðảng đề ra, xây dựng Việt Nam cơ bản trở thành nước công nghiệp theo hướng hiện đại vào năm 2020 và đề ra chủ trương đổi mới cơ bản và toàn diện giáo dục, đào tạo, dạy nghề, trong đó phát triển nguồn nhân lực là một trong ba đột phá chiến lược. Toàn ngành giáo dục tích cực triển khai Luật Giáo dục đại học vừa được Quốc hội thông qua; chiến lược phát triển giáo dục; chiến lược phát triển dạy nghề giai đoạn 2011-2020 đã được Thủ tướng Chính phủ phê duyệt và Kết luận của Hội nghị Trung ương 6 (khóa XI) về giáo dục và đào tạo. Là một trung tâm đại học lớn của cả nước, ÐH Quốc gia TP Hồ Chí Minh phải nỗ lực phát triển nhanh hơn nữa, đi đầu trong việc thực hiện chủ trương đổi mới căn bản, toàn diện nền giáo dục quốc dân, sớm đưa đơn vị đạt được trình độ quốc tế ở nhiều lĩnh vực hoạt động. Muốn vậy, ÐH Quốc gia TP Hồ Chí Minh cần đẩy mạnh việc hoàn thiện đào tạo theo tín chỉ, tăng cường kiểm định chất lượng và ứng dụng các phương pháp giảng dạy hiện đại, giáo trình mở. Triển khai các dự án quốc tế mang tính chất đa ngành quy mô lớn trên cơ sở thế mạnh của đơn vị. ÐH Quốc gia TP Hồ Chí Minh phải đặc biệt chú trọng nâng cao chất lượng đào tạo, thật sự tạo được cuộc cách mạng về chất lượng giáo dục đại học, nâng cao tỷ lệ giảng viên có trình độ tiến sĩ, giáo sư, phó giáo sư; đồng thời chăm lo đời sống vật chất và tinh thần đối với cán bộ, giảng viên, công nhân viên và sinh viên. Cùng với trang bị kiến thức, cần quan tâm giáo dục chính trị và phẩm chất đạo đức cho sinh viên.
Ngay sau lễ khai khóa, ÐH Quốc gia TP Hồ Chí Minh đã tổ chức khánh thành giai đoạn 1 KTX sinh viên. Dự án đáp ứng chỗ ở và sinh hoạt cho 60 nghìn sinh viên, có vốn đầu tư gần 3.530 tỷ đồng, trên diện tích 59 ha.')
notice2 = Notice.create(:title => 'Phát động Chương trình “Mỗi người một cuốn sách"', :content => 'QĐND Online - Đồng hành cùng chuỗi chương trình “Vì Học sinh Trường Sa thân yêu” do Quỹ Vừ A Dính và Báo Pháp Luật TP Hồ Chí Minh tổ chức, Quỹ cộng đồng người dùng Internet Việt Nam (VNIF) trực thuộc Công ty cổ phần VNG chính thức phát động chương trình “Mỗi người một cuốn sách”.
Chương trình  nhằm kêu gọi cộng đồng cùng chung tay đóng góp sách để tạo nên một thư viện sách cho học sinh Trường Sa, giúp các em mở mang kiến thức, tạo điều kiện để các em được khám phá thế giới xung quanh và phát triển tư duy như bao trẻ khác.
Thể loại sách cần được quyên góp bao gồm sách giáo khoa, sách báo thiếu nhi, truyện tranh thiếu nhi dành cho lứa tuổi từ 5 đến 12 tuổi. Bên cạnh đó chương trình cũng nhận đóng góp bằng Zing xu qua website www.vitruongsa.org. Ban tổ chức nhận sách tại Lầu 13- Tòa nhà Flemington số 182 Lê Đại Hành, P.15, Q.11 (TP Hồ Chí Minh) từ thứ 2 đến thứ 6 mỗi tuần (bắt đầu từ ngày 16-10 đến hết ngày 14-11-2012).
Theo bà Đoàn Đỗ Ngọc Thi – Giám đốc điều hành Quỹ VNIF: “Chương trình Mỗi người một cuốn sách bước đầu đã kết nối được nhiều nhóm sinh viên, nhóm công tác xã hội, nhóm tình nguyện viên tham gia như: YTC, EVG, Your Club, Enda, GFOC, Những ước mơ xanh, Đội công tác xã hội Đại học Công nghiệp. Thấu hiểu được sự thiếu thốn về các phương tiện, công cụ dạy và học, nên ngoài việc kêu gọi cộng đồng quyên góp sách, Quỹ VNIF kết hợp với Báo Pháp Luật TP Hồ Chí Minh tặng cho nhà trường 5 bộ máy tính và một bộ màn hình máy chiếu để phục vụ cho việc dạy và học tại Trường Sa”.
Để biết thêm về chương trình, xin truy cập website: www.vitruongsa.org.')
notice3 = Notice.create(:title => "Trường ĐH Bách Khoa TP Hồ Chí Minh đoạt giải đặc biệt về đề tài nghiên cứu phát triển bền vững", :content => '(SGGPO).- Sau một năm khởi động, ngày 13-10, vòng chung kết cuộc thi “Holcim Prize 2012” với 7 đề tài nghiên cứu phục vụ cho phát triển bền vững của các sinh viên đến từ 7 trường đại học trên cả nước đã diễn ra sôi nổi tại Trường ĐH Sư phạm Kỹ thuật TP Hồ Chí Minh
Chiều 13-10, sau một ngày tranh tài, vượt qua sáu nhóm sinh viên khác, nhóm sinh viên đến từ Trường ĐH Bách khoa TP Hồ Chí Minh đã giành được giải đặc biệt (trị giá 60 triệu đồng) của giải thưởng “Holcim Prize 2012” với đề tài “Hệ thống tưới tiêu hoa màu sử dụng ánh sáng mặt trời ở nông thôn tỉnh Ninh Thuận”. Đề tài này được ban giám khảo đánh giá cao về khả năng ứng dụng thực tiễn và tính bền vững, sử dụng năng lượng mặt trời cung cấp giải pháp tưới tiêu tiết kiệm nước và nâng cao năng suất lao động cho người dân.
Công ty Xi măng Holcim Việt Nam sẽ hỗ trợ tối đa 150 triệu đồng để triển khai ứng dụng thực tế đề tài này tại tỉnh Ninh Thuận.
Ngoài ra, ban tổ chức còn trao các giải thưởng khác như: Giải “Bảo vệ môi trường” được trao cho đề tài “Mô hình quản lý rác thải sinh hoạt ở khu 2 ĐH Cần Thơ” của nhóm sinh viên đến từ Trường ĐH Cần Thơ; đề tài “Mô hình sân chơi cho trẻ em khuyết tật) của Trường ĐH Khoa học xã hội và Nhân văn TP Hồ Chí Minh đạt giải “Phát triển cộng đồng”; Trường ĐH Kiến trúc Hà Nội đạt giải “Xây dựng bền vững” với đề tài “Tổ chức không gian sinh hoạt cộng đồng khu dân cư làng chài bãi giữa sông Hồng”…
Giải thưởng “Holcim Prize 2013” sẽ được khởi động trong tháng 10-2012 và tháng 11-2012 tại 7 trường đại học và hạn đăng ký đề tài là 30-12-2012. Với tổng giá trị giải thưởng lên tới 600 triệu đồng (tăng 200 triệu đồng so với năm 2012) và kinh phí hỗ trợ tối đa cho ứng dụng thực tế cũng tăng lên 200 triệu đồng.')
notice4 = Notice.create(:title => "Notice 1", :content => "Thông báo làm thẻ thư viện năm học 2012-2013: Hạn cuối để đăng ký làm thẻ Thư viện theo lớp là ngày 30/11/2012 (Thứ Sáu).")
notice5 = Notice.create(:title => "Notice 2", :content => "Thông báo danh sách sinh viên chưa trả sách")
notice6 = Notice.create(:title => "Notice 3", :content => "Thông báo tổ chức bán sách giảm giá của công ty FAHASA")
notice7 = Notice.create(:title => "Notice 4", :content => "Quy định nội dung và hình thức đề cương luận văn / luận án sau đại học")
notice8 = Notice.create(:title => "Notice 5", :content => "Thông báo bổ sung tài liệu tham khảo tại Thư viện năm học 2012-2013")
notice9 = Notice.create(:title => "Notice 6", :content => "Thông báo cung cấp tài khoản dùng thử Cơ sở dữ liệu tạp chí điện tử của NXB InformaHealthCare")
notice10 = Notice.create(:title => "Notice 7", :content => "Thông báo về việc thay đổi tài khoản dùng thử CSDL sách điện tử MyiLibrary")

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