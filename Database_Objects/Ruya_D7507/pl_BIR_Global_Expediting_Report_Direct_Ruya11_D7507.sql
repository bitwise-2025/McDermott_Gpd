DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_BIR_Global_Expediting_Report_Direct_Ruya11_D7507'

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','table_name',1,'table_name','IN','table_name with schema e.g. gpd.scm_procurement',1,'sundararaju.batta@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','logicapp_url',2,'logicapp_url','IN',NULL,1,'sundararaju.batta@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','project_number',3,'project_number','IN',NULL,1,'sundararaju.batta@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','SMAT BIR Global Data Extract',NULL,1,'sundararaju.batta@mcdermott.com',@Date,9)

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('table_name','BIR_Global_Expediting_Report_Direct_Ruya11_D7507',1,'sundararaju.batta@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'sundararaju.batta@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project_number','D7507',1,'sundararaju.batta@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	

/****** Object:  Table [epr].[BIR_Global_Expediting_Report_Direct_Ruya11_D7507]    Script Date: 3/11/2025 10:36:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[BIR_Global_Expediting_Report_Direct_Ruya11_D7507]
(
	[Project] [varchar](100) NULL,
	[Discipline] [varchar](100) NULL,
	[Requisition No] [varchar](200) NULL,
	[Purchase Order No] [varchar](200) NULL,
	[Purchase Order Revision No] [varchar](100) NULL,
	[Podate] [varchar](50) NULL,
	[Po Issue Date] [varchar](50) NULL,
	[Po Status] [varchar](100) NULL,
	[Supplier Name] [varchar](2000) NULL,
	[Supplier Location] [varchar](2000) NULL,
	[Manufacturing Location] [varchar](2000) NULL,
	[Package Description] [varchar](4000) NULL,
	[Item Description] [nvarchar](4000) NULL,
	[Ident Number] [varchar](200) NULL,
	[Tag Number] [varchar](500) NULL,
	[Po Line Item Number] [varchar](100) NULL,
	[Po Item Sub] [varchar](100) NULL,
	[Quantity Ordered] [varchar](200) NULL,
	[Uom] [varchar](200) NULL,
	[Expediting Criticality Level] [varchar](2000) NULL,
	[Inspection Criticality Level] [varchar](2000) NULL,
	[Item Shipment Position] [varchar](2000) NULL,
	[Item Shipment Sub] [varchar](2000) NULL,
	[Item Shipment Quantity] [varchar](200) NULL,
	[ISH Weight] [varchar](200) NULL,
	[Total ISH Weight] [varchar](200) NULL,
	[Weight Unit] [varchar](200) NULL,
	[Contractual/Promise Dd] [varchar](200) NULL,
	[Incoterm] [varchar](4000) NULL,
	[Incoterm Delivery Place] [varchar](2000) NULL,
	[Routing Method] [varchar](4000) NULL,
	[Transit / Clearence Days] [varchar](200) NULL,
	[Forecasted Delivery Date] [varchar](200) NULL,
	[Pred On Site Date] [varchar](200) NULL,
	[Arvl On Site Forecasted Date] [varchar](200) NULL,
	[Actual Rpt Date At Whs/Site] [varchar](200) NULL,
	[Delivery Designation] [varchar](2000) NULL,
	[Ros Date] [varchar](200) NULL,
	[Float] [varchar](200) NULL,
	[Irc No] [varchar](2000) NULL,
	[Irc Qty] [varchar](200) NULL,
	[Irc Approved Date] [varchar](200) NULL,
	[Release Note No] [varchar](4000) NULL,
	[Release Note Qty] [varchar](200) NULL,
	[Release Approved Date] [varchar](200) NULL,
	[Balance Irc Qty] [varchar](200) NULL,
	[Sli No] [varchar](200) NULL,
	[Bl# Or Awb#] [varchar](2000) NULL,
	[Voy Or Flt #] [varchar](2000) NULL,
	[Etd Date] [varchar](200) NULL,
	[Atd Date] [varchar](200) NULL,
	[Eta Date] [varchar](200) NULL,
	[Ata Date] [varchar](200) NULL,
	[Mrr Number] [varchar](200) NULL,
	[Mrr Created Date] [varchar](200) NULL,
	[Mrr Posted Date] [varchar](200) NULL,
	[Mrr Quantity] [varchar](200) NULL,
	[Osd Number] [varchar](2000) NULL,
	[Osd Created Date] [varchar](200) NULL,
	[Osd Qty] [varchar](200) NULL,
	[Osd Type] [varchar](2000) NULL,
	[Osd Request Action] [varchar](2000) NULL,
	[Osd Action Taken] [varchar](2000) NULL,
	[Osd Closed Date] [varchar](200) NULL,
	[Balance Rn Qty] [varchar](200) NULL,
	[Balance Mrr Qty] [varchar](2000) NULL,
	[Buyer] [varchar](2000) NULL,
	[Expeditor] [varchar](2000) NULL,
	[Package Manager] [varchar](2000) NULL,
	[Item Comments] [varchar](4000)NULL,
	[Header Comment] [varchar](4000) NULL,
	[Agent 1 Ltc Comments] [varchar](4000) NULL,
	[Agent 2 Ltc Comments] [varchar](4000) NULL,
	[Color] [varchar](2000) NULL,
	[Is_Master_Tag] [varchar](2000) NULL,
	[CreatedDateTime] [varchar](2000) NULL,
	[month_end_date] [Varchar] (200)
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
