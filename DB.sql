USE [PMSP]
GO
/****** Object:  Table [dbo].[tbl_Category_Master]    Script Date: 3/14/2020 12:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category_Master](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](255) NOT NULL,
	[EnteredBy] [int] NULL,
	[EnteredDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Category_Master] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Event_Inquiry]    Script Date: 3/14/2020 12:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Event_Inquiry](
	[InquiryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[InquiryTitle] [varchar](255) NOT NULL,
	[Inquiry] [varchar](1000) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[ContactNo] [bigint] NOT NULL,
	[EventName] [varchar](255) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Description] [varchar](1000) NULL,
	[Location] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_Event_Inquiry] PRIMARY KEY CLUSTERED 
(
	[InquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Event_Master]    Script Date: 3/14/2020 12:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Event_Master](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](255) NOT NULL,
	[EventType] [varchar](100) NOT NULL,
	[LocationId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Description] [varchar](1000) NULL,
	[EventImage] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Event_Master] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Location_City]    Script Date: 3/14/2020 12:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CityName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Location] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Location_Country]    Script Date: 3/14/2020 12:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location_Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Location_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Location_Master]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location_Master](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Landmark] [varchar](255) NOT NULL,
	[Pincode] [bigint] NOT NULL,
	[EnteredBy] [int] NULL,
	[EnteredDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Location_Master] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Location_State]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Location_State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[StateName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Location_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Order_Details]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Order_Details](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[EnteredBy] [int] NULL,
	[EnteredDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product_Category_Map]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product_Category_Map](
	[CategoryMapId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Category_Map] PRIMARY KEY CLUSTERED 
(
	[CategoryMapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product_Location_Map]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product_Location_Map](
	[LocationMapId] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Location_Map] PRIMARY KEY CLUSTERED 
(
	[LocationMapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product_Master]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product_Master](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
	[QuantityId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [varchar](1000) NULL,
	[Image] [nvarchar](max) NULL,
	[EnteredBy] [int] NULL,
	[EnteredDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Product_Master] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Quantity]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quantity](
	[QuantityId] [int] IDENTITY(1,1) NOT NULL,
	[QuantityAvl] [int] NOT NULL,
	[EnteredBy] [int] NULL,
	[EnteredDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Quantity] PRIMARY KEY CLUSTERED 
(
	[QuantityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role_Master]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role_Master](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_Role_Master] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 3/14/2020 12:47:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[ContactNo] [int] NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Event_Master]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Event__Locat__48CFD27E] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tbl_Location_Master] ([LocationId])
GO
ALTER TABLE [dbo].[tbl_Event_Master] CHECK CONSTRAINT [FK__tbl_Event__Locat__48CFD27E]
GO
ALTER TABLE [dbo].[tbl_Location_City]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[tbl_Location_State] ([StateId])
GO
ALTER TABLE [dbo].[tbl_Location_Master]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[tbl_Location_City] ([CityId])
GO
ALTER TABLE [dbo].[tbl_Location_Master]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[tbl_Location_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tbl_Location_Master]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[tbl_Location_State] ([StateId])
GO
ALTER TABLE [dbo].[tbl_Location_State]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[tbl_Location_Country] ([CountryId])
GO
ALTER TABLE [dbo].[tbl_Product_Category_Map]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Categ__Categ__4F7CD00D] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tbl_Category_Master] ([CategoryId])
GO
ALTER TABLE [dbo].[tbl_Product_Category_Map] CHECK CONSTRAINT [FK__tbl_Categ__Categ__4F7CD00D]
GO
ALTER TABLE [dbo].[tbl_Product_Category_Map]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Categ__Produ__5070F446] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Product_Master] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_Product_Category_Map] CHECK CONSTRAINT [FK__tbl_Categ__Produ__5070F446]
GO
ALTER TABLE [dbo].[tbl_Product_Location_Map]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Locat__Locat__5165187F] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tbl_Location_Master] ([LocationId])
GO
ALTER TABLE [dbo].[tbl_Product_Location_Map] CHECK CONSTRAINT [FK__tbl_Locat__Locat__5165187F]
GO
ALTER TABLE [dbo].[tbl_Product_Location_Map]  WITH CHECK ADD  CONSTRAINT [FK__tbl_Locat__Produ__52593CB8] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Product_Master] ([ProductId])
GO
ALTER TABLE [dbo].[tbl_Product_Location_Map] CHECK CONSTRAINT [FK__tbl_Locat__Produ__52593CB8]
GO
ALTER TABLE [dbo].[tbl_Product_Master]  WITH CHECK ADD FOREIGN KEY([QuantityId])
REFERENCES [dbo].[tbl_Quantity] ([QuantityId])
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_tbl_Role_Master] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Role_Master] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_tbl_Role_Master]
GO
