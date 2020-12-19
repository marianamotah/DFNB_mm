/*****************************************************************************************************************
NAME:    dbo.tblTransactionFact
PURPOSE: Create dbo.ttblTransactionFact

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/16/2018   MarianaMota  1. Creation of the table

RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

/****** Object:  Table [dbo].[tblTransactionFact]    Script Date: 12/16/2020  ******/
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

