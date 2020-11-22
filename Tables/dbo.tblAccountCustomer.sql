/*****************************************************************************************************************
NAME:    dbo.tblAccountCustomer.sql
PURPOSE: Create dbo.tblAccountCustomer table
		 
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   MARIANAMOTA  1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

-- Create dbo.tblAccountCustomer

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblAccountCustomerDim]    Script Date: 11/11/2020 10:38:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccountCustomerDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblAccountCustomer]
GO

/****** Object:  Table [dbo].[tblAccountCustomerDim]    Script Date: 11/11/2020 10:38:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAccountCustomer](
	[acct_id] [int] NOT NULL,
	[cust_id] [smallint] NOT NULL,
	[cust_role_id] [smallint] NOT NULL,
	[acct_cust_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[acct_cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO