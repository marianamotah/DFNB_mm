/*****************************************************************************************************************
NAME:    DataOutputDFNB_p2
PURPOSE: output Project two

Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     13/12/2020   MarianaMota  1. 
RUNTIME: 
Approx. 1 min
NOTES: ALL VIEWS - rapid view
******************************************************************************************************************/

SELECT *
  FROM dbo.v_BranchesTransactions;

SELECT *
  FROM dbo.v_CustomersFeeAmounts;

SELECT *
  FROM dbo.v_FeeAmounts;

SELECT *
  FROM dbo.v_OtherBranches;

SELECT *
  FROM dbo.v_TopCustomers;

SELECT *
  FROM dbo.v_Transactionsperyear;