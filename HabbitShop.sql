USE [SPRING_FinalPrj]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC,
	[userId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoriesId] [int] IDENTITY(1,1) NOT NULL,
	[categoriesName] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[categoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelloSE1439]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelloSE1439](
	[if] [int] NOT NULL,
 CONSTRAINT [PK_helloLong] PRIMARY KEY CLUSTERED 
(
	[if] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[quantity] [int] NULL,
	[orderDate] [date] NULL,
	[orderDescription] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] NOT NULL,
	[productName] [nvarchar](max) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[productDesciption] [nvarchar](max) NULL,
	[images] [varchar](max) NULL,
	[categoriesId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/10/2021 4:25:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](max) NULL,
	[fullname] [nvarchar](max) NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](max) NULL,
	[phone] [varchar](12) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([categoriesId], [categoriesName]) VALUES (1, N'TEE')
INSERT [dbo].[Categories] ([categoriesId], [categoriesName]) VALUES (2, N'JACKET')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (1, 2, 2, 1, CAST(N'2021-03-10' AS Date), N'success')
INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (32, 36, 3, 1, CAST(N'2021-03-30' AS Date), N'success')
INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (33, 4, 5, 5, CAST(N'2021-07-18' AS Date), N'success')
INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (34, 4, 2, 2, CAST(N'2021-07-18' AS Date), N'success')
INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (35, 4, 1, 3, CAST(N'2021-07-18' AS Date), N'success')
INSERT [dbo].[Orders] ([orderId], [userId], [productId], [quantity], [orderDate], [orderDescription]) VALUES (36, 4, 1, 10, CAST(N'2021-07-18' AS Date), N'success')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (1, N'JEAN JACKETS', 45, 100, N'Bad Habit', N'https://cdn.boo.vn/products/851/ao-phong-nam-oversized-boo-laab-1-tiedye-xanh-tim-hong-3-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (2, N'DICE WASHED ', 26, 100, N'Bad Habit', N'https://cdn.boo.vn/products/831/ao-phong-nam-oversized-boo-laab-tie-dye-tiedye-xanh-tim-hong-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (3, N'STRIPED SHIRT', 29, 100, N'Bad Habit', N'https://cdn.boo.vn/products/847/ao-phong-oversized-boo-laab-1-patten-hoa-tiettim-purpletim-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (4, N'MASCOT HOODIE', 35, 100, N'Bad Habit', N'https://cdn.boo.vn/products/847/ao-phong-oversized-boo-laab-1-patten-hoa-tiettim-purpletim-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (5, N'BLADE HOODIE', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (6, N'BANDANA JACKET', 45, 100, N'Bad Habit', N'https://cdn.boo.vn/products/847/ao-phong-oversized-boo-laab-1-patten-hoa-tiettim-purpletim-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (7, N'LIGHTSPEED JACKET', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/847/ao-phong-oversized-boo-laab-1-patten-hoa-tiettim-purpletim-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (8, N'META JACKET', 55, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (9, N'OVER POPULATER JACKET', 65, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (10, N'Tamagotchi Jacket', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (11, N'RABBIT DRAW C TEE
', 75, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (12, N'RABBIT LINE TEE', 46, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (13, N'RABBIT TRIPPY LAND TEE', 65, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (14, N'RABBIT N FRIENDS', 12, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (15, N'RABBIT TOY BROWN
', 15, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (16, N'RABBIT TOY COLOR', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (17, N'RABBIT N HOMIES', 105, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (18, N'RABBIT N HOMIES', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (19, N'EATER', 43, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (20, N'RABBIT INSIDE OUT
', 20, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (21, N'RABBIT INSIDE OUT', 20, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (22, N'GUMMY', 25, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (23, N'RABBIT TOY KING', 28, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (24, N'CANDY CITIZEN', 19, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (25, N'CANYLOW', 26, 100, N'Bad Habit', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (26, N'REEM KI', 55, 100, N'BOO', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 2)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (27, N'YUKIKATA', 55, 100, N'BOO', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (28, N'NEKIO', 21, 100, N'BOO', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
INSERT [dbo].[Product] ([productId], [productName], [price], [quantity], [productDesciption], [images], [categoriesId]) VALUES (29, N'KUJI TEE', 34, 100, N'BOO', N'https://cdn.boo.vn/products/675/ao-thun-dai-tay-nu-bzl-mickey-tet-form-loose-ixxup-2-463.jpg', 1)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (1, N'truong', N'291220', N'Vương Văn Trường', 1, N'Hà Nội', N'0942783802', N'HOLD_admin')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (2, N'skrra', N'1222', N'Skrrak', 0, N'USA', N'0131212112', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (3, N'Dsfds', N'12221', N'Bacnk', 1, N'Hải Phòng', N'09426535718', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (4, N'huong', N'200420', N'Hoàng Thị Thu Hương', 0, N'Nam Định', N'0824504462', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (5, N'fen', N'123', N'HYU1', 1, N'HP', N'0942783882', N'HOLD_admin')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (6, N'Long', N'12345', N'H?i Long', 1, N'Cao B?ng', N'0911222555', N'ROLE_member')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (7, N'Long1', N'123', N'Háº£i', 1, N'Cao B?ng 2', N'0911222555', N'ROLE_admin')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (10, N'Long', N'145678', N'Hải Long ', 1, N'Hà Nội ', N'0911224555', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (11, N'Long', N'145678', N'Hải Long ', 1, N'Hà Nội ', N'0911224555', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (12, N'NKhuê', N'123', N'Nguyá»n ÄÃ¬nh KhuÃª', 1, N'XuÃ¢n Giang - SÃ³c SÆ¡n', N'0915201766', N'ROLE_member')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (22, N'Long', N'123456', N'Nguyễn Hải Long', 1, N'Sóc Sơn', N'0915202433', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (23, N'Xiêm', N'123456', N'Hà Văn Xiêm', 1, N'Lai cách - Xuân Giang - Sóc Sơn - Hà Nội', N'0912346742', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (24, N'Jonh', N'1234567', N'Jon Đặng', 0, N'Hải Phòng', N'0912346743', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (25, N'Mark', N'123456789', N'Mark Lane', 1, N'Thái Bình', N'094354666', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (27, N'GGGGG', N'13579', N'Yiizzz', 0, N'Los Angeles', N'09233232322', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (28, N'htthuonggggg', N'1234567', N'Yiizzz', 0, N'Lai cách - Xuân Giang - Sóc Sơn - Hà Nội', N'09233231112', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (35, N'Coosi', N'123', N'vn coosi', 0, N'Lai cách - Xuân Giang - Sóc Sơn - Hà Nội', N'09233232321', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (36, N'Vanh', N'123', N'Cô Vân Anh', 0, N'Thái Bình', N'09233232323', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (37, N'Vanh', N'123', N'Cô Vân Anh', 0, N'Thái Bình', N'0942783807', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (38, N'Vanh1', N'123', N'Cô Vân Anh', 0, N'Thái Bình', N'0942783808', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (39, N'VN1', N'123', N'Việt Nam', 0, N'TP.HCM', N'09233232311', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (40, N'admin', N'truong', N'Administrator', 1, N'Hà Nội', N'098889999', N'HOLD_admin')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (41, N'thoai', N'123', N'thoai', 0, N'Hải Phòng', N'09233232324', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (42, N'thuyxinhdep', N'123', N'Chu Thị Thủy', 0, N'Bắc Giang', N'0961824415', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (44, N'111111', N'111', N'Yiizzz1', 0, N'Lai cách - Xuân Giang - Sóc Sơn - Hà Nội', N'092332222323', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (47, N'k1', N'111', N'Vuong k1', 1, N'Hà N?i', N'0911122222', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (48, N'Hi1', N'122', N'Haik', 1, N'HN', N'0942211111', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (49, N'Long', N'123456', N'Nguyễn Hải Long', 1, N'Sóc Sơn', N'0915202433', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (50, N'11', N'12345', N'ki', 1, N'HN', N'09191919', N'ROLE_member')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (51, N'kikik', N'123', N'HYU11', 1, N'HN', N'092222323', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (52, N'huong1111', N'123', N'Mẹ Oanh1', 1, N'11111', N'092332321323', N'HOLD_admin')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (53, N'quocdat', N'123', N'Nguyễn Quốc Đạt', 0, N'Nam Định', N'094444423', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (54, N'hapn1', N'123', N'Phạm  Ngọc Hà', 0, N'Không biết', N'123456789', N'USER')
INSERT [dbo].[User] ([userId], [username], [password], [fullname], [gender], [address], [phone], [role]) VALUES (55, N'hapn', N'123', N'Phạm  Ngọc Hà', 0, N'None', N'123457890', N'USER')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categories] FOREIGN KEY([categoriesId])
REFERENCES [dbo].[Categories] ([categoriesId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Categories]
GO
