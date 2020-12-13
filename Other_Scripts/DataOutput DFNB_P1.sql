/*****************************************************************************************************************
NAME:    DataOutputDFNB_p1
PURPOSE: Create the output for all views created on P1
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/13/2020   MarianaMota  1. Creation of the Script for output
 
RUNTIME: 
Approx. 1 min

******************************************************************************************************************/

SELECT *
  FROM dbo.v_AccountsClosed;

SELECT *
  FROM dbo.v_AccountsOpen;

SELECT *
  FROM dbo.v_AverageBalanceperYear;

SELECT *
  FROM dbo.v_Customers;

SELECT *
  FROM dbo.v_LoansperBranch;

SELECT *
  FROM dbo.v_TotalAccounts;