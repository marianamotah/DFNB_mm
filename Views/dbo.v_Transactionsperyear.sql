/*****************************************************************************************************************
NAME:    dbo.v_Transactionsperyear

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/13/2020   MarianaMota  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/



USE [DFNB2]
GO


Create View [dbo].[v_Transactionsperyear] AS
SELECT distinct 
tb.branch_desc AS 'Branch_Name'
,ty.tran_type_desc
,count(tf.tran_date) AS 'Total_Transactions'
,year(tf.tran_date) AS 'Transaction_Year'
FROM dbo.tblTransactionFact tf
INNER JOIN dbo.tblBranchDim tb ON tb.branch_id = tf.branch_id
INNER JOIN dbo.tblTransactionTypeDim ty ON tf.tran_type_id = ty.tran_type_id
GROUP BY
tb.branch_desc
,ty.tran_type_desc
,year(tf.tran_date)

GO
