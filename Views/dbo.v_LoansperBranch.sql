/*****************************************************************************************************************
NAME:    dbo.v_LoansperBranch
PURPOSE: Create a view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   MarianaM  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

USE [DFNB2]
GO

/****** Object:  View [dbo].[v_LoansperBranch]    Script Date: 11/11/2020 10:51:25 ******/
DROP VIEW [dbo].[v_LoansperBranch]
GO

/****** Object:  View [dbo].[v_LoansperBranch]    Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_LoansperBranch] AS

SELECT 
    sum( tad.loan_amt) AS TotalLoan
	 ,tad.branch_id AS Branch
	 , year(tafd.as_of_date) AS year

  FROM dbo.tblAccount AS tad
       JOIN
       dbo.tblAccountFact AS tafd
	   ON tad.acct_id = tafd.acct_id

	   GROUP BY	tad.branch_id, year(tafd.as_of_date)	  

	  
	 


GO