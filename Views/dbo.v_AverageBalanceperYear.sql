/*****************************************************************************************************************
NAME:    dbo.v_AverageBalanceperYear
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

/****** Object:  View dbo.v_AverageBalanceperYear    Script Date: 11/11/2020 10:51:25 ******/
DROP VIEW dbo.v_AverageBalanceperYear
GO

/****** Object:  dbo.v_AverageBalanceperYear    Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW dbo.v_AverageBalanceperYear
AS
     SELECT a.branch_id
     , AVG(f.cur_bal) AS AverageBalance
     , YEAR(f.as_of_date) AS EndPointYear
  FROM dbo.tblAccountFact AS f
       INNER JOIN
       dbo.tblAccount AS a ON f.acct_id = a.acct_id
 WHERE MONTH(f.as_of_date) = 12
       AND YEAR(f.as_of_date) IN
                                (
                                 2017
                               , 2018
                                )
       OR f.as_of_date = '2019-07-31'
 GROUP BY a.branch_id
        , YEAR(f.as_of_date)
 
	 
GO