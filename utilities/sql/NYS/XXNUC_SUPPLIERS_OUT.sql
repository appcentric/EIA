USE [Requisition]
GO

/****** Object:  Table [dbo].[XXNUC_SUPPLIERS_OUT]    Script Date: 5/7/2014 9:34:19 PM ******/
DROP TABLE [dbo].[XXNUC_SUPPLIERS_OUT]
GO

/****** Object:  Table [dbo].[XXNUC_SUPPLIERS_OUT]    Script Date: 5/7/2014 9:34:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[XXNUC_SUPPLIERS_OUT](
	[SUPPLIER_OUT_KEY] [bigint] NULL,
	[LEGACY_SUPPLIER_NUMBER] [nvarchar](100) NULL,
	[REF_SUPPLIER_SITE_ID] [bigint] NULL,
	[REF_SUPPLIER_ID] [bigint] NULL,
	[REF_PARTY_ID] [bigint] NULL,
	[REF_PARTYSITE_ID] [bigint] NULL,
	[REF_LOCATION_ID] [bigint] NULL,
	[CREATION_DATE] [date] NULL,
	[LAST_UPDATE_DATE] [date] NULL,
	[CREATED_BY] [nvarchar](240) NULL,
	[LAST_UPDATED_BY] [nvarchar](240) NULL,
	[PROCESS_DATE] [date] NULL,
	[PROCESS_STATUS] [nvarchar](10) NULL,
	[ERROR_MSG] [nvarchar](2000) NULL,
	[ATTRIBUTE_CATEGORY] [nvarchar](30) NULL,
	[ATTRIBUTE1] [nvarchar](150) NULL,
	[ATTRIBUTE2] [nvarchar](150) NULL,
	[ATTRIBUTE3] [nvarchar](150) NULL,
	[ATTRIBUTE4] [nvarchar](150) NULL,
	[ATTRIBUTE5] [nvarchar](150) NULL,
	[ATTRIBUTE6] [nvarchar](150) NULL,
	[ATTRIBUTE7] [nvarchar](150) NULL,
	[ATTRIBUTE8] [nvarchar](150) NULL,
	[ATTRIBUTE9] [nvarchar](150) NULL,
	[ATTRIBUTE10] [nvarchar](150) NULL,
	[ATTRIBUTE11] [nvarchar](150) NULL,
	[ATTRIBUTE12] [nvarchar](150) NULL,
	[ATTRIBUTE13] [nvarchar](150) NULL,
	[ATTRIBUTE14] [nvarchar](150) NULL,
	[ATTRIBUTE15] [nvarchar](150) NULL
) ON [PRIMARY]

GO


