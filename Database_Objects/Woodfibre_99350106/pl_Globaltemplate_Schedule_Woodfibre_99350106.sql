drop table epr.Globaltemplate_Schedule_Woodfibre_99350106

delete from [dbo].[plp_pipeline]
where pipeline_code ='pl_Globaltemplate_Schedule_Woodfibre_99350106'
delete from [dbo].[plp_pipeline_parameter]
where pipeline_code ='pl_Globaltemplate_Schedule_Woodfibre_99350106'
delete from plp_parameter_value
where pipeline_code ='pl_Globaltemplate_Schedule_Woodfibre_99350106'


create table epr.Globaltemplate_Schedule_Woodfibre_99350106
(
[Project Number]   varchar(200) NULL,
[Contract Number]   varchar(500) NULL,
[Id]   varchar(200) NULL,
[Description]   varchar(1000) NULL,
[Original Duration]   varchar(200) NULL,
[Remaining Duration]   varchar(200) NULL,
[Start]   varchar(200) NULL,
[Finish]   varchar(200) NULL,
[Total Float]   varchar(200) NULL,
[Actual Start]   varchar(200) NULL,
[Actual Finish]   varchar(200) NULL,
[Free Float]   varchar(200) NULL,
[Late Start]   varchar(200) NULL,
[Late Finish]   varchar(200) NULL,
[Number Of Discrete Successors]   varchar(500) NULL,
[Is Out Of Sequence]   varchar(200) NULL,
[Activity Type Ex]   varchar(200) NULL,
[Critical]   varchar(200) NULL,
[Baseline Start]   varchar(200) NULL,
[Baseline Finish]   varchar(500) NULL,
[Project Time Now]   varchar(500) NULL,
[Baseline Project Time Now]   varchar(200) NULL,
[Previous Actual Start]   varchar(200) NULL,
[Previous Actual Finish]   varchar(200) NULL,
[Longest Path]   varchar(200) NULL,
[Primary Constraint]   varchar(200) NULL,
[Primary Constraint Date]   varchar(200) NULL,
[Secondary Constraint]   varchar(200) NULL,
[Secondary Constraint Date]   varchar(200) NULL,
[Expected Finish]   varchar(200) NULL,
[Suspend Date]   varchar(200) NULL,
[Resume Date]   varchar(200) NULL,
[Number of Predecessors]   varchar(200) NULL,
[Number of FS Predecessors]   varchar(200) NULL,
[Number of SS Predecessors]   varchar(200) NULL,
[Number of SF Predecessors]   varchar(200) NULL,
[Number of FF Predecessors]   varchar(200) NULL,
[Number of Successors]   varchar(200) NULL,
[Number of FS Successors]   varchar(200) NULL,
[Number of SS Successors]   varchar(200) NULL,
[Number of SF Successors]   varchar(200) NULL,
[Number of FF Successors]   varchar(200) NULL,
[Number of Lags]   varchar(200) NULL,
[Number of Successor Lags]   varchar(200) NULL,
[Number of Successor Leads]   varchar(200) NULL,
[Number of Leads]   varchar(200) NULL,
[Minimum Lag]   varchar(200) NULL,
[Maximum Lag]   varchar(200) NULL,
[WBS Level]   varchar(200) NULL,
[Baseline Duration]   varchar(200) NULL,
[Actual Duration]   varchar(200) NULL,
[Calendar]   varchar(500) NULL,
[Activity Status]   varchar(200) NULL,
[Physical % Complete]   varchar(200) NULL,
[Baseline Work]   varchar(200) NULL,
[Actual Work]   varchar(200) NULL,
[Remaining Work]   varchar(200) NULL,
[Total Work]   varchar(200) NULL,
[WBS Code]   varchar(1000) NULL,
[WBS Name]   varchar(1000) NULL,
[Earned Value Work]   varchar(200) NULL,
[Planned Value Work]   varchar(200) NULL,
[Earned Value Technique]   varchar(200) NULL,
[GLOBAL - PHASE]   varchar(200) NULL,
[GLOBAL - EXECUTED BY TYPE]   varchar(200) NULL,
[GLOBAL - CHANGE MANAGEMENT]   varchar(200) NULL,
[GLOBAL - PRIME]   varchar(500) NULL,
[GLOBAL - SUBPRIME]   varchar(200) NULL,
[GLOBAL - FUNCTION]   varchar(200) NULL,
[GLOBAL - OFFICE]   varchar(200) NULL,
[GLOBAL - SUPPLY CHAIN]   varchar(200) NULL,
[GLOBAL - PRIME (GCOA V11)]   varchar(500) NULL,
[GLOBAL - PRIME (GCOA V13)]   varchar(200) NULL,
[GLOBAL - SUBPRIME (GCOA V11)]   varchar(200) NULL,
[GLOBAL - PRIME (GCOA V13)_1]   varchar(200) NULL,
[GLOBAL - MILESTONES]   varchar(200) NULL,
[SourceFileName] varchar(200) NULL,
[CreatedDateTime] datetime NULL,
[project_number] varchar(200) NULL

)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_Globaltemplate_Schedule_Woodfibre_99350106','NCSA','Manual Excel File Direct Source To Synapse',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027',9)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','source_directory',3,'source_directory','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','table_name',5,'table_name','IN','table_name with schema e.g. gpd.scm_procurement',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','logicapp_url',6,'logicapp_url','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','project_number',7,'project_number','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','range',7,'range','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder','file_name',7,'file_name','IN',NULL,1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2025-04-07 11:33:55',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','01. Woodfibre\011. Files for Data Lake Upload',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('table_name','Globaltemplate_Schedule_Woodfibre_99350106',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project_number','99350106',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('range','A1:BX50000',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','Global Template Schedule PMR Mega Ribbon - Woodfibre.xlsx',1,'sundararaju.batta@mcdermott.com','2025-04-16 08:08:48.027','pl_Globaltemplate_Schedule_Woodfibre_99350106','NetworkFolder')