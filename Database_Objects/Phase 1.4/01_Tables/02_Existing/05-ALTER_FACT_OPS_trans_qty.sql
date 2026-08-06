--Alter DBO.FACT_OPS to increase column size to decimal (30,5)

ALTER TABLE [dbo].[fact_ops]
ALTER COLUMN [transaction_quantity] [decimal](30, 5) NULL;

GO