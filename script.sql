USE [master]
GO
/****** Object:  Database [Project_PRJ]    Script Date: 11/9/2022 11:48:02 AM ******/
CREATE DATABASE [Project_PRJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_PRJ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_PRJ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_PRJ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_PRJ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project_PRJ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_PRJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_PRJ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_PRJ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_PRJ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_PRJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_PRJ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_PRJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_PRJ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_PRJ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_PRJ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_PRJ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_PRJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_PRJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_PRJ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_PRJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_PRJ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_PRJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_PRJ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_PRJ] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_PRJ] SET  MULTI_USER 
GO
ALTER DATABASE [Project_PRJ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_PRJ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_PRJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_PRJ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_PRJ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_PRJ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_PRJ', N'ON'
GO
ALTER DATABASE [Project_PRJ] SET QUERY_STORE = OFF
GO
USE [Project_PRJ]
GO
/****** Object:  Table [dbo].[Account_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE161098](
	[Account_id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[passworld] [nvarchar](1000) NULL,
	[email] [varchar](500) NULL,
	[gender] [nvarchar](max) NULL,
	[phone_number] [int] NULL,
	[Role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_HE161098](
	[Category_id] [int] NOT NULL,
	[Category_name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image2_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image2_HE161098](
	[url] [varchar](5000) NULL,
	[Product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail_HE161098](
	[Product_id] [int] NULL,
	[Order_id] [int] NULL,
	[number_ticket] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE161098](
	[Order_id] [int] NOT NULL,
	[Order_date] [date] NULL,
	[Account_id] [int] NULL,
	[Total_price] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE161098](
	[Product_id] [int] NOT NULL,
	[Review_product] [nvarchar](4000) NULL,
	[Price] [int] NULL,
	[Product_name] [nvarchar](500) NULL,
	[Category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_HE161098]    Script Date: 11/9/2022 11:48:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_HE161098](
	[Role_id] [int] NOT NULL,
	[Role_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (1, N'Nguyen', N'123', N'abc@BD', N'nam', 921, 0)
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (2, N'huyhhue', N'12345', N'huyvahue@gmail.com', N'nam', 964302864, 0)
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (3, N'quang huy', N'5647', N'quanghuy@23', N'nam', 964302864, 0)
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (4, N'huyhhue9', N'12345', N'nguyenquangjkg@gmail.com', N'nu', 964302864, 1)
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (5, N'huyhhue9', N'2345', N'nguyenquangjkg@gmail.com', N'nu', 964302864, 1)
INSERT [dbo].[Account_HE161098] ([Account_id], [Name], [passworld], [email], [gender], [phone_number], [Role_id]) VALUES (6, N'huy', N'3456', N'quanghuy@23', N'nam', 964302864, 1)
GO
INSERT [dbo].[category_HE161098] ([Category_id], [Category_name]) VALUES (0, N'Du lịch nghỉ dương')
INSERT [dbo].[category_HE161098] ([Category_id], [Category_name]) VALUES (1, N'Du lịch tâm linh')
INSERT [dbo].[category_HE161098] ([Category_id], [Category_name]) VALUES (2, N'Du lịch khám phá')
GO
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/08_2019/lang-van-hoa.jpg', 1)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulich9.com/wp-content/uploads/2019/04/Lang-van-hoa-cac-dan-toc-Viet-Nam-02.jpg', 1)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://btnmt.1cdn.vn/2020/06/03/a.jpg', 1)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://thuhangtravel.vn/wp-content/uploads/2021/07/canh-thien-son-suoi-nga.jpg', 2)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://cdn.dealtoday.vn/img/s630x420/26f4fa489b4644a28b386e0abe423fc4.png?sign=sLEKsafAWNz1LJlQdnBboQ', 2)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://img.webbanve.net/photos/resized/x/3535-1637408313-zotadivn.png', 2)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://doanhnghiepkinhtexanh.vn/uploads/images/2022/08/29/1-1661737456.jpg', 3)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N' https://dulichbavi.com.vn/wp-content/uploads/2016/08/12112012152716_1_Ba-vi-2.jpg', 3)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://mytourcdn.com/upload_images/Image/Location/4_10_2016/11/vuon-quoc-gia-ba-vi-mytour-1.jpg', 3)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/04/kinh-nghiem-du-lich-ho-tien-sa-4.jpg', 4)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://vivu.net/uploads/2020/11/khu-du-lich-ho-tien-sa-1024x486.jpg', 4)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://medithienson.com/wp-content/uploads/2021/04/du-lich-ho-Tien-Sa-Ba-Vi-Khu-du-lich-MEDI-T-hien-Son-1.jpg', 4)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulichhoangnguyen.com/upload/images/kinh-nghiem-di-khoang-xanh-suoi-tien.jpg', 5)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://vnsharing.edu.vn/wp-content/uploads/2021/12/tro-choi-cam-giac-manh-tai-khoang-xanh.jpg', 5)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://bizweb.dktcdn.net/100/101/075/files/thac-nuoc-khoang-xanh-suoi-tien-c9544fa2-2693-4207-88c7-7f1210ccecfd.jpg?v=1585763712731', 5)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulichkhatvongviet.com/wp-content/uploads/2020/10/thung-lung-ban-xoi-ba-vi.jpg', 6)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://contuhoc.com/Content/Images/Uploaded/29a2efdf-a88a-4971-b97a-2de76c0643843.png636455776497874767.jpg', 6)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://cdn.alongwalker.co/vn/wp-content/uploads/2022/02/01010150/image-du-lich-thung-lung-ban-xoi-thien-duong-da-ngoai-dep-ngo-ngang-ngay-sat-thu-do-164604611099802.jpg', 6)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulichtoday.vn/wp-content/uploads/2018/07/anh-bia-family-resort-2.jpg', 7)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRod46KoK8RHhBiGCUyQKxiW1-cjliNM9hdeg&usqp=CAU', 7)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://kenhhomestay.com/wp-content/uploads/2019/11/family-resort-3.jpg', 7)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'http://reviewvilla.vn/wp-content/uploads/2022/03/Mit-Hilltop-Homestay-1.jpg', 8)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://reviewhomestay.vn/wp-content/uploads/2021/02/Homestay-Ba-Vi-17.jpg', 8)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://homestayreview.vn/wp-content/uploads/2021/02/homestay-ba-vi-40.jpg', 8)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'http://www.nuibavi.com/userfiles/image/long-viet.jpg', 9)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulichbavi.com/wp-content/uploads/2019/07/du-lich-long-viet-tong-the-tren-cao.jpg', 9)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://bizweb.dktcdn.net/100/101/075/files/lv.jpg?v=1554978198156', 9)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'http://reviewvilla.vn/wp-content/uploads/2022/01/TanDaResort-1.jpg', 10)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'http://www.nuibavi.com/nuibavi-images/product/img1/tanda1.jpg', 10)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://pix10.agoda.net/hotelImages/286/286699/286699_14032415090018829497.jpg?ca=2&ce=1&s=1024x768', 10)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://vnn-imgs-f.vgcloud.vn/2021/11/27/10/257381957-1769504896573974-6141244143265703677-n.jpg', 11)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://thuhangtravel.vn/wp-content/uploads/2022/07/tour-tet-lang-co-duong-lam-1.jpg', 11)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://nemtv.vn/wp-content/uploads/2019/02/lang-co-duong-lam-son-tay-111-nemtv.jpg', 11)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://kenhhomestay.com/wp-content/uploads/2022/02/Bella-Resort-1.jpeg', 12)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://kenhhomestay.com/wp-content/uploads/2022/02/bella-resort-14.jpeg', 12)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'https://dulichbavi.com.vn/wp-content/uploads/2017/10/resort-melia-ba-vi-chuan-5-sao-5.jpg', 12)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'', 12)
INSERT [dbo].[image2_HE161098] ([url], [Product_id]) VALUES (N'huy', 13)
GO
INSERT [dbo].[Order_detail_HE161098] ([Product_id], [Order_id], [number_ticket]) VALUES (1, 1, 2)
GO
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (1, CAST(N'2022-12-02' AS Date), 1, 20000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (2, CAST(N'2022-11-07' AS Date), 3, 1000000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (3, CAST(N'2022-11-07' AS Date), 3, 1000000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (4, CAST(N'2022-11-07' AS Date), 3, 1000000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (5, CAST(N'2022-11-07' AS Date), 3, 1000000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (6, CAST(N'2022-11-07' AS Date), 3, 450000, 1)
INSERT [dbo].[Order_HE161098] ([Order_id], [Order_date], [Account_id], [Total_price], [Status]) VALUES (7, CAST(N'2022-11-07' AS Date), 3, 650000, 1)
GO
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (1, N'Làng Văn hóa các dân tộc Việt Nam cách Hà Nội 40km do đó chỉ mất khoảng 35 – 40 phút lái xe từ nội đô đi đến làng. Có nhiều cách để đến Làng Văn hóa các dân tộc Việt Nam, nhưng tuyến được được lựa chọn nhiều nhất là đi theo đường Quốc lộ 32. Bởi đường này ngoài ưu điểm rộng rãi, dễ đi còn rất thuận tiện cho việc ăn uống, nghỉ ngơi và tham quan các địa điểm nổi tiếng khác của khu vực Sơn Tây, Ba Vì.



Nằm ở thị xã Sơn Tây, làng Văn hóa các dân tộc Việt Nam là nơi diễn ra nhiều lễ hội hàng năm, các lễ hội được tổ chức mang nét đẹp văn hóa tinh thần của mỗi cộng đồng người. Nếu có cơ hội tới đây, bạn hãy cố gắng tới thăm tất cả những nét độc đáo trong kiến trúc nhà ở nhé! Điều đặc biệt bạn sẽ được chính họ giới thiệu về những thói quen, phong tục tập quán và sinh hoạt cộng đồng, hãy cùng khám phá những nét đa dạng trong lối sống và tín ngưỡng của các dân tộc anh em ở đây, bằng cách dành những ngày cuối tuần ghé thăm nơi này nhé!
', 200000, N'làng văn hóa các dân tộc việt nam', 2)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (2, N'Là 1 trong những điểm đến hấp dẫn nhất Hà Nội với khí hậu mát mẻ quanh năm, Khu du lịch sinh thái Thiên Sơn - Suối Ngà là một kì quan thiên nhiên tuyệt đẹp kết hợp giữa núi, khe, và thác nước. Đến với Thiên Sơn - Suối Ngà, bạn sẽ được thỏa sức tận hưởng khung cảnh thiên nhiên hùng vĩ, và thư giãn trong bầu không khí trong lành của núi rừng trùng trùng điệp điệp đã có từ bao đời nay. Những ngày nghỉ cuối tuần tại đây sẽ mang lại cho bạn cảm giác tự do, thoải mái. Đây là khu du lịch sinh thái thuộc huyện Ba Vì, với khí hậu mát mẻ nơi đây thu hút lượng khách du lịch tương đối đông, dù là vào mùa hè hay mùa đông. Khung cảnh nơi đây gợi cho bạn vẻ đẹp hoang sơ của núi rừng, ở đây có những con suối chảy róc rách ngày đêm, có những ngọn thác đẹp đên mức bạn có thể quên tất cả mọi thứ để ngắm nhìn, dòng nước trên cao chảy xuống, tạo thành một hồ nước mà mùa đông ngâm mình thì ấm áp, mùa hè thì sảng khoái tới lạ thường. Đến khu du lịch này, bạn còn có cơ hội nghỉ dưỡng ở các khách sạn tiện nghi và hiện đại. Đây là một trong những địa điểm du lịch hấp dẫn ở Ba Vì hiện nay.', 250000, N'thiên sơn suối ngà', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (3, N'Với diện tích hơn 11.460ha, nằm trên địa phận huyện Ba Vì (Hà Nội), Vườn Quốc gia Ba Vì là địa điểm không thể bỏ qua đối với những du khách ưa khám phá, mạo hiểm. Đây là khu sinh thái tuyệt vời. Vườn Quốc Gia Ba Vì thuộc huyện Ba Vì - Hà Nội. Ở đây bạn có thể thỏa mình vào thiên nhiên kỳ thú, loại bỏ nhiều phiền muộn tránh xa mọi ồn ào của cuộc sống. Đây cũng là chia sẻ của nhiều người khi đã từng đến đây và còn muốn quay lại thêm nhiều lần hơn nữa. Vào tiết trời thu, là mùa hoa Dã quỳ nở đẹp. Bạn sẽ chìm đắm trong sắc vàng của loài hoa này. Một loài hoa tuyệt đẹp. Đây là địa điểm phượt lý tưởng cho các bạn muốn thỏa sức với thiên nhiên. Có rất nhiều cảnh đẹp để bạn có thể check-in cùng bạn bè và khám phá những điều thú vị. Vườn Quốc Gia Ba Vì có 1.209 loài thực vật trong đó có 21 loài thực vật quý hiếm được ghi trong sách đỏ Việt Nam như: Bách xanh, Sến mật, Phỉ ba mũi, Dẻ tùng sọc trắng, Hoa tiên, Râu hùm, Kim tuyến... Hệ động vật có 63 loài thú, với nhiều loài quý hiếm như: Cầy gấm, Cu li lớn, Gà lôi trắng, Rồng đất, Cà cuống, Bướm rồng đuôi trắng... Núi Ba Vì tương truyền là nơi hóa thân của Đức thánh Tản Viên Sơn Tinh, vị thánh đứng đầu Tứ bất tử trong tâm thức người Việt. Để ghi nhớ công lao trị thủy của Đức Thánh Tản Viên, nhân dân lập Đền thờ Ngài trên đỉnh Tản Viên, tục gọi là Đền Thượng. Đền Thượng đã được xếp hạng di tích lịch sử văn hóa cấp quốc gia vào tháng 2/2008. Ngoài những giá trị lịch sử, du khách sẽ có dịp tìm hiểu thêm về nền văn hóa Văn Lang đời Vua Hùng thứ 18 và cảm nhận sâu sắc hơn về mối tình giữa chàng Sơn Tinh với nàng công chúa Ngọc Hoa. Trên đỉnh Vua là Đền thờ Chủ tịch Hồ Chí Minh, người con ưu tú của dân tộc Việt Nam, danh nhân văn hóa thế giới. Ngôi đền nằm giữa không gian huyền ảo, lẫn trong mây trắng bồng bềnh và tiếng chim rừng lảnh lót dưới những tán cây cao vút. Ở độ cao 600m là điểm di tích lịch sử cách mạng ghi dấu trận đánh dũng cảm giữa bộ đội ta với thực dân Pháp trong chiến dịch Hòa Bình năm 1952. Đến thăm nơi này, du khách như được sống lại quá khứ hào hùng, được trải lòng với hồn thiêng núi Tản sông Đà. Hơn nữa, chi phí cho các hoạt động ở đây cũng khá là phù hợp với túi tiền của mỗi người. Nên hãy đừng bỏ qua địa điểm tuyệt vời này các bạn nhé!', 200000, N'vườn quốc gia ba vì', 2)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (4, N'Hồ Tiên Sa là một thắng cảnh của Ba Vì, chỉ cách trung tâm thủ đô 25km, hồ Tiên Sa sỡ hữu một phong cảnh hữu tình non xanh nước biếc. Không gian xanh, thoáng mát nơi đây sẽ giúp bạn trút hết những lo âu, mệt mỏi của cuộc sống nơi thị thành.



Khu du lịch hồ Tiên Sa nằm ở chân núi Tản, thuộc xã Tản Lĩnh, huyện Ba Vì, Hà Nội. Hồ nằm ở độ cao 65 ~ 400m, với tổng diện tích khoảng 150 ha bao gồm cánh rừng rộng khoảng 120ha và hồ Tiên Sa quanh năm nước trong vắt rộng 20ha. Được bao bọc bởi núi Ba Vì với những cánh rừng xanh ngát, ở giữa là hồ nước nên khí hậu ở đây quanh năm dễ chịu, bầu không khí trong lành. Hồ Tiên Sa nổi tiếng vì nước trong vắt quanh năm, khách du lịch có thể ngắm nhìn khung cảnh quanh hồ, và tận hưởng cảm giác nhẹ nhàng nơi đây. Tại đây, diễn ra nhiều hoạt động vui chơi hấp dẫn và thú vị. Ngoài ra, Hồ Tiên Sa còn phát triển những ngôi nhà nổi để khách du lịch có thể ngắm nhìn cảnh vật hay đơn giản là chỉ để tận hưởng cảm giác khác lạ. Các bạn trẻ có thể tới đây để thỏa mình vào không gian thiên nhiên, được chiêm ngưỡng những công trình với kiến trúc độc đáo như: Cầu Thuận Thiên, lầu Uyên Ương…
', 250000, N'hồ tiên sa', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (5, N'Cách trung tâm Hà Nội chỉ khoảng 50km về phía Tây, bao phủ bởi núi rừng và thiên nhiên hùng vĩ của dãy núi Ba Vì, khu du lịch Khoang Xanh Suối Tiên chính là một trong những điểm đến không thể bỏ qua trong những ngày hè đang đến rất gần. Khoang Xanh- Suối Tiên được xây dựng trong lòng dãy núi Ba Vì, bao quanh bởi bốn bề rừng núi và cảnh sắc thiên nhiên phong phú vô cùng. Khu du lịch Khoang Xanh Suối Tiên có diện tích hơn 200 ha, cấu trúc sinh thái đa dạng với suối – thác – rừng xen kẽ cùng với những góc vui chơi khám phá quy mô được xây dựng. Với lợi thế địa hình, khí hậu ở khu du lịch Khoang Xanh Suối Tiên mát mẻ quanh năm, đây là thiên đường nghỉ dưỡng và vui chơi có nhiều điểm thú vị và hấp dẫn với nhóm bạn trẻ, gia đình, đặc biệt thân thiện với các em nhỏ. Ở đây còn có nhiều tiện nghi như khách sạn , khu nghỉ dưỡng chăm sóc sức khỏe, phòng hội trường… Những ngày hè nóng bức là thời điểm lý tưởng nhất để ghé thăm địa điểm này bới nguồn nước dồi dào tạo nên vẻ đẹp hùng vĩ lôi cuốn của những ngọn thác, nước mát và không khí trong lành cũng sẽ xua tan cái nắng oi bức của mùa hè thành phố.', 250000, N'khoang xanh suối tiên', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (6, N'Thung lũng bản Xôi là địa điểm du lịch thuộc huyện Ba Vì, nằm cách trung tâm Hà Nội khoảng 45km. Du khách có thể lựa chọn đi theo quốc lộ 32 hoặc đại lộ Thăng Long. Trên đường có rất nhiều hệ thống bảng chỉ dẫn đường đi rất dễ đi, cứ đi theo biển chỉ dẫn là bạn có thể đến đây một cách dễ dàng. Bản Xôi nằm ở Yên Bài, Ba Vì, cách trung tâm Hà Nội tầm 50km về hướng Tây. Đây là một vùng diện tích rộng lớn với nhiều đồi núi với không khí trong lành, mát mẻ quanh năm. Khu du lịch bản Xôi được quy hoạch kiến trúc để thành khu nghỉ dưỡng, dã ngoại tổng thể. Từ khu 1 đến khu 6 chủ yếu là dành cho nghỉ dưỡng cao cấp hoặc biệt thự tư nhân, khách sạn, nhà hàng cùng với hệ thống dịch vụ chất lượng cao như spa, xông hơi, golf,…. Khu 9 – Khu dã ngoại bản Xôi hay được biết tới là Thung lũng bản Xôi là nơi được đưa vào khai thác trong thời gian trở lại đây. Đây là vùng cỏ với diện tích rộng lớn nằm ngay cạnh hồ nước, khu trung tâm nằm ở giữa thung lũng cùng với các hệ thống nhà sàn, khu vui chơi, nhà hàng ăn uống. Đặc điểm nổi bật nhất của khu du lịch bản Xôi đó chính là địa điểm tổ chức teambuilding và địa điểm dã ngoại gần Hà Nội. Thêm vào đó, khu dã ngoại còn được thiết kế để tổ chức nhiều hoạt động hấp dẫn: đốt lửa trại, tiệc nướng ngoài trời…. Cùng với những khu vực được thiết kế để chụp ảnh và checkin siêu hấp dẫn.', 250000, N'thung lũng bản xôi', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (7, N'Bạn thích được gần gũi thiên nhiên, chạy trốn mệt mỏi tất bật, không gian tươi mát của style Family Resort sẽ là điểm lí tưởng để bạn tìm đến với bình yên và thanh thản. Hãy thư giãn và hít thở bầu không khí trong lành và thả lỏng cơ thể bạn nhé, mọi chuyện còn lại chúng tôi sẽ giúp bạn.
Giữa cái nắng oi ả của những ngày hè, được hòa mình vào thiên nhiên giữa đất trời cây cỏ bình yên là mong ước của nhiều người. Chỉ cách trung tâm Hà Nội 35km, chưa đầy 40 phút đi ô tô hoặc 1 tiếng đi xe máy, du khách đã có thể trải nghiệm những ngày nghỉ cuối tuần thư giãn tại Ba Vì.
Family Resort nằm êm ả dưới tán cây xanh gần khu rừng thông thơ mộng, từ Family Resort bạn có thể tới thăm thành cổ Sơn Tây, Đền Và, Chùa Mía, Chùa Thầy, các khu du lịch suối Hai, K9 đền thờ Bác Hồ, cây đa nghìn tuổi và đền thờ thánh Tản Viên, sau đó trở về khu nghỉ dưỡng Family Resort cùng chúng tôi thưởng thức những món ăn đặc sản núi rừng, sử dụng các dịch vụ nghỉ dưỡng như xông hơi hương đồng nội, câu cá, bi-a, bi lắc, bóng bàn, cầu lông, tennis và các trò chơi dân gian..v..v và cùng nhìn ra cánh đồng bậc thang bao la dưới chân núi Ba Vì uy linh sẽ mang đến cho bạn một kỳ nghỉ cuối tuần ấm cúng, thân thiết cùng với gia đình, người thân hay bạn bè.
Khu Homestay Mit HillTop Ba Vì
', 300000, N'family resort ba vì', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (8, N'Mít Hilltop Ba Vì chính thức đi vào hoạt động. Khu nghỉ dưỡng này điển hình cho nghỉ dưỡng gia đình, hòa mình vào cuộc sống giản dị, yên bình. Cách Hà Nội 50 km về phía Tây, địa chỉ Mit Hilltop Ba Vì thuộc xóm Mái, xã Yên Bài, huyện Ba Vì, thành phố Hà Nội. Khu biệt thự rộng 1910 m2, với thiết kế đơn giản, gắn liền với việc phục vụ gia đình.
Từ cổng đi vào, quý khách sẽ cảm thấy thoải mái với khu vui chơi và bể bơi gần nhà, đặc biệt vườn hoa hồng trông bên lối đi. Mỗi khu nghỉ dưỡng đều có khu vui chơi và nghỉ dưỡng. Mít Hilltop có các trò chơi như bilac, xúc cát,… giúp các bé thoải mái vui chơi.
Mít Hilltop Homesrtay được thiết kế trong container đặt lưng chừng đồi, nhỏ nhỏ xinh xinh khép kín. Nhà có hệ thống cách nhiệt, hệ thống phun nước làm mát không khí nên du khách không cần lo ở trong container sẽ bị nóng. Nhà có view hướng ra thung lũng, du khách vừa có thể ngồi thư giãn tại hafh lang rộng, vừa có thể ngắm mây trời và vùng đất Ba Vì rộng lớn.
Homestay Ba Vì được thiết kế 2 khu cách nhau 30m, cây cối xanh mát quanh năm. Khu nhà lớn có 3 phòng ngủ khép kín cùng 1 phòng khách rộng cho du khách thoải mái giao lưu và hát karaoke. Khu vườn có diện tích lớp, du khách thỏa sức vui chơi khám phá, thực hiện những hoạt động như cắm trại, chơi team building, đốt lửa trại và có cả nướng BBQ. Ben cạnh đó nhà còn có một bể bơi lớn.
', 350000, N'khu homestay mit hilltop ba vì', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (9, N'Khu du lịch sinh thái Long Việt là một điểm đến cực lý tưởng cho các bạn trong mỗi dịp cuối tuần, một nơi mang đậm chất làng quê Bắc Bộ. Nếu như bạn muốn tìm một điểm đến xanh mát, gần nội thành thì đây chính là một sự lựa chọn hoàn hảo nhất.
Khu du lịch sinh thái là nơi hiếm hoi có cảnh sắc sông nước, núi non, rừng già hòa quyện và gắn bó với nhau. Bên cạnh đó khu du lịch sinh thái còn có một hệ thống thực vật phong phú, quý hiếm và trưng bày vô vàn các hiện vật theo từng vùng miền nhưng quy hoạch tổng thể tái hiện kiến trúc của vùng Bắc Bộ.
Khu du lịch sinh thái Long Việt có hệ thống biệt thự, nhà sàn để đáp ứng mọi nhu cầu của du khách từ nghỉ dưỡng cho tới các hoạt động tập thể. Bạn yên tâm nhé vì phòng khách sạn luôn đầy đủ tiện nghi sẽ mang tới cho bạn một trải nghiệm cực thú vị mà bạn không thể nào dễ dàng có được. Giá thuê phòng trong khu sinh thái cũng khá rẻ bạn nên liên hệ đặt phòng trước để tránh nhỡ kế hoạch nhé. Bên cạnh dịch vụ lưu trú thì dịch vụ ăn uống của khu du lịch sinh thái Long Việt cũng là một điểm cộng lớn để thu hút du khách đến và quay lại nơi này. Tại khu du lịch có phục vụ cỗ mẹt địa phương mang đậm chất của đồng bằng Bắc Bộ với cá kho, thịt kho, rau muống xào…
', 250000, N'khu du lịch sinh thái long việt', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (10, N'Cách Hà Nội hơn một giờ đi bằng ô tô, nằm giữa quần thể các khu du lịch của vùng đất Ba Vì - Hà Nội, Có một địa chỉ du lịch được nhiều người biết đến bởi không gian văn hóa Việt cổ và dịch vụ Spa, tắm khoáng với nguồn nước khoáng nóng chảy ra từ núi Thánh Tản Viên, đó là khu du lịch sinh thái độc đáo với cái tên Tản Đà Spa Resort, có nghĩa là khu du lịch nghỉ dưỡng ở miền núi Tản sông Đà. Tản Đà Spa Resort được thiết kế theo lối không gian mở, yên bình và hiền hoà. Tất cả các hệ thống phòng nghỉ, nhà hàng, dịch vụ đều nằm dọc theo hồ Suối Bơn xanh trong, bát ngát, một điển hình mới cho sự giao thoa giữa trời và đất, nơi đây thiên nhiên thật gần gũi với con người. Hệ thống 85 Lối đi lát gạch đỏ mộc mạc dẫn du khách vào Xóm Nhà Cổ, với những ngôi nhà có niên đại hàng trăm năm tuổi; được đặt tên theo lối dân dã: nhà Địa Chủ, Phú Ông, Trung Nông, Thầy Đồ xưa kia tại các vùng đất cổ Nam Định, Bắc Ninh . Mỗi cụm nhà được thiết kế theo lối kiến trúc giản dị, mái ngói xưa, cột trụ gỗ, vỉ kèo…, với đầy đủ cả nhà chính , nhà ngang, sân vườn, hàng rào dâm bụt…. khiến cho du khách đi nghỉ dưỡng mà cảm giác như được về quê. Phòng nghỉ được chia thành 2 khu : Xóm Nhà Cổ và Xóm Lạc Việt, phòng biệt thự . Các phòng nghỉ đều hướng ra hồ Suối Bơn và khu vườn xanh mướt và đều có chung một phong cách : bên ngoài mộc mạc đơn sơ , bên trong có đầy đủ trang thiết bị hiện đại.', 250000, N'tản đà spa resort', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (11, N'Làng cổ Đường Lâm nằm cách 44 km về phía tây của trung tâm thành phố Hà Nội, thuộc thị xã Sơn Tây, Hà Nội. Tuy thường được gọi là làng cổ nhưng thực ra Đường Lâm từ xưa gồm 9 làng thuộc tổng Cam Giá Thịnh huyện Phúc Thọ trấn Sơn Tây, trong đó 5 làng Mông Phụ, Đông Sàng, Cam Thịnh, Đoài Giáp và Cam Lâm liền kề nhau. Các làng này gắn kết với nhau thành một thể thống nhất với phong tục, tập quán và tín ngưỡng hàng ngàn năm nay không hề thay đổi. Nơi đây còn được gọi là đất hai vua do là nơi sinh ra Phùng Hưng và Ngô Quyền. Làng cổ Đường Lâm hiện nay có tổng cộng 956 ngôi nhà cổ, những ngôi nhà nằm ẩn mình và phủ màu rêu phong trên bề mặt những viên ngói mũi ri, tạo nên hình thù võng lưng, gắn liền với nhà sàn, vườn, bếp, nhà ngang, giếng nước, chuồng trại, cây rơm, ao. Nằm trong trung tâm của quần thể di tích làng cổ Đường Lâm, còn có di tích Nhà thờ Thám Hoa Giang Văn Minh. Đền thờ Phùng Hưng (Bố Cái Đại Vương) và đền, lăng Ngô Quyền. Bạn có thể đi du lịch làng cổ Đường Lâm bất cứ thời điểm nào trong năm. Tuy nhiên, mùa lễ hội và mùa lúa chín là thời điểm thích hợp hơn cả cho một chuyến du hí. Đi tới đây vào mùa lúa chín tháng 9 hoặc tháng 5 bạn sẽ được chiêm ngưỡng thêm những con đường làng rát đầy rơm khô, ngửi mùi hương của rơm rất thú vị.', 100000, N'làng cổ đường lâm', 2)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (12, N'Vùng đất Ba Vì được thiên nhiên ban tặng một bức tranh sơn thủy hữu tình với hệ sinh thái phong phú và thảm thực vật đa dang.Tại nơi đó có một khu du lịch là sự giao hòa của thiên nhiên hoang sơ cùng với kiến trúc và dịch vụ hiên đại đó chính là Bella resort Ba Vì - một điểm đến lý tưởng để quý khách hàng có những trải nghiệm khó quên. Cách trung tâm Hà Nội 35km, chưa đầy 40 phút đi ô tô và 1 tiếng đi xe máy,du khách đã thoát khỏi khung cảnh đông đúc trật trội của thành phố để đắm mình vào bức tranh thiên nhiên “tựa sơn hướng thủy” của Bella resort.Khu du lịch nằm êm ả dưới tán cây xanh ngay gần khu rừng thông đầy thơ mộng, gần với cây đa nghìn tuổi và đến thờ thánh Tản Viên,nhìn ra cánh đồng bậc thang bao la dưới chân núi Ba Vì uy linh sẽ mang đến cho các quý khách hàng một kỳ nghỉ ấm cúng bên người thân,bạn bè và gia đình của mình. Không chỉ được hòa mình vào thiên nhiên xanh tươi và đẹp nên thơ,quý khách hàng còn được trải nghiệm các dịch vụ vô cùng cao cấp và ấn tượng. Bella resort có hệ thống phòng nghỉ có thể đáp ứng được số lượng lên tới hơn 200 du khách/ngày.Các phòng nghỉ tiện nghi,hiện đại,sang trọng và rộng rãi mang phong cách “điền viên thôn dẫn dã” hay Châu Âu đẳng cấp và quý phái sẵn sàng phục vụ các khách hàng khó tính nhất.', 300000, N'khu du lịch bella resort', 0)
INSERT [dbo].[Product_HE161098] ([Product_id], [Review_product], [Price], [Product_name], [Category_id]) VALUES (13, N'Huy quan hoa', 1000000, N'huyhue', 1)
GO
INSERT [dbo].[Role_HE161098] ([Role_id], [Role_name]) VALUES (0, N'admin')
INSERT [dbo].[Role_HE161098] ([Role_id], [Role_name]) VALUES (1, N'user')
GO
ALTER TABLE [dbo].[Account_HE161098]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role_HE161098] ([Role_id])
GO
ALTER TABLE [dbo].[image2_HE161098]  WITH CHECK ADD FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product_HE161098] ([Product_id])
GO
ALTER TABLE [dbo].[Order_detail_HE161098]  WITH CHECK ADD FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order_HE161098] ([Order_id])
GO
ALTER TABLE [dbo].[Order_detail_HE161098]  WITH CHECK ADD FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product_HE161098] ([Product_id])
GO
ALTER TABLE [dbo].[Order_HE161098]  WITH CHECK ADD FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account_HE161098] ([Account_id])
GO
ALTER TABLE [dbo].[Product_HE161098]  WITH CHECK ADD FOREIGN KEY([Category_id])
REFERENCES [dbo].[category_HE161098] ([Category_id])
GO
USE [master]
GO
ALTER DATABASE [Project_PRJ] SET  READ_WRITE 
GO
