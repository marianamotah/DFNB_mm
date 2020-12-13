/*****************************************************************************************************************
NAME:    dbo.v_Customers
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

/****** Object:  View dbo.v_Customers    Script Date: 11/11/2020 10:51:25 ******/
DROP VIEW dbo.v_Customers
GO

/****** Object:  View dbo.v_Customers   Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	dbo.v_Customers AS

SELECT [cust_id]  
      ,[last_name]
      ,[gender]
      ,[birth_date]
      ,[cust_since_date]      
      ,[pri_branch_id]
  FROM [DFNB2].[dbo].[tblCustomer]	  

GO
