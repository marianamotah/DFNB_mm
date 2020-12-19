/*****************************************************************************************************************
NAME:    dbo.tblTransactionFact
PURPOSE: Create dbo.ttblTransactionFact
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/13/2020   MarianaMota  1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

-- Create dbo.tblTransactionFact

--CREATE TABLE [dbo].[tblTransactionFact](
--	[tran_date] [date] NOT NULL,
--	[tran_time] [time](7) NOT NULL,
--	[tran_type_id] [smallint] NOT NULL,
--	[tran_amt] [int] NOT NULL,
--	[tran_fee_amt] [decimal](15, 3) NOT NULL,
--	[branch_id] [smallint] NOT NULL,
--	[acct_id] [int] NOT NULL,

--	) ON [PRIMARY]

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblTransactionFact]    Script Date: 12/13/2020  3:54 ******/
SET ANSI_NULLS ON
GO
DROP TABLE [dbo].[tblTransactionFact]
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTransactionFact](
	[tran_date] [date] NOT NULL,
	[tran_time] [time](7) NOT NULL,
	[tran_type_id] [smallint] NOT NULL,
	[tran_amt] [int] NOT NULL,
	[tran_fee_amt] [decimal](15, 3) NOT NULL,
	[branch_id] [smallint] NOT NULL,
	[acct_id] [int] NOT NULL,
 CONSTRAINT [PK_tblTransactionFact] PRIMARY KEY CLUSTERED 
(
	[tran_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblTransactionFact]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionFact_tblTransactionFact] FOREIGN KEY([tran_date])
REFERENCES [dbo].[tblTransactionFact] ([tran_date])
GO

ALTER TABLE [dbo].[tblTransactionFact] CHECK CONSTRAINT [FK_tblTransactionFact_tblTransactionFact]
GO

ALTER TABLE [dbo].[tblTransactionFact]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionFact_tblTransactionFact1] FOREIGN KEY([tran_date])
REFERENCES [dbo].[tblTransactionFact] ([tran_date])
GO

ALTER TABLE [dbo].[tblTransactionFact] CHECK CONSTRAINT [FK_tblTransactionFact_tblTransactionFact1]
GO

ALTER TABLE [dbo].[tblTransactionFact]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionFact_tblTransactionFact2] FOREIGN KEY([tran_date])
REFERENCES [dbo].[tblTransactionFact] ([tran_date])
GO

ALTER TABLE [dbo].[tblTransactionFact] CHECK CONSTRAINT [FK_tblTransactionFact_tblTransactionFact2]
GO