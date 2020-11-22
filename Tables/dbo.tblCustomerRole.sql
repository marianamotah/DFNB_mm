-- Create dbo.tblCustomerRole

/*
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
INTO dbo.tblCustomerRole
  FROM dbo.stg_p1 AS s;
ALTER TABLE dbo.tblCustomerRole
ADD cust_role_desc VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblCustomerRole]    Script Date: 11/11/2020 10:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCustomerRole]') AND type in (N'U'))
DROP TABLE [dbo].tblCustomerRole
GO

/****** Object:  Table [dbo].[tblCustomerRole]    Script Date: 11/11/2020 10:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].tblCustomerRole(
	[cust_role] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCustomerRole] PRIMARY KEY CLUSTERED 
(
	[cust_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO