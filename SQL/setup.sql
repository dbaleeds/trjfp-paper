USE [RealJunkFood]
GO
/****** Object:  Table [dbo].[tblCafe]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCafe](
	[CafeId] [int] NOT NULL,
	[Cafe] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[Address4] [varchar](max) NULL,
	[Address5] [varchar](max) NULL,
	[Postcode] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[DateModifed] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_tblLkpCafe] PRIMARY KEY CLUSTERED 
(
	[CafeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDonation]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDonation](
	[DonationId] [int] NOT NULL,
	[CafeId] [int] NULL,
	[NumMeals] [int] NULL,
	[NumPeople] [int] NULL,
	[Donations] [float] NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblDonations] PRIMARY KEY CLUSTERED 
(
	[DonationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblIntercept]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblIntercept](
	[InterceptId] [int] NOT NULL,
	[CafeId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[SourceId] [int] NULL,
	[DateIntercepted] [datetime] NULL,
	[NotUsed] [bit] NULL,
	[Weight] [int] NULL,
	[DateModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_tblInventory] PRIMARY KEY CLUSTERED 
(
	[InterceptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLkpCategory]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLkpCategory](
	[CategoryId] [int] NOT NULL,
	[Category] [varchar](max) NULL,
	[DateModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_tblLkpCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductId] [int] NOT NULL,
	[EAN] [int] NULL,
	[Product] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[Weight] [int] NULL,
	[Manufacturer] [varchar](max) NULL,
	[DateModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSource]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSource](
	[SourceId] [int] NOT NULL,
	[Source] [varchar](max) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[Address4] [varchar](max) NULL,
	[Address5] [varchar](max) NULL,
	[Postcode] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[DateModified] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_tblSource] PRIMARY KEY CLUSTERED 
(
	[SourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 07/10/2015 17:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserId] [int] NULL,
	[CafeId] [int] NULL,
	[LoginPin] [int] NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[Address4] [varchar](max) NULL,
	[Address5] [varchar](max) NULL,
	[Postcode] [varchar](50) NULL,
	[Country] [varchar](max) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[DateModified] [datetime] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblIntercept] ADD  CONSTRAINT [DF_tblIntercept_NotUsed]  DEFAULT ((0)) FOR [NotUsed]
GO
ALTER TABLE [dbo].[tblDonation]  WITH CHECK ADD  CONSTRAINT [FK_tblDonation_tblCafe] FOREIGN KEY([CafeId])
REFERENCES [dbo].[tblCafe] ([CafeId])
GO
ALTER TABLE [dbo].[tblDonation] CHECK CONSTRAINT [FK_tblDonation_tblCafe]
GO
ALTER TABLE [dbo].[tblIntercept]  WITH CHECK ADD  CONSTRAINT [FK_tblIntercept_tblCafe] FOREIGN KEY([CafeId])
REFERENCES [dbo].[tblCafe] ([CafeId])
GO
ALTER TABLE [dbo].[tblIntercept] CHECK CONSTRAINT [FK_tblIntercept_tblCafe]
GO
ALTER TABLE [dbo].[tblIntercept]  WITH CHECK ADD  CONSTRAINT [FK_tblIntercept_tblProduct] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tblProduct] ([ProductId])
GO
ALTER TABLE [dbo].[tblIntercept] CHECK CONSTRAINT [FK_tblIntercept_tblProduct]
GO
ALTER TABLE [dbo].[tblIntercept]  WITH CHECK ADD  CONSTRAINT [FK_tblIntercept_tblSource] FOREIGN KEY([SourceId])
REFERENCES [dbo].[tblSource] ([SourceId])
GO
ALTER TABLE [dbo].[tblIntercept] CHECK CONSTRAINT [FK_tblIntercept_tblSource]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblLkpCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tblLkpCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblLkpCategory]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblCafe] FOREIGN KEY([CafeId])
REFERENCES [dbo].[tblCafe] ([CafeId])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblCafe]
GO
