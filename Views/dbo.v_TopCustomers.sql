/*****************************************************************************************************************
NAME:    dbo.v_TopCustomers

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/13/2020   MarianaMota  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

Create View [dbo].[v_TopCustomers] AS
SELECT TOP 
10 tc.first_name +' '+tc.last_name AS Customer,

count(tt.tran_date) AS Total_Transactions
FROM dbo.tblTransactionFact tt

JOIN dbo.tblAccountDim ta ON tt.acct_id = ta.acct_id
JOIN dbo.tblCustomerDim tc ON ta.pri_cust_id= tc.cust_id
JOIN dbo.tblBranchDim tb ON ta.branch_id = tb.branch_id

GROUP BY
tc.first_name, tc.last_name

ORDER BY

count(tt.tran_date) desc;