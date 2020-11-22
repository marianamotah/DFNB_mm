-- 1) Load dbo.tblCustomerDim.sql

TRUNCATE TABLE dbo.tblCustomer;

INSERT INTO dbo.tblCustomer

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
FROM dbo.stg_p1 as s

-- 2) Load dbo.tblProductDim.sql

TRUNCATE TABLE dbo.tblProductDim;

INSERT INTO dbo.tblProductDim
SELECT DISTINCT 
       s.prod_id	 
  FROM dbo.stg_p1 AS s;

-- 3) Load dbo.tblAreaDim.sql

TRUNCATE TABLE dbo.tblArea;

INSERT INTO dbo.tblArea
SELECT DISTINCT 
       s.acct_area_id AS area_id
  FROM dbo.stg_p1 AS s;

-- 4) Load dbo.tblRegion.sql

TRUNCATE TABLE dbo.tblRegion;

INSERT INTO dbo.tblRegion
SELECT DISTINCT 
       s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 5) Load dbo.tblAddressDim.sql

TRUNCATE TABLE dbo.tblAddress;

INSERT INTO dbo.tblAddress
SELECT DISTINCT 
       s.cust_add_id
     , s.cust_add_lat
     , s.cust_add_lon
     , s.cust_add_type
  FROM dbo.stg_p1 AS s;

-- 6) Load dbo.tblBranch.sql

TRUNCATE TABLE dbo.tblBranch;

INSERT INTO dbo.tblBranch
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
     , s.acct_branch_code AS branch_code
     , s.acct_branch_desc AS branch_desc
     , s.acct_branch_add_id AS add_id
     , s.acct_area_id AS area_id
     , s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 7) Load dbo.tblCustomerRoleDim.sql

TRUNCATE TABLE dbo.tblCustomerRole;

INSERT INTO dbo.tblCustomerRole
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
  FROM dbo.stg_p1 AS s;

-- 8) Load dbo.tblAccount.sql

TRUNCATE TABLE dbo.tblAccount;

INSERT INTO dbo.tblAccount
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

-- 9) Load dbo.tblAccountCustomer.sql

TRUNCATE TABLE dbo.tblAccountCustomer;

INSERT INTO dbo.tblAccountCustomer
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