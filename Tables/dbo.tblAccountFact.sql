/*****************************************************************************************************************
NAME:    dbo.tblAccountFact.sql
PURPOSE: Create dbo.tblAccountFactDim table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   MarianaMota  1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

-- Create dbo.tblAccountFact
/*
SELECT DISTINCT 
       s.as_of_date
	 , s.cur_bal
	 , s.acct_id
INTO dbo.tblAccountFact
  FROM dbo.stg_p1 AS s;
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblAccountFact]    Script Date: 11/22/2020 10:40:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccountFact]') AND type in (N'U'))
DROP TABLE [dbo].[tblAccountFact]
GO

/****** Object:  Table [dbo].[tblAccountFact]    Script Date: 11/22/2020 10:40:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAccountFact](
	[as_of_date] [date] NOT NULL,
	[cur_bal] [decimal](20, 4) NOT NULL,
	[acct_id] [int] NOT NULL
) ON [PRIMARY]
GO