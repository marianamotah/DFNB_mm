/*****************************************************************************************************************
NAME:    dbo.v_TotalAccounts
PURPOSE: Create a view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/22/2020   MarianaM  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

USE [DFNB2]
GO

/****** Object:  View dbo.v_TotalAccounts   Script Date: 11/22/2020 10:51:25 ******/
DROP VIEW dbo.v_TotalAccounts
GO

/****** Object:  View dbo.v_TotalAccounts    Script Date: 11/22/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	dbo.v_TotalAccounts AS

SELECT COUNT([open_close_code]) TotalAccounts
      ,[branch_id]
  FROM [DFNB2].[dbo].[tblAccount] AS A

  GROUP BY A.branch_id
 
GO
