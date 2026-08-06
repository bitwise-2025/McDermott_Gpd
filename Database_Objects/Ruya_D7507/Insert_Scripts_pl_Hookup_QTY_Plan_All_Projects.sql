truncate table epr.Qty_Files_Data_Hookup_D7068_Unpivot

alter table epr.Qty_Files_Data_Hookup_D7068_Unpivot
add "Cumulative Actual Qty as of Fcst Date" varchar (500);

alter table epr.Qty_Files_Data_Hookup_D7068_Unpivot
add "To Go Qty as of Fcst Date" varchar (500);

alter table epr.Qty_Files_Data_Hookup_D7068_Unpivot_Stage
add "Cumulative Actual Qty as of Fcst Date" varchar (500);

alter table epr.Qty_Files_Data_Hookup_D7068_Unpivot_Stage
add "To Go Qty as of Fcst Date" varchar (500);


drop table [epr].[QTY_Plan_2]
drop table [epr].[QTY_Plan_2_Stage]

delete [plp_pipeline]
where  pipeline_code ='pl_Hookup_QTY_Plan_All_Projects'

delete [plp_pipeline_parameter]
where  pipeline_code ='pl_Hookup_QTY_Plan_All_Projects'

delete plp_parameter_value
where  pipeline_code ='pl_Hookup_QTY_Plan_All_Projects'

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','start_date','1','start_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','end_date','2','end_date','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO
insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','table_name','3','table_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','logicapp_url','4','logicapp_url','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','project_number','5','project_number','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO

insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','source_directory','6','source_directory','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')
GO


insert into [dbo].[plp_pipeline_parameter] (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm) values ('pl_Hookup_QTY_Plan_All_Projects','NetworkFolder','file_name','7','file_name','IN','NULL','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027')








insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('project_number','D7068','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('table_name','Qty_Files_Data_Hookup_D7068_Unpivot_Stage','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('source_directory','09. D7068 - MIP-1\01. HDMS V3.0\04A. Quantity File','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO



insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('file_name','*.xlsm','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')




insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('start_date','2024-02-03 08:08:48.027','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO

insert into [dbo].[plp_parameter_value] (parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code) values ('end_date','currdate','1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027','pl_Hookup_QTY_Plan_All_Projects','NetworkFolder')
GO

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_Hookup_QTY_Plan_All_Projects','NCSA','SMAT Hookup Progress Data Extract',NULL,'1','sundararaju.batta@mcdermott.com','2025-03-11 08:08:48.027',9)

create table epr.Qty_Files_Data_Hookup_D7068_Unpivot
(
"Work_Description_ID"	varchar(200),
"SFN"	varchar(500),
"TaskSheet_No"	varchar(200),
"Task_Name"	varchar(2000),
"Work_Type"	varchar(2000),
"P6 Start Date"	varchar(200),
"P6 Finish Date"	varchar(200),
Duration	varchar(200),
"Baseline Revision"	varchar(200),
"Baseline Qty"	varchar(200),
"AFC Qty" varchar(200),
"Is Quantifiable (Yes/No)"  varchar(200),
"Previous Actual Qty" varchar(200),
"Actual Qty" varchar(200),
"To Go Qty" varchar(200),
"Daily Qty"  varchar(200),
spread_date  varchar(200),
spread_unit  varchar(200),
project_number varchar(200),
SourceFileName varchar(200),
CreatedDateTime varchar(200)
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

select * into epr.Qty_Files_Data_Hookup_D7068_Unpivot_Stage from epr.Qty_Files_Data_Hookup_D7068_Unpivot where 1=2;