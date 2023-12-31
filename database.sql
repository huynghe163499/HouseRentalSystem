USE [master]
GO
/****** Object:  Database [SWP391_HouseRentalSystem]    Script Date: 8/3/2023 9:39:49 PM ******/
CREATE DATABASE [SWP391_HouseRentalSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_HouseRentalSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391_HouseRentalSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_HouseRentalSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391_HouseRentalSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_HouseRentalSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET QUERY_STORE = OFF
GO
USE [SWP391_HouseRentalSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nchar](16) NOT NULL,
	[Phone_Number] [nchar](10) NULL,
	[Role_ID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Secure_Question_ID] [int] NULL,
	[Secure_Answer_ID] [int] NULL,
	[Profile_Picture] [text] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Role]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Account_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Posts]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Poster_ID] [int] NOT NULL,
	[Post_Time] [date] NULL,
	[Topic] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Like_Count] [int] NOT NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_Blog_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite_Blogs]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite_Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite_House]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite_House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
 CONSTRAINT [PK_Favourite_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
	[Feedback_Date] [date] NULL,
	[Content] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_System]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_System](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_ID] [int] NULL,
	[Content] [nvarchar](1000) NULL,
	[AddDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_House]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_House](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
 CONSTRAINT [PK_History_House] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_Owner_ID] [int] NULL,
	[Category_ID] [int] NOT NULL,
	[Price] [float] NULL,
	[District_ID] [int] NOT NULL,
	[Full_Address] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Rating] [float] NOT NULL,
	[Added_Date] [date] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Category]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Category](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Details]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Number_Of_Bedrooms] [int] NOT NULL,
	[Number_Of_Bathrooms] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[Pool] [int] NOT NULL,
	[House_Direction_ID] [int] NULL,
 CONSTRAINT [PK_House_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Directions]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Directions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Direction] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Directions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Images]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_House_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Ratings]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Voter_ID] [int] NOT NULL,
	[Rating] [float] NOT NULL,
 CONSTRAINT [PK_House_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[Sent_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[Deleted_By_Sender] [bit] NOT NULL,
	[Deleted_By_Receiver] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Comments]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post_ID] [int] NOT NULL,
	[Commenter_ID] [int] NOT NULL,
	[Comment_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Post_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Answers]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Secure_Question_ID] [int] NOT NULL,
	[Answer] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Secure_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Questions]    Script Date: 8/3/2023 9:39:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Secure_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (1, N'akkk', 1, N'123', N'a', N'111             ', N'55555     ', 2, 1, 2, 1, N'blogtest.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (2, N'hung', 1, N'hn', N'aaac@', N'123             ', N'03355588  ', 2, 1, 2, 1, N'blogtest2.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (5, N'Kelvin Tran', 1, N'hn', N'humgtmhe163748@fpt.edu.vn', N'113             ', N'7897999   ', 3, 1, 2, 3, N'blogtest.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (6, N'Olong Tea', 1, N'hn', N'abcc@gmail.com', N'123             ', N'31241212  ', 3, 1, 1, 14, N'blogtest2.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (10, N'admin', 0, N'adfaf', N'admin', N'admin           ', N'123123123 ', 1, 1, 1, 14, NULL)
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (11, N'Hieu', 0, N'Yên Bái', N'TrungHieu@gmail.com', N'123456789       ', N'0983615476', 3, 1, 2, 1, N'hieu.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (12, N'Huy', 1, N'Hà Nội ', N'huy123@gmail.com', N'123456          ', N'0879110205', 3, 1, 2, 1, N'blogtest2.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (17, N'Nguyễn Trung Hiếu', 1, N'Yên Bái', N'trunghieu2224@gmail.com', N'123456          ', N'0938615476', 2, 0, 2, 1, NULL)
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (19, N'Huy', 1, N'Hà Nội', N'huynghe163499@fpt.edu.vn', N'H123456@        ', N'0879110205', 2, 1, 2, 1, N'blog.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (20, N'Huy', 1, N'Ninh Bình', N'huyq2k2@gmail.com', N'H123456@        ', N'0879110203', 2, 0, 2, 1, N'blogtest2.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (21, N'Nam', 1, N'Nam Định', N'huynguyen91202@gmail.com', N'H123456@        ', N'0358592640', 2, 1, 3, 29, N'blogtest2.jpg')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (1, N'Admin')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (2, N'Viewer')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (3, N'Owner')
GO
SET IDENTITY_INSERT [dbo].[Blog_Posts] ON 

INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (28, 12, CAST(N'2023-07-19' AS Date), N'Cách sử dụng công nghệ AI trong việc phân loại tin tức', N'Bài viết trình bày cách sử dụng trí tuệ nhân tạo để tự động phân loại tin tức theo chủ đề và nội dung phong phú', 0, N'banner1.png')
INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (29, 5, CAST(N'2023-06-01' AS Date), N'Những xu hướng thú vị trong ngành công nghệ đang thay đổi cách chúng ta đọc tin tức"', N'Bài viết tập trung vào các xu hướng mới trong lĩnh vực công nghệ đang thay đổi cách chúng ta tiếp cận và tiêu thụ tin tức.', 0, N'listing-03.jpg')
INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (33, 5, CAST(N'2023-06-01' AS Date), N'Các ứng dụng di động phổ biến giúp bạn cập nhật tin tức hàng ngày', N'Bài viết giới thiệu và đánh giá các ứng dụng di động phổ biến mà người dùng có thể sử dụng để cập nhật tin tức hàng ngày.', 0, N'listing-04.jpg')
INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (35, 5, CAST(N'2023-06-01' AS Date), N'Những bí quyết để viết bài blog tin tức hấp dẫn', N' Bài viết chia sẻ các bí quyết và nguyên tắc để viết bài blog tin tức thu hút độc giả và tăng cường sự tương tác.', 0, N'listing-05.jpg')
INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (36, 5, CAST(N'2023-07-17' AS Date), N'Cuộc Sống Hằng Ngày Tại Phòng Trọ', N'Bộ mô tả này sẽ khám phá cuộc sống hằng ngày của những người sống trong phòng trọ. Phòng trọ thường là nơi tạm thời hoặc lựa chọn kinh tế phổ biến cho những người không có điều kiện thuê nhà riêng hoặc sinh viên xa nhà. Những câu chuyện và cảm nhận trong bộ mô tả này sẽ tập trung vào cuộc sống, những khó khăn, niềm vui, và sự gắn bó giữa những người cùng chia sẻ một không gian chung.', 0, N'banner1.png')
SET IDENTITY_INSERT [dbo].[Blog_Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [District]) VALUES (1, N'Ba Đình')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (2, N'Bắc Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (3, N'Cầu Giấy')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (4, N'Đống Đa')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (5, N'Gia Lâm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (6, N'Hà Đông')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (7, N'Hai Bà Trưng')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (8, N'Hoài Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (9, N'Hoàn Kiếm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (10, N'Hoàng Mai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (11, N'Long Biên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (12, N'Mê Linh')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (13, N'Mỹ Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (14, N'Nam Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (15, N'Phúc Thọ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (16, N'Phú Xuyên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (17, N'Quốc Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (18, N'Sóc Sơn')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (19, N'Sơn Tây')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (20, N'Tây Hồ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (21, N'Thạch Thất')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (22, N'Thanh Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (23, N'Thanh Trì')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (24, N'Thanh Xuân')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (25, N'Thường Tín')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (26, N'Ứng Hoà')
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
SET IDENTITY_INSERT [dbo].[Favourite_Blogs] ON 

INSERT [dbo].[Favourite_Blogs] ([Id], [BlogId], [UserID]) VALUES (25, 28, 5)
INSERT [dbo].[Favourite_Blogs] ([Id], [BlogId], [UserID]) VALUES (29, 28, 12)
SET IDENTITY_INSERT [dbo].[Favourite_Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Favourite_House] ON 

INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (70, 17, 1)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (143, 11, 12)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (148, 11, 2)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (150, 11, 1)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (152, 12, 1)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (153, 12, 2)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (154, 12, 4)
INSERT [dbo].[Favourite_House] ([Id], [User_ID], [House_ID]) VALUES (156, 19, 1)
SET IDENTITY_INSERT [dbo].[Favourite_House] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (17, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'aloadsada')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (19, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'ascjasckaskc')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (20, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'hhh')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (34, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'afsfafas')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (35, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'afsfafas')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (36, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'afsfafas')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (37, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'afsfafas')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (38, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'afsfafas')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (39, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'fqsafaf')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (40, 12, 5, 2, CAST(N'2023-07-22' AS Date), N'kien')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (49, 12, 5, 11, CAST(N'2023-07-22' AS Date), N'chào')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (53, 11, 5, 1, CAST(N'2023-07-23' AS Date), N'hiếu ăn cứt')
INSERT [dbo].[Feedback] ([Id], [Sender_ID], [Receiver_ID], [House_ID], [Feedback_Date], [Content]) VALUES (59, 11, 5, 1, CAST(N'2023-07-23' AS Date), N'huy ăn ')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback_System] ON 

INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (1, 1, N'Nhà tôi đang sống đã xây dựng cách đây 7 năm, phục vụ phần lớn cho nhu cầu của các con trai tôi. Tuy nhiên, giờ chúng đã làm việc định cư ở xa nên không còn sống chung. Thấy nhà còn trống tận 4 phòng lớn nên hồi tháng 11 năm ngoái, vợ chồng chúng tôi quyết định cho thuê để nhà được vui vẻ hơn. Ông nhà tôi được bạn bè giới thiệu nên cũng thử đăng tin lên website đâu tầm 2 ngày thì đã có 3 cháu sinh viên đến hỏi thăm và dọn vào ở. Sau đó 3 ngày thì một chàng thanh niên đang đi làm tại Bình Thạnh cũng lại thuê nốt căn cuối. Vợ chồng tôi cũng vui mừng vì chưa đầy 1 tuần mà đã cho thuê xong toàn bộ phòng trong nhà. Nói không phải khen, chứ bạn bè tôi đăng căn nào lên đây cũng tìm được khách tốt tới thuê.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (2, 1, N'Vào 2 năm trước, khi bị ảnh hưởng bởi đại dịch covid-19, nhiều người bị ảnh hưởng của dịch và phải trả phòng về quê, nhà trọ của tôi đã bị trả trọ gần hết, cả một nhà trọ chỉ còn 1 - 2 phòng thuê, vào thời điểm thành phố mở của trở lại, người lao động đổ về trở lại thành phố rất đông, rất nhiều người tìm kiếm phòng trọ, tuy nhiên nhà trọ của tôi lại không được quảng cáo nên rất ít người biết đến và thuê, số lượng chỉ tăng lên 2 - 3 phòng. May mắn sau khi lướt tìm kiếm thông tin cho thuê phòng trọ tôi đã tìm thấy website cho phép đăng tin cho thuê phòng trọ một cách nhanh chóng, và rất đơn giản, đặc biệt có đội ngũ nhân viên chăm sóc khách hàng rất nhiệt tình, tư vấn, hỗ trợ tôi đăng tin cho thuê nhà trọ và chỉ trong 2 tuần tôi đã cho thuê được toàn bộ phòng của nhà trọ của mình. Thực sự rất thích và vui, tôi đánh giá rất cao website cho thuê phòng trọ này.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (3, 2, N'Sở hữu căn hộ hơn 30 phòng trọ tại Dĩ An, Bình Dương. Năm trước do ảnh hưởng của dịch Covid-19, nên khách thuê trọ đã trả phòng và về quê để tránh dịch. Nên phòng trọ của tôi chỉ còn lại vài phòng có khách thuê ở lại. Cho đến năm nay, dịch covid-19 mới ổn định, nhưng không có khách trở lại thuê phòng, nên tôi phải gấp rút đi tìm khách thuê. Nhờ vậy, tôi được người bạn giới thiệu, tôi mới biết đến website, trang đăng tin phòng trọ miễn phí. Thấy vậy, tôi vào và đăng ký, đăng một vài tin, thật không ngờ, 5 ngày sau đã có người gọi đến thuê phòng trọ. Tôi đánh giá cao về tính hiệu quả và sử dụng của website này.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (4, 2, N'Tôi được một đứa cháu là sinh viên ở HN giới thiệu cho trang web. Nó bảo nếu bác có phòng trọ trống, chưa cho thuê được thì chụp hình đăng lên web, sẽ nhanh chóng có người thuê tìm đến. Tôi cũng lần mò dùng thử, kết quả làm tôi khá bất ngờ. Cụ thể, từ ngày biết đến và sử dụng dịch vụ đăng tin cho thuê phòng trọ trên trang, các căn trọ của tôi luôn được lấp đầy. Những lúc có người chuyển đi, chỉ cần tôi đăng tin vài ngày là lại có khách thuê mới tìm đến, thật sự rất hiệu quả. Chỉ với một ít tiền phí đăng tin đã giúp tôi nhanh chóng cho thuê được vài căn trọ thì tôi thấy mức giá này là rất rẻ, vô cùng hợp lý. Tôi thực sự ấn tượng với website này.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (12, 5, N'Sở hữu khu đất với hơn 15 căn phòng trọ tại Mễ Trì, Nam Từ Liêm. Trong thời buổi công nghệ phát triển, hầu hết người có nhu cầu thuê nhà, căn hộ đều thực hiện tìm kiếm qua hình thức trực tuyến. Điều này khiến tôi vô cùng lo lắng bởi bản thân không am hiểu nhiều về Internet, về sau được người chị giới thiệu cho website cho phép đăng tải thông tin cho thuê cực kỳ đơn giản và tôi đã thử. Việc đăng hình ảnh, thông tin phòng trọ lên trang web đã giúp khu trọ tôi có nhiều sinh viên người lao động tới thuê. Tôi đánh giá rất cao website và hình thức quảng cáo này.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (89, 12, N'dịch vụ cho thuê phòng trọ rất tốt, chất lượng phòng trọ tuyệt vời', CAST(N'2023-07-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (66, 17, N'Hiếu', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (14, 6, N'Trong thời đại số hóa, website đã trở thành một công cụ quảng cáo và tiếp thị cực kỳ hiệu quả. Tôi đã thử sử dụng một trang web cho phép đăng tải thông tin cho thuê căn phòng trọ một cách dễ dàng và thuận tiện. Không chỉ tiết kiệm thời gian và công sức, việc sử dụng website cho thuê căn phòng trọ còn giúp tôi mở rộng khả năng tiếp cận đến một lượng lớn khách hàng. Tôi có thể tiếp cận được những người đang tìm kiếm thông tin trực tuyến và thu hút họ tới thuê căn phòng trọ của tôi.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (13, 5, N'Sở hữu khu đất với 16 căn phòng trọ cao cấp, anh chia sẻ việc tìm kiếm người thuê phòng trọ là vấn đề hết sức nan giải trong thời điểm giao mùa sinh viên. May mắn thay, tôi được người quen giới thiệu cho website. Sau một thời gian sử dụng, tôi đã thu được hiệu quả bất ngờ từ trang web đăng tin này. Tôi không còn phải chật vật tìm kiếm nơi quảng cáo cho thuê phòng trọ nữa. Hệ thống tin đăng với giao diện dễ nhìn và chỉ với những thao tác đơn giản, tôi có thể đăng tải thông tin cũng như hình ảnh dãy trọ của mình lên website dễ dàng. Bên cạnh đó, website còn cung cấp các gói đăng tin dịch vụ từ miễn phí cho đến gói VIP giá cả phải chăng tuỳ thuộc vào nhu cầu của mỗi người. Tôi đánh giá đây là một website chất lượng và đáng tin cậy dành cho những ai muốn đăng tin cho thuê phòng trọ một cách hiệu quả.', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Feedback_System] ([ID], [Account_ID], [Content], [AddDate]) VALUES (88, 11, N'Huy ngu ăn cức aaaa chiu a', CAST(N'2023-07-23' AS Date))
SET IDENTITY_INSERT [dbo].[Feedback_System] OFF
GO
SET IDENTITY_INSERT [dbo].[History_House] ON 

INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (70, 17, 1)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (75, 11, 1)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (76, 11, 85)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (77, 11, 83)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (78, 11, 82)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (79, 11, 16)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (80, 11, 2)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (81, 5, 85)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (82, 5, 82)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (83, 5, 2)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (84, 5, 1)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (91, 12, 2)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (92, 12, 5)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (93, 19, 1)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (94, 5, 4)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (95, 5, 83)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (96, 12, 85)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (97, 12, 83)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (98, 12, 82)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (99, 12, 60)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (100, 12, 86)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (101, 11, 86)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (102, 11, 71)
INSERT [dbo].[History_House] ([ID], [Account_ID], [House_ID]) VALUES (103, 12, 87)
SET IDENTITY_INSERT [dbo].[History_House] OFF
GO
SET IDENTITY_INSERT [dbo].[House] ON 

INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (1, 5, 1, 2000000, 1, N'Ngõ 1', N'Tìm người ở ghép q1 máy lạnh đầy đủ tiện nghi............................................1tr2 1 thôi.....', 5, CAST(N'2023-05-30' AS Date), N'Phòng cho thuê FULL Nội Thất, giờ giấc tự do')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (2, 5, 2, 3000000, 2, N'Ngõ 2', N'Phòng đẹp như ảnh', 3.5, CAST(N'2023-05-30' AS Date), N'Phòng cho thuê FULL Nội Thất, giờ giấc tự do ngay công viên. Siêu ưu đãi mùa dịch')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (4, 5, 3, 4000000, 3, N'Ngõ 3', N'Phòng đẩy đủ tiện nghi', 5, CAST(N'2023-05-30' AS Date), N'Biệt thự sang - xịn - mịn')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (5, 5, 4, 5000000, 4, N'Ngõ 4', N'Phòng vip', 5, CAST(N'2023-05-30' AS Date), N'Phòng dọn vào ở luôn ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (7, 5, 1, 1300000, 18, N'Khu vực sân bay Quốc Tế Nội Bài', N'Phòng được thiết kế phục vụ sinh hoạt cho gia đình nhỏ làm việc gần hoặc trong khu vực sân bay Nội Bài.', 3.5, CAST(N'2023-05-30' AS Date), N'Cho thuê phòng trọ khu vực sân bay Quốc Tế Nội Bài')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (10, 5, 1, 800000, 18, N'Gần sân bay Nội Bài tại Đồng Quốc, Phú Minh, Sóc Sơn', N'Diện tích phòng: 15m2, khép kín, sạch sẽ.', 4.5, CAST(N'2023-05-30' AS Date), N'Cho thuê phòng trọ gần sân bay Nội Bài tại Đồng Quốc')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (11, 5, 1, 300000, 18, N'Huyện Sóc Sơn, Hà Nội', N'Phòng có giường, tủ lạnh hoặc ti vi, máy giặt., giao thông thuận tiên', 3, CAST(N'2023-05-30' AS Date), N'Cho thuê phòng trọ giá rẻ khu vực Sóc Sơn')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (12, 5, 1, 5500000, 14, N'Mễ Trì, Nam Từ Liêm', N'Phòng khép kín, có đầy đủ tiện nghi, phù hợp cho sinh viên và người đi làm', 4.5, CAST(N'2023-05-30' AS Date), N'Phòng trọ giá rẻ full đồ cho sinh viên và người đi làm')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (14, 5, 1, 4000000, 14, N'Tây Mỗ, Nam Từ Liêm', N'Phòng trọ rộng rãi với không gian mở', 4, CAST(N'2023-05-30' AS Date), N'Phòng trọ hiện đại và tiện nghi, giá sinh viên')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (15, 5, 1, 3300000, 14, N'Mễ Trì Thượng, Nam Từ Liêm', N'Phòng trọ được trang bị đầy đủ nội thất cơ bản', 5, CAST(N'2023-05-30' AS Date), N'Thuê trọ - Giải pháp tiết kiệm chi phí ở thành phố')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (16, 5, 2, 4150000, 14, N'Lương Thế Vinh', N'Phòng trọ có tường sơn sạch sẽ và trần cao', 3.5, CAST(N'2023-05-30' AS Date), N'Chọn ngay căn hộ trọ hợp túi tiền, không lo áp lực tài chính')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (17, 5, 1, 1200000, 7, N'Khu BKK Lê Thanh Nghị', N'Phòng trọ có cửa sổ lớn, mang lại không khí trong lành', 4.5, CAST(N'2023-05-30' AS Date), N'Trải nghiệm cuộc sống thuê trọ - Tự do và tiện lợi')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (18, 5, 1, 3850000, 7, N'Gần Times City', N'Phòng trọ được bố trí gọn gàng và hợp lý', 4, CAST(N'2023-05-30' AS Date), N'Tìm kiếm căn hộ trọ chất lượng, ở lâu dài không cần lo')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (19, 5, 1, 1500000, 7, N'52 Phố Vọng gần Bạch Mai, BKK', N'Phòng trọ có bàn làm việc tiện nghi để làm việc hoặc học tập', 4.5, CAST(N'2023-05-30' AS Date), N'Thuê trọ giữa lòng thành phố, sống tiện nghi và tiết kiệm')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (20, 5, 1, 3500000, 6, N'Mậu Lương, Mipec Kiến Hưng', N'Phòng trọ có quạt trần, giúp thông thoáng không khí', 3.5, CAST(N'2023-05-30' AS Date), N'Cho thuê trọ giá rẻ, tiện nghi đáng sống')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (21, 5, 1, 2600000, 6, N'256 Thanh Bình, Nguyễn Văn Lộc', N'Phòng trọ có máy lạnh hoặc điều hòa nhiệt độ', 3, CAST(N'2023-05-30' AS Date), N'Thuê trọ - Hưởng trọn niềm vui của cuộc sống đô thị')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (22, 5, 1, 2000000, 12, N'Cổng KCN Quang Ninh', N'Phòng trọ nhỏ gọn nhưng tiện nghi đầy đủ', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ - Lựa chọn lý tưởng cho cuộc sống đô thị')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (23, 5, 1, 4300000, 20, N'Ngõ 2 Xuân Đỉnh', N'Phòng trọ rộng rãi với không gian mở', 3.5, CAST(N'2023-06-04' AS Date), N'Tận hưởng không gian riêng tư tại phòng trọ tiện nghi')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (24, 5, 1, 5250000, 20, N'472 Lạc Long Quân ', N'Phòng trọ có kiến trúc hiện đại và trang thiết bị tiện ích', 3.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Những giấc ngủ êm đềm trong không gian tiết kiệm')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (25, 5, 1, 1200000, 20, N'An Dương Vương', N'Phòng trọ sạch sẽ và được bày trí gọn gàng', 3.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ - Sống một cuộc sống thoải mái và không lo về giá cả')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (26, 5, 1, 7500000, 20, N'Tô Ngọc Vân ', N'Phòng trọ thoáng đãng với cửa sổ lớn mang đến ánh sáng tự nhiên', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá hợp lý: Nơi bạn gọi là nhà mà không cần phải vắt óc về tài chính')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (27, 5, 1, 7000000, 20, N'Nhật Chiêu', N'Phòng trọ yên tĩnh và tạo cảm giác riêng tư', 3.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Giải pháp hợp lý cho sinh viên và người đi làm')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (28, 5, 1, 4500000, 4, N'29 Ngõ Hàng Cháo đối diện sân vận động', N'Phòng trọ có giường êm ái và chăn mềm mại', 4.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ: Khoảng không riêng tư mà không cần lo lắng về túi tiền')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (29, 5, 1, 5500000, 4, N'180 Nguyễn Lương Bằng', N'Phòng trọ được trang bị tủ quần áo và kệ để sắp xếp đồ dùng cá nhân', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ - Hòa mình vào cuộc sống đô thị mà không cần lo ngại về chi phí')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (30, 5, 1, 3500000, 4, N'Gần các trường đại học: Mỹ Thuật Công Nghiệp, Văn Hóa, Nhạc Viện, Viện Văn Hóa, Học Việ Ngân Hàng, Thủy Lợi.', N'Phòng trọ có bàn làm việc tiện nghi và ghế thoải mái', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Nơi bạn gọi là nhà với mức giá phải chăng')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (31, 5, 1, 1650000, 5, N'Kí túc xá khu vực Học Viện Nông Nghiệp', N'Phòng trọ có tiện ích Internet nhanh chóng để làm việc hoặc giải trí', 3.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ: Tận hưởng cuộc sống đô thị với ngân sách hợp lý')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (32, 5, 1, 1450000, 5, N' Cửu Việt 2, Trâu Quỳ, Gia Lâm, Hà Nội', N'Phòng trọ có tủ lạnh và kệ để lưu trữ thực phẩm', 3, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Chìa khóa cho ngôi nhà mới mà không cần phải vay mượn')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (33, 5, 1, 2000000, 5, N'Thiên Đức, Thị trấn Yên Viên, Huyện Gia Lâm, Hà Nội', N'Phòng trọ có bếp nhỏ để tự nấu ăn và khu vực ăn uống', 3.5, CAST(N'2023-06-04' AS Date), N'Căn hộ trọ giá rẻ: Khám phá một không gian tiết kiệm mà không cần hy sinh tiện nghi')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (34, 5, 1, 1000000, 8, N'Đường Lai Xá, Kim Chung', N'Phòng trọ có phòng tắm riêng với máy nước nóng', 3.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Sự thoải mái và sự tiết kiệm trong một góc nhỏ của thành phố')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (35, 5, 1, 1100000, 8, N'Vân Côn, An Khánh, Hoài Đức', N'Phòng trọ có quạt trần và máy điều hòa giúp duy trì môi trường thoáng mát', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Bước vào không gian ấm cúng mà không cần đầu tư quá nhiều')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (36, 5, 1, 1900000, 8, N'Xã Vân Canh, Huyện Hoài Đức, Hà Nội', N'Phòng trọ có truyền hình cáp hoặc TV để giải trí', 5, CAST(N'2023-06-04' AS Date), N'Căn hộ trọ giá rẻ - Lựa chọn thông minh cho cuộc sống tiện nghi mà không gây áp lực tài chính')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (37, 5, 1, 4000000, 10, N'ccmn Gốc Đề, Hoang Văn Thu, Hoàng Mai, Hà Nội', N'Phòng trọ có máy giặt và sấy để tiện lợi trong việc giặt giũ', 5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Tạo dựng tổ ấm mà không cần phải chi trả quá cao')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (38, 5, 1, 1200000, 10, N'809 Giải Phóng, Giáp Bát', N'Phòng trọ có kệ sách và ghế đọc để thư giãn', 4.5, CAST(N'2023-06-04' AS Date), N'Căn hộ trọ giá rẻ: Giải pháp tiết kiệm cho ngôi nhà lý tưởng của bạn')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (39, 5, 1, 1200000, 10, N'Giáp Bát, Phường Giáp Bát, Quận Hoàng Mai, Hà Nội', N'Phòng trọ có gương lớn và bàn trang điểm cho sự chuẩn bị hàng ngày', 3.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ, không gian thoải mái - Cho thuê trong tầm tay')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (40, 5, 1, 2500000, 10, N'Nguyễn Duy Trinh, Phường Hoàng Liệt, Quận Hoàng Mai, Hà Nội', N'Phòng trọ có khu vực treo phơi quần áo và giày dép', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ: Sống độc lập và khám phá thế giới')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (41, 5, 1, 2500000, 11, N'Ngõ 9 Đường Ô Cách, Phường Đức Giang, Quận Long Biên', N'Phòng trọ có khu vực sofa thoải mái để tiếp khách hoặc thư giãn', 3.5, CAST(N'2023-06-04' AS Date), N'Căn hộ trọ cho thuê: Sự kết hợp hoàn hảo giữa tiện nghi và chi phí hợp lý')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (42, 5, 1, 2300000, 11, N'nhà 8 ngõ 1 Phố Chu Huy Mân, Phường Phúc Đồng', N'Phòng trọ có không gian riêng biệt để rèn luyện và tập thể dục', 4.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá mềm - Giải pháp tiết kiệm cho nhu cầu ở')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (43, 5, 1, 2900000, 11, N'Đường Nguyễn Văn Cừ, Phường Gia Thụy', N'Phòng trọ có bàn làm việc phù hợp cho người làm việc từ xa', 2.5, CAST(N'2023-06-04' AS Date), N'Cho thuê phòng trọ giá rẻ: Khám phá không gian tiện nghi')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (44, 5, 1, 2200000, 21, N'Xã Thạch Hòa, Huyện Thạch Thất, Hà Nội', N'Phòng trọ có không gian sân vườn nhỏ để tận hưởng không khí trong lành', 3.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ: Lựa chọn tuyệt vời cho sinh viên và người đi làm với ngân sách eo hẹp')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (45, 5, 1, 3800000, 23, N'87 Yên Xá, Xã Tân Triều, Huyện Thanh Trì, Hà Nội', N'Phòng trọ có chỗ đậu xe riêng hoặc khu vực để xe an toàn', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá mềm: Sống độc lập và khám phá thế giới mà không gây tốn kém')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (46, 5, 1, 3800000, 23, N'46 Tân Triều, Xã Tân Triều, Huyện Thanh Trì, Hà Nội', N'Phòng trọ có bảo vệ và hệ thống an ninh để đảm bảo an toàn', 3.5, CAST(N'2023-06-04' AS Date), N'Căn hộ trọ giá rẻ: Sự lựa chọn hợp lý cho cuộc sống độc thân không tốn quá nhiều tiền')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (47, 5, 1, 4200000, 23, N'69 Đường Cầu Bươu, Xã Tả Thanh Oai, Huyện Thanh Trì, Hà Nội', N'Phòng trọ có tiện ích gần đó như siêu thị, nhà hàng hoặc công viên', 2.5, CAST(N'2023-06-04' AS Date), N'Phòng trọ giá rẻ - Sự lựa chọn thông minh cho người thuê tiết kiệm')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (48, 5, 1, 3000000, 24, N'Số nhà 06 ngõ 256 Phố Nguyễn Lân Đường Trường Chinh, Quận Thanh Xuân, Hà Nội', N'Phòng trọ được bố trí tối ưu hóa không gian, mang lại sự thoải mái và tiện nghi', 5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá mềm: Tìm ngôi nhà phù hợp với ngân sách của bạn')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (49, 5, 1, 1200000, 24, N' Ngõ 192 Đường Kim Giang, Phường Kim Giang, Quận Thanh Xuân, Hà Nội', N'Phòng trọ có không gian xanh, cây cảnh và sân vườn, tạo cảm giác gần gũi với thiên nhiên', 4.5, CAST(N'2023-06-04' AS Date), N'Thuê phòng trọ giá rẻ: Bước vào cuộc sống mới mà không cần phải lo về giá cả')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (50, 5, 2, 3500000, 1, N'Phố Kim Mã, Phường Kim Mã, Quận Ba Đình, Hà Nội', N'Nhà còn 2 phòng cho thuê tại kim mã- núi trúc, giao thông tiện ích vô cùng thuận lợi

cách Lotte, Metropolis 5p đi xe máy, xung quanh đầy đủ tiện ích trường học liên cấp, siêu thị, chợ, bệnh viện

', 3.5, CAST(N'2023-06-06' AS Date), N'Phòng Mới! Tại Núi Trúc- Kim Mã 32m2 Mặt Phố Tiện Nghi Hiện Đại.')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (51, 5, 2, 2900000, 1, N'15 Yên Ninh, Phường Quán Thánh, Quận Ba Đình, Hà Nội', N'Hiện tại còn 2 phòng trống.

Diện tích: 15-20m2.

Nhà riêng, không chung chủ, có sân thoáng. Tầng 2 có bàn nước Chill.', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê phòng 2tr9 tại phố Yên Ninh - Ba Đình')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (52, 5, 2, 1300000, 2, N'Tăng Thiết Giáp, Phường Cổ Nhuế 1, Quận Bắc Từ Liêm, Hà Nội', N'CỰC PHẨM HOMESTAY chỉ để giá SINH VIÊN 1,3 triệu/người FULL ĐỒ', 4.5, CAST(N'2023-06-06' AS Date), N'CỰC PHẨM HOMESTAY chỉ để giá SINH VIÊN 1,3 triệu/người FULL ĐỒ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (53, 5, 2, 3350000, 2, N' Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Hà Nội', N'"TingTong - Hệ thống căn hộ, phòng trọ toàn quốc', 4.5, CAST(N'2023-06-06' AS Date), N'TINGTONG CƠ SỞ 30 CÓ PHÒNG GÁC XÉP ĐỦ ĐỒ CƠ BẢN NGÕ 401 XUÂN ĐỈNH')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (54, 5, 2, 4300000, 3, N'Số 14, ngõ 165/40 Đường Dương Quảng Hàm, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', N'Cho thuê phòng kiểu CCMN rộng 35m2 khép kín', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê phòng kiểu chung cư mini khép kín 35m2 full đồ, đường Dương Quảng Hàm, Quan Hoa, Cầu Giấy.')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (55, 5, 2, 2000000, 3, N'17 Cầu Giấy, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', N'Phòng 20m2, gồm một phòng ngủ to.

+ Phòng đẹp, có chỗ phơi đồ và để xe riêng.

+ Điện có công tơ riêng,

+ Ra vào khóa, giờ giấc tự do, không chung chủ. + Cách đường Cầu Giấy và trường đại hoc sư phạm 150m, gần nhiều điểm xe bus,', 4, CAST(N'2023-06-06' AS Date), N'Cho thuê phòng 20 m2 - Cầu Giấy')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (56, 5, 2, 4000000, 6, N'Xa La, Phường Phúc La, Quận Hà Đông, Hà Nội', N'Địa điểm: Gần Viện 103, Bệnh Viện K Tân Triều, thuận tiện đi lại, yên tĩnh, an ninh tốt.

Nội thất: Điều hòa, bình nóng lạnh, tủ lạnh, máy giặt riêng, giường, tủ quần áo, bàn ăn, bàn trang điểm, tủ giày, bàn bếp, bồn rửa, quạt trần,...', 4, CAST(N'2023-06-06' AS Date), N'CCMN chính chủ - XaLa - Hà Đông - Đầy đủ nội thất')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (58, 5, 2, 4250000, 6, N'Đường Chu Văn An, Phường Văn Quán, Quận Hà Đông, Hà Nội', N'NHÀ 8 TẦNG - NGAY MẶT ĐƯỜNG - CHIẾN THẮNG HÀ ĐÔNG

Phòng như ảnh, full thiết bị

Dân trí cao, thuận tiện sinh hoạt, đường to, bãi đỗ ô tô gần nhà thuận tiện đi lại.

Phù hợp các bạn học Kiến Trúc, Bưu Chính, Hà Nội, Giao Thông Vận Tải,...', 4, CAST(N'2023-06-06' AS Date), N'CHUNG CƯ MINI FULL ĐỒ GÁC XÉP CUỐI ĐƯỜNG CHIẾN THẮNG')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (59, 5, 2, 13800000, 7, N'Phố Huế, Phường Bùi Thị Xuân, Quận Hai Bà Trưng, Hà Nội', N'CCMN 1N1K tại ngõ Huế- phố Huế, gần Lò Đúc, Trần Khát Chân

Địa chỉ: 55 ngõ Huế giá chỉ từ 1xxxxx', 4, CAST(N'2023-06-06' AS Date), N'CCMN 1k1n tại Hai bà trưng full đồ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (60, 5, 2, 2500000, 8, N'35 422, Xã Vân Canh, Huyện Hoài Đức, Hà Nội', N'Phòng khép kín 22m2; mới xây năm 2020, cách chợ Vân Canh 13m; an ninh tốt, chủ nhà dễ chịu, đối điện Vinmart và Meatdeli', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê căn hộ mini 22m2- gần chợ Vân Canh, Hoài Đức')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (62, 5, 2, 6000000, 9, N'8b- ngõ 22 hàng vôi Phố Hàng Vôi, Phường Lý Thái Tổ, Quận Hoàn Kiếm, Hà Nội', N'Cozy Studio tại 8B ngõ 22 Hàng Vôi giá từ 6,2 triệu', 4.5, CAST(N'2023-06-06' AS Date), N'Cozy Studio tại 8B ngõ 22 Hàng Vôi giá từ 6,2 triệu')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (63, 5, 2, 5700000, 10, N'61 ngõ 521 Đường Trương Định, Phường Thịnh Liệt, Quận Hoàng Mai, Hà Nội', N'Tặng khách 1tr khi kí hđ trước

Địa chỉ : Ngách 61 Ngõ 521 Trương Định.

️ Thiết kế : studio gáp xép', 4.5, CAST(N'2023-06-06' AS Date), N'Cho Thuê CCMN/CHDV từ 4tr Tại Hà Nội')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (65, 5, 4, 5000000, 11, N'54 Đường Nguyễn Văn Cừ, Phường Bồ Đề, Quận Long Biên, Hà Nội', N'Cho thuê căn hộ 1 ngủ 1 khách,1WC, 1 Bếp

Nội thất cơ bản, điều hòa, binh nóng lạnh

Điện nước độc lập, tính theo công tơ,', 4, CAST(N'2023-06-06' AS Date), N'Cho thuê căn hộ khép kín 1 ngủ 1 khách')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (66, 12, 4, 3200000, 11, N' số 26 ngõ 81 phố trạm, phường Long biên, quận Long biên Phố Trạm, Phường Long Biên, Quận Long Biên, Hà Nội', N'Cho thuê nhà số 26 ngõ 81 phố trạm, phường Long biên, quận Long biên, Hà Nội, diện tích 40 m2 điện nước riêng, có nóng lạnh, nhà sạch đẹp.', 4, CAST(N'2023-06-06' AS Date), N'Cho thuê nhà số 26 ngõ 81 phố trạm, phường Long biên, quận Long biên')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (67, 12, 4, 5500000, 14, N' Đường Mễ Trì Thượng, Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', N'Chính chủ cho thuê căn hộ CCMN tại số 12, ngõ 89 Mễ Trì Thượng, Mễ Trì, Nam Từ Liêm, Hà Nội (ngay trường cấp 1 Mễ Trì, cuối ngõ 4 Đồng Me đi vào khoảng 30m) diện tích 40m2, 1 ngủ 1 khách, bếp ngăn riêng biệt với phòng ngủ không lo ám mùi.', 4.5, CAST(N'2023-06-06' AS Date), N'CHÍNH CHỦ CHO THUÊ CĂN HỘ CHUNG CƯ MINI 1N1K FULL ĐỒ TẠI MỄ TRÌ, NAM TỪ LIÊM, HÀ NỘI')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (68, 12, 4, 5000000, 14, N'Đường Tây Mỗ, Phường Tây Mỗ, Quận Nam Từ Liêm, Hà Nội', N'- Căn hộ 32m2 thích hợp ở 1 mình hoặc 2 người.

- Cửa sổ rộng, view thoáng

- Khách lịch sự, thiện chí có thể thương lượng.

- Vào được ngay. Vinhomes Smart City sẵn nhiều tiện ích.', 4.5, CAST(N'2023-06-06' AS Date), N'Căn hộ mới nhận nhà cần cho thuê studio 5 triệu vin smart')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (69, 12, 4, 13000000, 20, N'Đường Tô Ngọc Vân, Phường Quảng An, Quận Tây Hồ, Hà Nội', N'Cho thuê căn hộ 2 phòng ngủ mặt phố Tô Ngọc Vân 75m2

- Căn hộ được thiết kế gồm 2 phòng ngủ, 1 phòng khách, 1 phòng bếp riêng biệt, nhà mới, đầy đủ nội thất.

Diện tích 75m² rộng rãi thoáng mát. Phòng nào cũng đầy đủ ánh sáng tự nhiên', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê căn hộ 2 phòng ngủ mặt phố Tô Ngọc Vân')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (70, 12, 4, 9000000, 20, N'Đường Lạc Long Quân, Phường Nhật Tân, Quận Tây Hồ, Hà Nội', N'Cho thuê căn hộ 2 phòng ngủ phố Trịnh Công Sơn 70m2

Căn hộ được thiết kế 2 phòng ngủ, 1 phòng khách, 1 phòng bếp, đầy đủ nội thất.', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê căn hộ 2 phòng ngủ phố Trịnh Công Sơn 70m2')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (71, 12, 4, 6500000, 20, N'Tô Ngọc Vân, Phường Quảng An, Quận Tây Hồ, Hà Nội', N'Chính chủ cho thuê căn hộ 1K 1N full đồ tại Tô Ngọc Vân, Tây Hồ.

Đầy đủ nội thất, điều hòa, tủ lạnh, máy giặt máy sấy, thang máy, nồi niêu bát đũa... Chỉ việc mang quần áo tới ở.', 4, CAST(N'2023-06-06' AS Date), N'Chính chủ cho thuê căn hộ 1K 1N full đồ tại Tô Ngọc Vân, Tây Hồ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (72, 12, 4, 5000000, 22, N'HH03A Khu đô thị Thanh Hà Đường số 21B, Xã Cự Khê, Huyện Thanh Oai, Hà Nội', N'Diện tích 66m2, có 2 phòng ngủ 2 nhà vệ sinh. Gần cầu vượt đường sắt đường trục phía nam, gần bệnh viện 103, chợ Hà Đông...', 4, CAST(N'2023-06-06' AS Date), N'Cho thuê chung cư giá tốt khu đô thị Thanh Hà (khu mới)')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (74, 12, 4, 3800000, 23, N'Yên Xá, Xã Tân Triều, Huyện Thanh Trì, Hà Nội', N'Nhà đẹp full nội thất - Chỉ việc mang vali vào ở.

- Phòng đẹp, sạch sẽ, ban công thoáng mát gần các trường ĐH: CNGTVT, kiến trúc, bưu chính, ĐH Hà Nội,...', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê CCMN full đồ tại Yên Xá,Tân Triều,Thanh Trì,Hà Nội
')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (75, 12, 4, 4000000, 23, N'87/43 Yên Xá, Xã Tân Triều, Huyện Thanh Trì, Hà Nội', N'CHUNG CƯ MINI BAN CÔNG SIÊU THOÁNG', 4, CAST(N'2023-06-06' AS Date), N'CCMN BAN CÔNG thoáng tại YÊN XÁ, Tân Triều')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (76, 12, 4, 4800000, 24, N'36 Lê Văn Lương, Phường Nhân Chính, Quận Thanh Xuân, Hà Nội', N'Cho thuê phòng Studio, CCMN nhà mới tinh, full đồ, cực sang xịn mịn tại số 20C/144 Quan Nhân hoặc đi Lê Văn Lương vào 300m', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê căn CCMN 2 không gian ngủ Full đồ, có gác, cửa sổ đi lối ngã tư Lê Văn Lương - Hoàng Đạo Thúy or 144 Quan Nhân')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (77, 12, 4, 6000000, 24, N' Nhà số 33B, ngõ 33 Nhân Hòa, Phường Nhân Chính, Quận Thanh Xuân, Hà Nội', N'CMN MỚI XÂY # 1N1K TẠI Nhà số 33B ngõ 33 Nhân Hòa, Thanh Xuân, Hà Nội. Loại: STUDIO; 1N1K. Tài chính 5tr3 – 7tr - gần thương mại- sư phạm- quốc gia - thuận tiện di chuyển', 4.5, CAST(N'2023-06-06' AS Date), N'Loại studio hoặc 1n1k khu vực Nhân Hòa. quận Thanh Xuân. giá Hottttttt')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (78, 12, 4, 3750000, 24, N'Phường Kim Giang, Quận Thanh Xuân, Hà Nội', N'Tingtong cơ sở 772 Kim Giang studio full nội thất như ảnh, gian bếp riêng.

Tòa nhà TingTong cơ sở 52 trống phòng đơn và 1 khách 1 ngủ.', 4.5, CAST(N'2023-06-06' AS Date), N'TINGTONG - CHO THUÊ STUDIO VÀ 1K1N FULL ĐỒ - THANH XUÂN KIM GIANG')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (79, 12, 3, 10000000, 26, N'Đầu Xóm 2, Đinh Xuyên Quốc lộ 21, Xã Hòa Nam, Huyện Ứng Hòa, Hà Nội', N'Khu vực có mặt bằng nằm ở vị trí đón đầu luồng dân cư

- Có mật độ dân cư đông, nhiều người đi qua lại và nằm trên trục đường QL 21B, gần chợ, gần ngã 4.', 4.5, CAST(N'2023-06-06' AS Date), N'Cho thuê Biệt Thự giá rẻ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (82, 12, 1, 780000, 14, N'Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', N'                                                                                                                                                                                                                                                                                                  NULLPHÒNG SIÊU RỘNG - SIÊU THOÁNG - DỌN VÀO Ở NGAY
                                            
                                            
                                            
                                            
                                            ', 3.5, CAST(N'2023-06-07' AS Date), N'TINGTONG CƠ SỞ 23 CÓ PHÒNG FULL NỘI THẤT CƠ BẢN NGAY HỒ MỄ TRÌ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (83, 12, 1, 2500000, 21, N'78 thôn 4 Thạch Hòa Thạch Thất Hà Nội', N'Nhà tớ có phòng mới tinh ở Bình Yên, ngay mặt đường lớn<br/>- Cách trường 1,5km, đi chỉ 5p là tới<br/>- Diện tích 20-25m2 full đồ chỉ việc xách vali về ở<br/>- Gần chợ, điểm bus trước mặt <br/>- Riêng chủ, giờ giấc thoải mái nha<br/>- Có khoá vân tay, máy giặt mỗi tầng 1 chiếc, cam an ninh,...<br/>Giá 2tr3 -2tr5', 0, CAST(N'2023-07-19' AS Date), N'Cho thuê phòng trọ giá rẻ')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (85, 12, 1, 5600000, 3, N'Ngõ 165, Đường Cầu Giấy, Phường Mai Dịch, Cầu Giấy, Hà Nội', N'Cho thuê phòng 1K1N tại gần bưu điện Cầu Giấy.<br/>30/4 có phòng.<br/>Địa chỉ: Ngõ 165 Cầu Giấy, Hà Nội.<br/><br/>Tiện ích: Full đồ như hình, thang may, (máy giặt dùng chung).<br/><br/>Điện: 3k5/1 số.<br/>Nước: 100k/1 người.<br/>Dịch vụ chung 150k/1 người(máy giặt chung, thang máy, vệ sinh.<br/>Mạng: 100k/ phòng.', 3, CAST(N'2023-07-21' AS Date), N'Cho thuê phòng 1K1N tại gần bưu điện Cầu Giấy 5.6 triệu/tháng')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (86, 12, 1, 3300000, 8, N'An Khánh, Hoài Đức', N'Chính chủ cho thuê chung cư mini xây mới 7 tầng - có thang máy - phòng full đồ - có ban công siêu thoáng.<br/>--------------------<br/>Vị trí: Cổng chào Nam An Khánh, An Khánh, Hoài Đức.<br/>--------------------<br/>- Tòa nhà 7 tầng vừa xây xong, mới tinh.<br/>- Phòng 35m², khu vực bếp riêng.<br/>- Giá 3Tr3 - 3Tr8 có fix cho khách ở ngay.<br/>- Không chung chủ, ra vào tự do, có khóa vân tay, có thang máy, máy giặt chung.<br/>- Nội thất: Điều hòa, nóng lạnh, kệ bếp, bếp, vệ sinh khép kín, giường, tủ quần áo, máy giặt chung.<br/>- Nhà có thang máy, thang bộ, thoát hiểm, hệ thống phòng cháy chữa cháy.', 5, CAST(N'2023-07-26' AS Date), N'Chính chủ cho thuê chung cư mini mới xây 7 tầng có thang máy. Full đồ giá 3,3tr/tháng tại An Khánh')
INSERT [dbo].[House] ([Id], [House_Owner_ID], [Category_ID], [Price], [District_ID], [Full_Address], [Description], [Rating], [Added_Date], [Title]) VALUES (87, 12, 1, 6000000, 24, N'Ngõ 72,Nguyễn Trãi,Thanh Xuân', N'- Khóa cổng vân tay, khóa phòng thẻ từ, an ninh tốt, có bảo vệ, khu vực dân trí cao.<br/>- Ngay cạnh sát Royal City, đáp ứng mọi nhu cầu vui chơi giải trí.<br/>- 2 phút đi bộ đến ga Láng, thuận tiện đi lại.<br/>- Nội thất đầy đủ, điều hòa, máy giặt riêng, nóng lạnh, giường, đệm, tủ áo, tủ bếp trên + dưới chỉ việc xách vali đến ở.', 0, CAST(N'2023-07-26' AS Date), N'Chính chủ cho thuê 42 phòng CCMN khép kín')
SET IDENTITY_INSERT [dbo].[House] OFF
GO
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (1, N'Phòng trọ')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (2, N'Chung cư')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (3, N'Biệt thự')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (4, N'Căn hộ')
GO
SET IDENTITY_INSERT [dbo].[House_Details] ON 

INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (1, 1, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (3, 2, 2, 0, 30, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (14, 4, 2, 0, 40, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (16, 5, 2, 0, 50, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (18, 7, 1, 0, 60, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (19, 10, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (20, 11, 1, 0, 30, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (21, 12, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (23, 14, 1, 0, 30, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (24, 15, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (25, 16, 1, 0, 27, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (26, 17, 1, 0, 28, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (27, 18, 1, 0, 29, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (28, 19, 1, 0, 30, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (29, 20, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (30, 21, 1, 0, 32, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (31, 22, 1, 0, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (32, 23, 1, 0, 27, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (33, 24, 1, 0, 32, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (35, 82, 1, 0, 23, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (36, 82, 1, 0, 23, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (37, 82, 1, 0, 23, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (38, 83, 1, 1, 25, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (40, 85, 2, 1, 40, 0, 5)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (41, 60, 2, 1, 30, 0, 3)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (42, 71, 2, 1, 25, 0, 4)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (43, 86, 1, 1, 35, 0, 1)
INSERT [dbo].[House_Details] ([Id], [House_ID], [Number_Of_Bedrooms], [Number_Of_Bathrooms], [Area], [Pool], [House_Direction_ID]) VALUES (44, 87, 2, 1, 40, 0, 1)
SET IDENTITY_INSERT [dbo].[House_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[House_Directions] ON 

INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (1, N'Đông')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (2, N'Tây')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (3, N'Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (4, N'Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (5, N'Đông Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (6, N'Đông Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (7, N'Tây Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (8, N'Tây Nam')
SET IDENTITY_INSERT [dbo].[House_Directions] OFF
GO
SET IDENTITY_INSERT [dbo].[House_Images] ON 

INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (1, 16, N'img1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (2, 1, N'img5.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (3, 2, N'img3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (5, 4, N'img12.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (6, 5, N'img4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (8, 7, N'img5.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (11, 10, N'img6.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (12, 11, N'img7.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (13, 12, N'img1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (15, 14, N'img9.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (16, 15, N'img9.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (18, 82, N'banner1.png')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (19, 82, N'img3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (20, 82, N'img4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (21, 82, N'img7.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (22, 82, N'img3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (23, 83, N'img3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (25, 85, N'house1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (26, 85, N'house2.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (27, 85, N'house3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (28, 85, N'house4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (31, 60, N'house4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (35, 60, N'img6.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (36, 71, N'house3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (37, 71, N'house4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (38, 71, N'img1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (39, 86, N'hd1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (40, 86, N'hd2.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (41, 86, N'hd3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (42, 86, N'hd4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (43, 86, N'hd5.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (44, 86, N'hd6.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (45, 87, N'htm1.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (46, 87, N'htm2.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (47, 87, N'htm3.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (48, 87, N'htm4.jpg')
INSERT [dbo].[House_Images] ([Id], [House_ID], [Image]) VALUES (49, 87, N'htm5.jpg')
SET IDENTITY_INSERT [dbo].[House_Images] OFF
GO
SET IDENTITY_INSERT [dbo].[House_Ratings] ON 

INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (4, 4, 12, 2)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (6, 4, 11, 2)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (14, 85, 12, 3)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (31, 85, 11, 4)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (32, 1, 11, 5)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (39, 1, 12, 5)
INSERT [dbo].[House_Ratings] ([Id], [House_ID], [Voter_ID], [Rating]) VALUES (40, 86, 11, 5)
SET IDENTITY_INSERT [dbo].[House_Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (1, 12, 5, CAST(N'2023-06-26' AS Date), N'đfgf', 0, 1, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (2, 12, 5, CAST(N'2023-06-26' AS Date), N'dffdg', 0, 1, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (3, 12, 5, CAST(N'2023-06-26' AS Date), N'dffd', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (4, 5, 12, CAST(N'2023-07-11' AS Date), N'xin chào ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (5, 5, 12, CAST(N'2023-07-11' AS Date), N'chào b ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (6, 12, 5, CAST(N'2023-07-11' AS Date), N'chào cậu', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (7, 12, 5, CAST(N'2023-07-11' AS Date), N'chào cậu', 0, 1, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (8, 5, 12, CAST(N'2023-07-11' AS Date), N'chào ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (9, 5, 12, CAST(N'2023-07-14' AS Date), N'xin chào ', 0, 0, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (10, 12, 5, CAST(N'2023-07-19' AS Date), N'xin chào ', 0, 1, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (11, 5, 12, CAST(N'2023-07-19' AS Date), N'xin chào', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (12, 5, 12, CAST(N'2023-07-19' AS Date), N'xin chào', 0, 1, 1)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (13, 11, 5, CAST(N'2023-07-19' AS Date), N'xin chào b', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (14, 12, 5, CAST(N'2023-07-20' AS Date), N'dffd', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (15, 12, 5, CAST(N'2023-07-20' AS Date), N'chào', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (16, 12, 5, CAST(N'2023-07-20' AS Date), N'chào bạn cho mình xin ít thôn tin', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (17, 12, 5, CAST(N'2023-07-20' AS Date), N'4', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (18, 12, 5, CAST(N'2023-07-20' AS Date), N'2', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (19, 12, 5, CAST(N'2023-07-20' AS Date), N'2', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (20, 12, 5, CAST(N'2023-07-20' AS Date), N'45', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (21, 12, 5, CAST(N'2023-07-20' AS Date), N'ádasd', 0, 1, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (22, 11, 5, CAST(N'2023-07-20' AS Date), N'chào bạn cho mình xin ít thôn tin', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (23, 5, 11, CAST(N'2023-07-20' AS Date), N'xin chào nhà mình 4tr', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (24, 11, 5, CAST(N'2023-07-20' AS Date), N'nhà đắt quá', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (25, 11, 12, CAST(N'2023-07-20' AS Date), N'chào bạn cho mình xin ít thôn tin', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (26, 11, 5, CAST(N'2023-07-20' AS Date), N'chào', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (27, 11, 5, CAST(N'2023-07-20' AS Date), N'hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (28, 11, 5, CAST(N'2023-07-20' AS Date), N'hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (29, 11, 5, CAST(N'2023-07-20' AS Date), N'chào bạn cho mình xin ít thôn tin', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (30, 11, 5, CAST(N'2023-07-20' AS Date), N'2322323', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (31, 11, 5, CAST(N'2023-07-20' AS Date), N'ggg', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (32, 12, 11, CAST(N'2023-07-20' AS Date), N'xin chào ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (33, 12, 5, CAST(N'2023-07-20' AS Date), N'chàp', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (34, 12, 5, CAST(N'2023-07-20' AS Date), N'chào', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (35, 12, 5, CAST(N'2023-07-20' AS Date), N'2', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (36, 12, 5, CAST(N'2023-07-20' AS Date), N'2', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (37, 12, 5, CAST(N'2023-07-21' AS Date), N'xin chào b', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (38, 12, 5, CAST(N'2023-07-22' AS Date), N'chào cậu hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (39, 12, 5, CAST(N'2023-07-22' AS Date), N'chào cậu hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (40, 12, 5, CAST(N'2023-07-22' AS Date), N'dffd', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (41, 12, 5, CAST(N'2023-07-22' AS Date), N'dffd', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (42, 12, 5, CAST(N'2023-07-22' AS Date), N'f', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (43, 12, 5, CAST(N'2023-07-22' AS Date), N'hgghgh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (44, 12, 5, CAST(N'2023-07-22' AS Date), N'hgh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (45, 12, 5, CAST(N'2023-07-22' AS Date), N'hh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (46, 12, 5, CAST(N'2023-07-22' AS Date), N'hhh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (47, 11, 5, CAST(N'2023-07-23' AS Date), N'chào cậu hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (48, 11, 5, CAST(N'2023-07-23' AS Date), N'huy oi ngu di thoi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (49, 11, 5, CAST(N'2023-07-23' AS Date), N'chào bạn cho mình xin ít thôn tin', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (50, 11, 5, CAST(N'2023-07-23' AS Date), N'Huy oi an cuc di', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (51, 11, 5, CAST(N'2023-07-23' AS Date), N'xin chào b', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (52, 11, 5, CAST(N'2023-07-23' AS Date), N'hihhihiii', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (53, 11, 5, CAST(N'2023-07-23' AS Date), N'À lôi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (54, 11, 5, CAST(N'2023-07-23' AS Date), N'à lôi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (55, 11, 5, CAST(N'2023-07-23' AS Date), N'à lôi huy ơi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (56, 11, 5, CAST(N'2023-07-23' AS Date), N'im vn ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (57, 11, 5, CAST(N'2023-07-23' AS Date), N'hhh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (58, 11, 5, CAST(N'2023-07-23' AS Date), N'hhh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (59, 11, 5, CAST(N'2023-07-23' AS Date), N'2', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (60, 11, 12, CAST(N'2023-07-23' AS Date), N'chào cậu hello', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (61, 11, 12, CAST(N'2023-07-23' AS Date), N'hhh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (62, 11, 12, CAST(N'2023-07-23' AS Date), N'ad', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (63, 11, 12, CAST(N'2023-07-23' AS Date), N'hic', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (64, 11, 5, CAST(N'2023-07-23' AS Date), N'choi nhu tui Mỹ', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (65, 11, 5, CAST(N'2023-07-23' AS Date), N'hic', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (66, 11, 5, CAST(N'2023-07-23' AS Date), N'hic', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (67, 11, 5, CAST(N'2023-07-23' AS Date), N'khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (68, 11, 12, CAST(N'2023-07-23' AS Date), N'khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (69, 11, 5, CAST(N'2023-07-23' AS Date), N'hic', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (70, 11, 12, CAST(N'2023-07-23' AS Date), N'Khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (71, 11, 5, CAST(N'2023-07-23' AS Date), N'hic', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (72, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (73, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (74, 11, 5, CAST(N'2023-07-23' AS Date), N'ok chưa', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (75, 11, 5, CAST(N'2023-07-23' AS Date), N'sao b ơi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (76, 11, 12, CAST(N'2023-07-23' AS Date), N'à lôi', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (77, 11, 12, CAST(N'2023-07-23' AS Date), N'được chưa', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (78, 11, 5, CAST(N'2023-07-23' AS Date), N'adassa', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (79, 11, 12, CAST(N'2023-07-23' AS Date), N'khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (80, 11, 12, CAST(N'2023-07-23' AS Date), N'Khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (81, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (82, 11, 12, CAST(N'2023-07-23' AS Date), N'ok', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (83, 11, 12, CAST(N'2023-07-23' AS Date), N'ok', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (84, 11, 12, CAST(N'2023-07-23' AS Date), N'ok', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (85, 11, 5, CAST(N'2023-07-23' AS Date), N'ok', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (86, 11, 12, CAST(N'2023-07-23' AS Date), N'khó', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (87, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (88, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (89, 11, 12, CAST(N'2023-07-23' AS Date), N'', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (90, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (91, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (92, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (93, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (94, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (95, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (96, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (97, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (98, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (99, 11, 5, CAST(N'2023-07-23' AS Date), N'adsasdasd', 0, 0, 0)
GO
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (100, 11, 5, CAST(N'2023-07-23' AS Date), N'', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (101, 11, 5, CAST(N'2023-07-23' AS Date), N'adad', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (102, 11, 5, CAST(N'2023-07-23' AS Date), N'adssada', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (103, 11, 12, CAST(N'2023-07-23' AS Date), N'adsasda', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (104, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (105, 11, 5, CAST(N'2023-07-23' AS Date), N'zcxzc', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (106, 11, 12, CAST(N'2023-07-23' AS Date), N'áđá', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (107, 11, 12, CAST(N'2023-07-23' AS Date), N'áđá', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (108, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (109, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (110, 11, 12, CAST(N'2023-07-23' AS Date), N'ád', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (111, 11, 5, CAST(N'2023-07-23' AS Date), N'oke r', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (112, 11, 5, CAST(N'2023-07-23' AS Date), N'', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (113, 11, 12, CAST(N'2023-07-23' AS Date), N'5 ảnh', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (114, 11, 12, CAST(N'2023-07-23' AS Date), N'áđá', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (115, 11, 12, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (116, 11, 5, CAST(N'2023-07-23' AS Date), N'ok', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (117, 11, 5, CAST(N'2023-07-23' AS Date), N'a', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (118, 11, 5, CAST(N'2023-07-23' AS Date), N'dcuowcjasca', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (119, 11, 5, CAST(N'2023-07-23' AS Date), N'dcuowcjascasdas', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (120, 11, 5, CAST(N'2023-07-23' AS Date), N'Huy oi di ngu', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (121, 12, 5, CAST(N'2023-07-23' AS Date), N'hay', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (122, 12, 5, CAST(N'2023-07-23' AS Date), N'xin chào b', 0, 0, 0)
INSERT [dbo].[Messages] ([Id], [Sender_ID], [Receiver_ID], [Sent_Date], [Content], [Status], [Deleted_By_Sender], [Deleted_By_Receiver]) VALUES (123, 12, 5, CAST(N'2023-07-24' AS Date), N'ok', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[Post_Comments] ON 

INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (21, 28, 5, CAST(N'2023-07-18' AS Date), N'bài viết rất bổ ích')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (22, 28, 5, CAST(N'2023-07-18' AS Date), N'hay quá hay')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (26, 28, 5, CAST(N'2023-07-19' AS Date), N'hơi bị xịn sò')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (29, 28, 11, CAST(N'2023-07-23' AS Date), N'đẹp')
SET IDENTITY_INSERT [dbo].[Post_Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Secure_Answers] ON 

INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (1, 2, N'Bóng đá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (3, 2, N'Cầu lông')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (4, 2, N'Bóng chuyền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (5, 2, N'Golf')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (6, 2, N'Tennis')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (7, 2, N'Bóng rổ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (8, 2, N'Bóng bàn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (9, 2, N'Bơi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (10, 2, N'Cờ vua')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (11, 2, N'Cờ tướng')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (12, 2, N'Võ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (13, 1, N'Chơi thể thao')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (14, 1, N'Nấu ăn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (21, 1, N'Xem phim')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (22, 1, N'Chơi game')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (23, 1, N'Đi du lịch')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (24, 1, N'Đi mua sắm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (25, 1, N'Nghe nhạc')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (26, 1, N'Đọc sách')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (27, 1, N'Thiền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (28, 1, N'Viết nhật ký')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (29, 3, N'Bố')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (30, 3, N'Mẹ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (31, 3, N'Anh trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (32, 3, N'Em trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (33, 3, N'Chị gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (34, 3, N'Em gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (35, 3, N'Ông ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (36, 3, N'Bà ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (37, 3, N'Ông nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (39, 3, N'Bà nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (40, 4, N'Bún chả')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (41, 4, N'Bánh cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (42, 4, N'Cơm bụi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (43, 4, N'Bún cá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (44, 4, N'Cơm tấm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (46, 4, N'Bún đậu')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (47, 4, N'Gỏi cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (48, 4, N'Cơm rang')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (49, 4, N'Chả lá lốt')
SET IDENTITY_INSERT [dbo].[Secure_Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Secure_Questions] ON 

INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (1, N'Sở thích của bạn là gì?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (2, N'Bạn thích môn thể thao nào?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (3, N'Người trong nhà bạn thích nhất là ai?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (4, N'Bạn thích món gì nhất?')
SET IDENTITY_INSERT [dbo].[Secure_Questions] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Account_Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Answers] FOREIGN KEY([Secure_Answer_ID])
REFERENCES [dbo].[Secure_Answers] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Answers]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Questions]
GO
ALTER TABLE [dbo].[Blog_Posts]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Posts_Account] FOREIGN KEY([Poster_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Blog_Posts] CHECK CONSTRAINT [FK_Blog_Posts_Account]
GO
ALTER TABLE [dbo].[Favourite_Blogs]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteBlog_Blog_Posts] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog_Posts] ([Id])
GO
ALTER TABLE [dbo].[Favourite_Blogs] CHECK CONSTRAINT [FK_FavoriteBlog_Blog_Posts]
GO
ALTER TABLE [dbo].[Favourite_Blogs]  WITH CHECK ADD  CONSTRAINT [FK_FavoritePosts_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Favourite_Blogs] CHECK CONSTRAINT [FK_FavoritePosts_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_Account] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_House]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Receiver] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Receiver]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Sender] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Sender]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_House]
GO
ALTER TABLE [dbo].[Feedback_System]  WITH CHECK ADD  CONSTRAINT [FK_Feebback_System_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback_System] CHECK CONSTRAINT [FK_Feebback_System_Account]
GO
ALTER TABLE [dbo].[History_House]  WITH CHECK ADD  CONSTRAINT [FK_AccountHouse_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[History_House] CHECK CONSTRAINT [FK_AccountHouse_Account]
GO
ALTER TABLE [dbo].[History_House]  WITH CHECK ADD  CONSTRAINT [FK_AccountHouse_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History_House] CHECK CONSTRAINT [FK_AccountHouse_House]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Account] FOREIGN KEY([House_Owner_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Account]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Districts] FOREIGN KEY([District_ID])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Districts]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_House_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[House_Category] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_House_Category]
GO
ALTER TABLE [dbo].[House_Details]  WITH CHECK ADD  CONSTRAINT [FK_House_Details_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[House_Details] CHECK CONSTRAINT [FK_House_Details_House]
GO
ALTER TABLE [dbo].[House_Details]  WITH CHECK ADD  CONSTRAINT [FK_House_Details_House_Directions] FOREIGN KEY([House_Direction_ID])
REFERENCES [dbo].[House_Directions] ([Id])
GO
ALTER TABLE [dbo].[House_Details] CHECK CONSTRAINT [FK_House_Details_House_Directions]
GO
ALTER TABLE [dbo].[House_Images]  WITH CHECK ADD  CONSTRAINT [FK_House_Images_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[House_Images] CHECK CONSTRAINT [FK_House_Images_House]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_Account] FOREIGN KEY([Voter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_Account]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_House]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account1] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account1]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Account3] FOREIGN KEY([Commenter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Account3]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Blog_Posts] FOREIGN KEY([Post_ID])
REFERENCES [dbo].[Blog_Posts] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Blog_Posts]
GO
ALTER TABLE [dbo].[Secure_Answers]  WITH CHECK ADD  CONSTRAINT [FK_Secure_Answers_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Secure_Answers] CHECK CONSTRAINT [FK_Secure_Answers_Secure_Questions]
GO
USE [master]
GO
ALTER DATABASE [SWP391_HouseRentalSystem] SET  READ_WRITE 
GO
