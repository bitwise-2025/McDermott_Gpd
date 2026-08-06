insert into [dbo].[plp_pipeline] (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NCSA','Manual Excel File Direct Source To Synapse','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','9')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','table_name','3','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','project_number','5','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','source_directory','6','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027')
GO







insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7650','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','BIR_Global_Expediting_Report_Ummshaif_D7650','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','06. D7650 - Umm Shaif\04. Procurement\01. SMAT Files','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','BIR_EXPG_001_Global_Expediting_Rpt.csv','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2025-02-03 08:08:48.027','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-02-13 08:08:48.027','pl_BIR_Global_Expediting_Report_Ummshaif_D7650','NetworkFolder')
GO


/****** Object:  Table [epr].[BIR_Global_Expediting_Report_Ummshaif_D7650]    Script Date: 2/25/2025 12:16:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [epr].[BIR_Global_Expediting_Report_Ummshaif_D7650]
(
	[Project] [nvarchar](max) NULL,
	[Discipline] [nvarchar](max) NULL,
	[Requisition No] [nvarchar](max) NULL,
	[Req Supp] [nvarchar](max) NULL,
	[Req LI] [nvarchar](max) NULL,
	[Req Sub LI] [nvarchar](max) NULL,
	[PO No] [nvarchar](max) NULL,
	[PO Rev No] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Issued] [nvarchar](max) NULL,
	[Approved Date] [nvarchar](max) NULL,
	[PO Status] [nvarchar](max) NULL,
	[Supplier] [nvarchar](max) NULL,
	[Supplier Name] [nvarchar](max) NULL,
	[Supplier City] [nvarchar](max) NULL,
	[Country of Origin] [nvarchar](max) NULL,
	[Supplier Country] [nvarchar](max) NULL,
	[Expediting Level] [nvarchar](max) NULL,
	[Inspection Level] [nvarchar](max) NULL,
	[Pos] [nvarchar](max) NULL,
	[Sub] [nvarchar](max) NULL,
	[IS Pos] [nvarchar](max) NULL,
	[IS Sub] [nvarchar](max) NULL,
	[Ident Short Description] [nvarchar](max) NULL,
	[Ident Code] [nvarchar](max) NULL,
	[Client Ident Code] [nvarchar](max) NULL,
	[Tag Number] [nvarchar](max) NULL,
	[Commodity Code] [nvarchar](max) NULL,
	[Size1] [nvarchar](max) NULL,
	[Size2] [nvarchar](max) NULL,
	[Size3] [nvarchar](max) NULL,
	[Size4] [nvarchar](max) NULL,
	[Order Qty] [nvarchar](max) NULL,
	[Item Ship Qty] [nvarchar](max) NULL,
	[Received Qty] [nvarchar](max) NULL,
	[Balance MRR Qty] [nvarchar](max) NULL,
	[Qty Unit] [nvarchar](max) NULL,
	[Item Ship Weight] [nvarchar](max) NULL,
	[Total ISH Weight] [nvarchar](max) NULL,
	[Weight Unit] [nvarchar](max) NULL,
	[Delivery Designation] [nvarchar](max) NULL,
	[Routing Method] [nvarchar](max) NULL,
	[Transit Days] [nvarchar](max) NULL,
	[Incoterm] [nvarchar](max) NULL,
	[Delivery Place] [nvarchar](max) NULL,
	[Prom Contract] [nvarchar](max) NULL,
	[Forecasted Delivery Date] [nvarchar](max) NULL,
	[Contractual Float] [nvarchar](max) NULL,
	[Pred On Site] [nvarchar](max) NULL,
	[Req On Site] [nvarchar](max) NULL,
	[ROS Float] [nvarchar](max) NULL,
	[NOI Nr] [nvarchar](max) NULL,
	[NOI Date] [nvarchar](max) NULL,
	[NOI Qty] [nvarchar](max) NULL,
	[NOI Destination] [nvarchar](max) NULL,
	[NOI Plan] [nvarchar](max) NULL,
	[NOI Fcst] [nvarchar](max) NULL,
	[NOI Act] [nvarchar](max) NULL,
	[IRC Nr] [nvarchar](max) NULL,
	[IRC Approved Date] [nvarchar](max) NULL,
	[IRC Qty] [nvarchar](max) NULL,
	[Balance IRC Qty] [nvarchar](max) NULL,
	[Act Insp Date] [nvarchar](max) NULL,
	[IRC Destination] [nvarchar](max) NULL,
	[IRC Plan] [nvarchar](max) NULL,
	[IRC Fcst] [nvarchar](max) NULL,
	[IRC Act] [nvarchar](max) NULL,
	[Release Note Nr] [nvarchar](max) NULL,
	[RN Date] [nvarchar](max) NULL,
	[RN Qty] [nvarchar](max) NULL,
	[Balance RN Qty] [nvarchar](max) NULL,
	[RN Approved Date] [nvarchar](max) NULL,
	[RN Delivery Date] [nvarchar](max) NULL,
	[RN Ready Date] [nvarchar](max) NULL,
	[Hand Over Destination] [nvarchar](max) NULL,
	[Hand Over Plan] [nvarchar](max) NULL,
	[Hand Over Fcst] [nvarchar](max) NULL,
	[Hand Over Act] [nvarchar](max) NULL,
	[1ST Ship Destination] [nvarchar](max) NULL,
	[1ST Ship Plan] [nvarchar](max) NULL,
	[1ST Ship Fcst] [nvarchar](max) NULL,
	[1ST Ship Act] [nvarchar](max) NULL,
	[2ND Ship Destination] [nvarchar](max) NULL,
	[2ND Ship Plan] [nvarchar](max) NULL,
	[2ND Ship Fcst] [nvarchar](max) NULL,
	[2ND Ship Act] [nvarchar](max) NULL,
	[3RD Ship Destination] [nvarchar](max) NULL,
	[3RD Ship Plan] [nvarchar](max) NULL,
	[3RD Ship Fcst] [nvarchar](max) NULL,
	[3RD Ship Act] [nvarchar](max) NULL,
	[Traffic Arr Destination] [nvarchar](max) NULL,
	[Traffic Arr Plan] [nvarchar](max) NULL,
	[Traffic Arr Fcst] [nvarchar](max) NULL,
	[Traffic Arr Act] [nvarchar](max) NULL,
	[Arr On Site Destination] [nvarchar](max) NULL,
	[Arr On Site Plan] [nvarchar](max) NULL,
	[Arr On Site Fcst] [nvarchar](max) NULL,
	[Arr On Site Act] [nvarchar](max) NULL,
	[SLI No (Carrier)] [nvarchar](max) NULL,
	[Voy or Flt#] [nvarchar](max) NULL,
	[BL# or AWB#] [nvarchar](max) NULL,
	[ETD Date] [nvarchar](max) NULL,
	[ATD Date] [nvarchar](max) NULL,
	[ETA Date] [nvarchar](max) NULL,
	[ATA Date] [nvarchar](max) NULL,
	[Loading Point] [nvarchar](max) NULL,
	[Unloading Point] [nvarchar](max) NULL,
	[Logistics Comments/Status 1 (Name1/Agent1)] [nvarchar](max) NULL,
	[Logistics Comments/Status 2 (Name2/Agent2)] [nvarchar](max) NULL,
	[MRR Number] [nvarchar](max) NULL,
	[MRR Rev Nr] [nvarchar](max) NULL,
	[(1st of) MRR Created Date(s)] [nvarchar](max) NULL,
	[(Earliest) Matl Recv Date] [nvarchar](max) NULL,
	[MRR Posted Date] [nvarchar](max) NULL,
	[MRR Quantity] [nvarchar](max) NULL,
	[OSD Number] [nvarchar](max) NULL,
	[OSD Created Date] [nvarchar](max) NULL,
	[OSD Qty] [nvarchar](max) NULL,
	[OSD Type] [nvarchar](max) NULL,
	[OSD Request Action] [nvarchar](max) NULL,
	[OSD Action Taken] [nvarchar](max) NULL,
	[OSD Closed Date] [nvarchar](max) NULL,
	[Buyer] [nvarchar](max) NULL,
	[Expeditor] [nvarchar](max) NULL,
	[Package Manager] [nvarchar](max) NULL,
	[Item Comments] [nvarchar](max) NULL,
	[Header Comment] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[project_number] [nvarchar](max) NULL,
	[CreatedDateTime] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO




