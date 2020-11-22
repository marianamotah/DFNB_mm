  
/*****************************************************************************************************************
NAME:    dbo.tblBranch.sql
PURPOSE: Create ddbo.tblAddress table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/25/2020   MARIANAMOTA 1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/
-- Create dbo.tblBranch
/*
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
	 , s.acct_branch_code AS branch_code
	 , s.acct_branch_desc AS branch_desc
	 , s.acct_branch_add_id AS add_id
	 , s.acct_area_id AS area_id
	 , s.acct_region_id AS region_id
INTO dbo.tblBranch
  FROM dbo.stg_p1 AS s;
*/

  USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblBranch]    Script Date: 11/11/2020 10:43:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBranch]') AND type in (N'U'))
DROP TABLE [dbo].tblBranch
GO

/****** Object:  Table [dbo].[tblBranch]    Script Date: 11/11/2020 10:43:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].tblBranch(
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[add_id] [int] NOT NULL,
	[area_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_tblBranch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
