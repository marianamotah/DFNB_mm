  
/*****************************************************************************************************************
NAME:    dbo.tblAddress.sql
PURPOSE: Create ddbo.tblAddress table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/25/2020   MARIANAMOTA 1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

-- Create dbo.tblAddress

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblAddress]    Script Date: 11/11/2020 10:37:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddress]') AND type in (N'U'))
DROP TABLE [dbo].[tblAddress]
GO

/****** Object:  Table [dbo].[tblAddress]    Script Date: 11/11/2020 10:37:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAddress](
	[cust_add_id] [int] NOT NULL,
	[cust_add_lat] [decimal](16, 12) NOT NULL,
	[cust_add_lon] [decimal](16, 12) NOT NULL,
	[cust_add_type] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tblAddressDim] PRIMARY KEY CLUSTERED 
(
	[cust_add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
