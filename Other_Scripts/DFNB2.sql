/*****************************************************************************************************************
NAME:    LoadDFNB_p2
PURPOSE: Load DFNB_p2
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/30/2020   MarianaMota  1. Creation of the Script
RUNTIME: 
Approx. 1 min
NOTES: Project 2 + Project 1 Added Transaction tables
******************************************************************************************************************/

-- 1) Load dbo.tblCustomerDim.sql

TRUNCATE TABLE dbo.tblCustomerDim;

INSERT INTO dbo.tblCustomerDim
SELECT DISTINCT 
       s.cust_id
     , s.first_name
     , s.last_name
     , s.gender
     , s.birth_date
     , s.cust_since_date
     , s.cust_add_id
     , s.pri_branch_id
     , s.cust_rel_id
  FROM dbo.stg_p1 AS s;

-- 2) Load dbo.tblProductDim.sql

TRUNCATE TABLE dbo.tblProductDim;

INSERT INTO dbo.tblProductDim
SELECT DISTINCT 
       s.prod_id	 
  FROM dbo.stg_p1 AS s;

-- 3) Load dbo.tblAreaDim.sql

TRUNCATE TABLE dbo.tblAreaDim;

INSERT INTO dbo.tblAreaDim
SELECT DISTINCT 
       s.acct_area_id AS area_id
  FROM dbo.stg_p1 AS s;

-- 4) Load dbo.tblRegionDim.sql

TRUNCATE TABLE dbo.tblRegionDim;

INSERT INTO dbo.tblRegionDim
SELECT DISTINCT 
       s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 5) Load dbo.tblAddressDim.sql

TRUNCATE TABLE dbo.tblAddressDim;

INSERT INTO dbo.tblAddressDim
SELECT DISTINCT 
       s.cust_add_id
     , s.cust_add_lat
     , s.cust_add_lon
     , s.cust_add_type
  FROM dbo.stg_p1 AS s;

-- 6) Load dbo.tblBranchDim.sql

TRUNCATE TABLE dbo.tblBranchDim;

INSERT INTO dbo.tblBranchDim
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
     , s.acct_branch_code AS branch_code
     , s.acct_branch_desc AS branch_desc
     , s.acct_branch_add_id AS add_id
     , s.acct_area_id AS area_id
     , s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 7) Load dbo.tblCustomerRoleDim.sql

TRUNCATE TABLE dbo.tblCustomerRoleDim;

INSERT INTO dbo.tblCustomerRoleDim
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
  FROM dbo.stg_p1 AS s;

-- 8) Load dbo.tblAccountDim.sql

TRUNCATE TABLE dbo.tblAccountDim;

INSERT INTO dbo.tblAccountDim
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.open_date
	 , s.open_close_code
	 , s.close_date
	 , s.loan_amt
	 , s.pri_cust_id
	 , s.prod_id
	 , s.branch_id
  FROM dbo.stg_p1 AS s;

-- 9) Load dbo.tblAccountCustomerDim.sql

TRUNCATE TABLE dbo.tblAccountCustomerDim;

INSERT INTO dbo.tblAccountCustomerDim
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.acct_cust_role_id AS cust_role_id
  FROM dbo.stg_p1 AS s;

-- 10) Load dbo.tblAccountFact.sql

TRUNCATE TABLE dbo.tblAccountFact;

INSERT INTO dbo.tblAccountFact
SELECT DISTINCT 
       s.as_of_date
	 , s.cur_bal
	 , s.acct_id
  FROM dbo.stg_p1 AS s;
-- 11) Load tblTransactionTypeDim

TRUNCATE TABLE dbo.tblTransactionTypeDim;

INSERT INTO dbo.tblTransactionTypeDim
SELECT DISTINCT 
       sp.tran_type_id
     , sp.tran_type_code
     , sp.tran_type_desc
     , sp.tran_fee_prct
     , sp.cur_cust_req_ind
  FROM dbo.stg_p2 AS sp;

-- 12) Load tblTransactionTypeDim

TRUNCATE TABLE dbo.tblTransactionFact;

INSERT INTO dbo.tblTransactionFact
SELECT DISTINCT          
       sp.tran_date
     , sp.tran_time
     , sp.tran_type_id
     , sp.tran_amt
     , sp.tran_fee_amt
	 , sp.branch_id
	 , sp.acct_id
  FROM dbo.stg_p2 sp;