/*****************************************************************************************************************
NAME:    dbo.v_AccountsClosed
PURPOSE: Create a view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/22/2020   MarianaMota  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

USE [DFNB2]
GO

/****** Object:  View dbo.v_AccountsClosed    Script Date: 11/11/2020 10:51:25 ******/
--DROP VIEW dbo.v_AccountsClosed
--GO

/****** Object:  View dbo.v_AccountsClosed    Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	dbo.v_AccountsClosed AS

SELECT COUNT(tad.close_date) AS AccountsClosed
     , tad.branch_id
     , YEAR(tad.close_date) AS Yeardate
  FROM dbo.tblAccount AS tad
 WHERE YEAR(tad.close_date) IN
                             (
                              2019
                            , 2018
                            , 2017
                             )
 GROUP BY tad.branch_id
        , YEAR(tad.close_date)
 --Order BY 3

 

	  
	 


GO