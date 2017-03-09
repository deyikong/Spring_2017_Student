USE [ECom]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 3/8/2017 10:27:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[GrandTotal] [decimal](18, 0) NULL,
	[IsOrder] [bit] NOT NULL,
	[CreatedBy] [varchar](25) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](25) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCartProducts]    Script Date: 3/8/2017 10:27:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartProducts](
	[Id] [int] NOT NULL,
	[ShoppingCartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NULL,
	[UnitPrice] [money] NULL,
	[SubTotal] [decimal](18, 0) NULL,
	[IsGift] [bit] NOT NULL,
	[CreatedBy] [varchar](25) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](25) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ShoppingCart] ADD  CONSTRAINT [DF_ShoppingCart_IsOrder]  DEFAULT ((0)) FOR [IsOrder]
GO
ALTER TABLE [dbo].[ShoppingCartProducts] ADD  CONSTRAINT [DF_ShoppingCartProducts_IsGift]  DEFAULT ((0)) FOR [IsGift]
GO
