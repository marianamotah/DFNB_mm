  
/*****************************************************************************************************************
NAME:    dbo.tblAccount.sql
PURPOSE: Create dbo.tblAccount table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/25/2020   MARIANAMOTA 1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

GO

/****** Object:  Table [dbo].[tblAccountDim]    Script Date: 11/11/2020 10:40:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccountDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblAccountDim]
GO

/****** Object:  Table [dbo].[tblAccountDim]    Script Date: 11/11/2020 10:40:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAccountDim](
	[acct_id] [int] NOT NULL,
	[cust_id] [smallint] NOT NULL,
	[open_date] [date] NOT NULL,
	[open_close_code] [varchar](1) NOT NULL,
	[close_date] [date] NOT NULL,
	[loan_amt] [decimal](20, 4) NOT NULL,
	[pri_cust_id] [smallint] NOT NULL,
	[prod_id] [smallint] NOT NULL,
	[branch_id] [smallint] NOT NULL
) ON [PRIMARY]
GO
