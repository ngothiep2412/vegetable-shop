USE [master]
GO
/****** Object:  Database [VegetableShop]    Script Date: 11/03/2022 8:13:56 CH ******/
CREATE DATABASE [VegetableShop]
GO
USE [VegetableShop]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[detailID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NULL,
	[productID] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[orderDate] [date] NULL,
	[shippingID] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[imageUrl] [nvarchar](255) NULL,
	[categoryID] [int] NULL,
	[importDate] [date] NULL,
	[usingDate] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShipping]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShipping](
	[shippingID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[shippingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 11/03/2022 8:13:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[email] [nvarchar](255) NOT NULL,
	[fullName] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[roleID] [int] NULL,
	[address] [nvarchar](255) NULL,
	[birthday] [date] NULL,
	[phone] [nvarchar](255) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES (1, N'Rau củ quả', 1)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES (2, N'Trái cây tươi', 1)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES (3, N'Các loại hạt', 1)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES (4, N'Thực phẩm phơi sấy', 1)
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (1, 1, 1, 30, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (2, 1, 2, 12.5, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (3, 2, 1, 30, 2, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (4, 2, 11, 39, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (5, 3, 1, 30, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (6, 3, 2, 12.5, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (7, 4, 9, 150, 20, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (8, 6, 4, 25, 17, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (9, 6, 3, 22.5, 18, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (10, 6, 1, 30, 2, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (14, 10, 1, 30, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (15, 11, 1, 2.5, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (16, 12, 1, 2.5, 1, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (17, 14, 22, 2.5, 4, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (18, 14, 21, 4.2, 5, 1)
INSERT [dbo].[tblOrderDetail] ([detailID], [orderID], [productID], [price], [quantity], [status]) VALUES (19, 14, 23, 10, 2, 1)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrders] ON 

INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (1, N'thanhtung@gmail.com', 42.5, N'Ship C?n Th?n', NULL, 1, 0)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (2, N'ngothiep2412@gmail.com', 99, N'Ship Cẩn Thận', CAST(N'2022-03-08' AS Date), 2, 0)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (3, N'ngothiep2412@gmail.com', 42.5, N'', CAST(N'2022-03-08' AS Date), 3, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (4, N'ngothiep2412@gmail.com', 3000, N'', CAST(N'2022-03-08' AS Date), 4, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (6, N'thanhtung@gmail.com', 890, N'Ship cẩn thận ', CAST(N'2022-03-09' AS Date), 6, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (10, N'thanhtung@gmail.com', 30, N'', CAST(N'2022-03-09' AS Date), 7, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (11, N'thanhtung@gmail.com', 2.5, N'Nhớ cẩn thận, hàng dễ vỡ :3', CAST(N'2022-03-09' AS Date), 8, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (12, N'quocsy2511@gmail.com', 2.5, N'', CAST(N'2022-03-10' AS Date), 9, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (13, N'thanhtung@gmail.com', 0, N'', CAST(N'2022-03-10' AS Date), 10, 1)
INSERT [dbo].[tblOrders] ([orderID], [email], [totalPrice], [note], [orderDate], [shippingID], [status]) VALUES (14, N'thanhtung@gmail.com', 51, N'Giao an toàn.', CAST(N'2022-03-10' AS Date), 11, 1)
SET IDENTITY_INSERT [dbo].[tblOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (1, N'Dưa leo baby Nhật hữu cơ Đà Lạt 1', 19, 2.5, N'Dưa leo Nhật quả dài ăn rất ngon, ngọt và giòn với lớp vỏ xanh mướt. Được trồng trong nhà kính theo phương pháp hữu cơ, thân thiện với môi trường.', N'https://anhoafood.com/wp-content/uploads/2018/08/dua-leo-baby-nhat-huu-co-da-lat-5-300x300.jpg', 1, CAST(N'2022-03-10' AS Date), CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (2, N'Bắp Mỹ ngọt hữu cơ Đà Lạt', 19, 12.5, N'Ngô ngọt hay ngô đường, bắp ngọt, bắp đường; là giống ngô có hàm lượng đường cao.', N'https://anhoafood.com/wp-content/uploads/2020/11/bap-my-huuco-dalat-8-300x300.jpg', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (3, N'Bí nhật già Đà Lạt', 15, 22.5, N'Bí đỏ là nhà vô địch về hàm lượng sắt, giàu vitamin, muối khoáng cũng như các axít hữu cơ.', N'https://anhoafood.com/wp-content/uploads/2018/08/binhat-pumpkinjapan-anhoafood-23-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (4, N'Bông cải xanh hữu cơ Đà Lạt', 50, 25, N'Bông cải xanh được biết đến là một loại rau ngon và bổ, chứa nhiều chất dinh dưỡng.', N'https://anhoafood.com/wp-content/uploads/2020/11/bong-cai-xanh-suplo-xanh-huucodalat-anhoafood-5-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (5, N'Cà chua Picota Đà Lạt', 24, 39, N'Cà chua Picota  là giống cà chua chịu nhiệt, trái nhỏ, tròn, có màu xanh và khi chín chuyển thành màu đỏ đều rất đẹp, vị ngọt hơn các loại cà chua khác.', N'https://anhoafood.com/wp-content/uploads/2018/08/c%C3%A0-chua-Picota-%C4%90%C3%A0-L%E1%BA%A1t-300x300.jpg', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-05-01' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (6, N'Carot baby hữu cơ Đà Lạt', 20, 40, N'Thanh nhiệt, giải độc cơ thể. Tăng khả năng miễn dịch Phòng ngừa bệnh tim. Hỗ trợ tiêu hóa. Ngăn ngừa ung thư.', N'https://anhoafood.com/wp-content/uploads/2020/11/Organic-Baby-Carrot-carot-baby-huuco-anhoafood-1-300x300.png', 1, CAST(N'2022-03-01' AS Date), CAST(N'2021-03-08' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (7, N'Chanh không hạt Đà lạt', 10, 25, N'Thanh nhiệt, chế biến món ăn hoặc dùng trực tiếp', N'https://anhoafood.com/wp-content/uploads/2020/11/chanh-khonghat-da-lat-anhoafood-3-300x300.jpg', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (8, N'Bơ hữu cơ 034 Đà Lạt', 20, 44.9, N'Bơ 034 có độ dẻo và béo nhất trong các loại bơ nên phù hợp để chế biến rất nhiều món như: Salad bơ, bơ dầm, sinh tố bơ, kem bơ, nhân bánh.', N'https://anhoafood.com/wp-content/uploads/2020/11/BO-0340HUUCO-ANHOAFOOD-6-300x300.jpg', 2, CAST(N'2022-03-01' AS Date), CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (9, N'Dâu tây Pháp tươi cỡ lớn', 16, 150, N'Dâu tây Pháp tươi cỡ lớn  được tuyển chọn từ vùng trồng Đà Lạt, được trồng theo phương pháp organic, đảm bảo an toàn, không hóa chất, không chất bảo quản.', N'https://anhoafood.com/wp-content/uploads/2018/08/dautayphap-anhoafood-1-300x300.jpg', 2, CAST(N'2022-03-09' AS Date), CAST(N'2022-04-08' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (10, N'Bông cải xanh hữu cơ Đà Lạt', 17, 25, N'Bông cải xanh được biết đến là một loại rau ngon và bổ, chứa nhiều chất dinh dưỡng.', N'https://anhoafood.com/wp-content/uploads/2020/11/bong-cai-xanh-suplo-xanh-huucodalat-anhoafood-5-300x300.jpg', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (11, N'Cải thảo hữu cơ Đà Lạt', 25, 1.2, N'Cải thảo có vị ngọt, tính mát. Cải thảo nấu chín chứa nhiều vitamin A, C, K, B2, B6, calcium, sắt, mangan, folat, cũng như nhiều thành phần hoạt chất có ảnh hưởng tốt đối với sức khỏe.', N'https://anhoafood.com/wp-content/uploads/2020/11/rau-cai-thao-huuco-dalat-anhoafood-2-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (12, N'Carot baby hữu cơ Đà Lạt', 20, 40, N'Thanh nhiệt, giải độc cơ thể. Tăng khả năng miễn dịch Phòng ngừa bệnh tim. Hỗ trợ tiêu hóa. Ngăn ngừa ung thư.', N'https://anhoafood.com/wp-content/uploads/2020/11/Organic-Baby-Carrot-carot-baby-huuco-anhoafood-1-300x300.png', 1, CAST(N'2022-03-01' AS Date), CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (16, N'Bí ngòi vàng Đà Lạt', 16, 2.2, N'Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', N'https://anhoafood.com/wp-content/uploads/2018/08/bi-ngoi-vang-da-lat-huuco-anhoafood-1-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (17, N'Bí Xanh hữu cơ 500g', 20, 1.5, N'Là loại quả không chứa chất béo, thành phần chính gồm nước và các loại vitamin, canxi, photpho,… bí đao rất có lợi đối với sức khỏe và sắc đẹp của con người.', N'https://anhoafood.com/wp-content/uploads/2020/11/bixanh-huuco-dalat-anhoafood-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (18, N'Cải bó xôi hữu cơ Đà Lạt (500g)', 10, 2, N'Cải bó xôi là loại rau rất giàu vitamin A, C thúc đẩy trao đổi chất và hỗ trợ quá trình thải độc của cơ thể, tố cho mắt.', N'https://anhoafood.com/wp-content/uploads/2018/08/caiboxoi-huuco-dalat-2-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-25' AS Date), 0)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (19, N'Cải mizuna Nhật hữu cơ Đà Lạt', 10, 1.2, N'Bảo quản nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', N'https://anhoafood.com/wp-content/uploads/2020/11/rau-mizuna-huuco-dalat-anhoafood-2-300x300.jpg', 1, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (20, N'Đậu đỏ hữu cơ Đà Lạt ', 20, 2.2, N'Thêm vào đó, vì dinh dưỡng trong đậu tây ít chất béo và giàu protein, carbohydrate phức hợp, vitamin và khoáng chất, những hạt đậu đỏ này có liên quan đến vô số lợi ích sức khỏe.', N'https://anhoafood.com/wp-content/uploads/2020/11/dau-do-huuco-dalat-2-300x300.jpg', 3, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (21, N'Khoai môn sấy Đà Lạt', 5, 4.2, N'Khoai môn sấy được sấy từ thiết bị tiên tiến hiện đại. Giữ được hương vị tự nhiên của quả, độ thơm, ngon, giòn và rất hợp khẩu vị.', N'https://anhoafood.com/wp-content/uploads/2020/12/khoaimonsay-dalat-anhoafood-1-300x300.jpg', 4, CAST(N'2022-03-10' AS Date), CAST(N'2022-03-13' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (22, N'Khoai tây phô mai Đà Lạt ', 1, 2.5, N'Bảo quản: Nơi khô ráo thoáng mát', N'https://anhoafood.com/wp-content/uploads/2022/01/khoai-tay-pho-mai-1-300x300.jpg', 4, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [quantity], [price], [description], [imageUrl], [categoryID], [importDate], [usingDate], [status]) VALUES (23, N'Hồng treo gió Đà Lạt ', 10, 10, N'Bảo quản trong ngăn đá ăn dần.', N'https://anhoafood.com/wp-content/uploads/2018/08/H%E1%BB%93ng-treo-gi%C3%B3-%C4%90%C3%A0-L%E1%BA%A1t-anhoafood-0-300x300.jpg', 4, CAST(N'2022-03-09' AS Date), CAST(N'2022-03-09' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRoles] ON 

INSERT [dbo].[tblRoles] ([roleID], [roleName], [status]) VALUES (1, N'ADMIN', 1)
INSERT [dbo].[tblRoles] ([roleID], [roleName], [status]) VALUES (2, N'USER', 1)
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[tblShipping] ON 

INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (1, N'Nguyễn Thanh Tùng', N'0868649875', N'Bình Dương', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (2, N'Ngô Xuân Thiệp', N'0905952717', N'Quận 9', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (3, N'Ngô Xuân Thiệp', N'0905952717', N'Quận 9', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (4, N'Ngô Xuân Thiệp', N'0905952717', N'Quận 9', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (6, N'Nguyễn Thanh Tùng', N'0868649875', N'Bình Dương', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (7, N'Nguyễn Thanh Tùng', N'0868649875', N'Bình Dương', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (8, N'Nguyễn Thanh Tùng', N'0868649875', N'Bình Dương', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (9, N'Sỹ Ngu', N'0905952717', N'Vũng Tàu', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (10, N'Nguyễn Thanh Tùng', N'0868649875', N'Bình Dương', 1)
INSERT [dbo].[tblShipping] ([shippingID], [name], [phone], [address], [status]) VALUES (11, N'Nguyễn Thanh Tùng ', N'0868649875', N'Bình Dương', 1)
SET IDENTITY_INSERT [dbo].[tblShipping] OFF
GO
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'banhquy0610@gmail.com', N'Đoàn Vũ Quang Huy', N'Huypro123', 2, N'Bình Thạnh', CAST(N'2001-11-12' AS Date), N'0905952717', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'ducknote105@gmail.com', N'Đức', N'Thieppro123', 2, N'asdasdsad', CAST(N'2022-03-08' AS Date), N'0905952717', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'ngothiep@gmail.com', N'Ngô Xuân Thiệp', N'Thieppro123', 1, N'Đồng Nai', CAST(N'2001-12-24' AS Date), N'0905952717', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'ngothiep2412@gmail.com', N'Ngô Xuân Thiệp', N'Thieppro123', 2, N'Quận 9', CAST(N'2001-12-24' AS Date), N'0905952717', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'ngothiep95@gmail.com', N'ngothiep95', N'', 2, N'', CAST(N'1900-01-01' AS Date), N'', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'quocsy2511@gmail.com', N'Sỹ Ngu', N'Sypro123', 2, N'Vũng Tàu', CAST(N'2022-03-23' AS Date), N'0905952717', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'thaihoang03122001@gmail.com', N'Hoàng Đình Thái', N'Thaipro123', 1, N'Bình Tân', CAST(N'2001-02-20' AS Date), N'0938874361', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'thanhtung@gmail.com', N'Nguyễn Thanh Tùng', N'Tungpro123', 2, N'Bình Dương', CAST(N'2001-09-16' AS Date), N'0868649875', 1)
INSERT [dbo].[tblUsers] ([email], [fullName], [password], [roleID], [address], [birthday], [phone], [status]) VALUES (N'thiepnxse151074@fpt.edu.vn', N'thiepnxse151074@fpt.edu.vn', N'', 2, N'', CAST(N'1900-01-01' AS Date), N'', 1)
GO
ALTER TABLE [dbo].[tblOrders] ADD  CONSTRAINT [DF_tblOrders_orderDate]  DEFAULT (getdate()) FOR [orderDate]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order] FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDetail_product] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProduct] ([productID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK__OrderDetail_product]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping] FOREIGN KEY([shippingID])
REFERENCES [dbo].[tblShipping] ([shippingID])
GO
ALTER TABLE [dbo].[tblOrders] CHECK CONSTRAINT [FK__Orders__shipping]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__user] FOREIGN KEY([email])
REFERENCES [dbo].[tblUsers] ([email])
GO
ALTER TABLE [dbo].[tblOrders] CHECK CONSTRAINT [FK__Orders__user]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK__Product__categor]
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK__User__role] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK__User__role]
GO
USE [master]
GO
ALTER DATABASE [VegetableShop] SET  READ_WRITE 
GO
