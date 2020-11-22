  
/*****************************************************************************************************************
NAME:    dbo.tblArea.sql
PURPOSE: Create ddbo.tblAddress table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/25/2020   MARIANAMOTA 1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/
-- Create dbo.tblArea
/*
SELECT DISTINCT 
       s.acct_area_id AS area_id
INTO dbo.tblArea
  FROM dbo.stg_p1 AS s;
ALTER TABLE dbo.tblArea
ADD area_desc VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblAreaDim]    Script Date: 11/11/2020 10:42:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblArea]') AND type in (N'U'))
DROP TABLE [dbo].tblArea
GO

/****** Object:  Table [dbo].[tblArea]    Script Date: 11/11/2020 10:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblArea](
	[area_id] [int] NOT NULL,
 CONSTRAINT [PK_tblAreaDim] PRIMARY KEY CLUSTERED 
(
	[area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO