

DECLARE @Date DATETIME;

DECLARE @v_pipelinename varchar(150);

 

 

SET @Date = GETDATE();

SET @v_pipelinename='pl_sample_fss_revenue_stagejson_master_pipeline'

 

 
DELETE FROM PLP_PIPELINE WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])

    VALUES (@v_pipelinename,'FSS','Excel File to Syn Stage JSON',NULL,1,'chhaya.kotian@mcdermott.com',@Date,47)

 

 

/*

--PLP Parammeter

INSERT INTO [dbo].[plp_parameter]

([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])

     VALUES('stage_table','PIPELINE','stage table name along with schema to be passed parameter','T','1','500',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

 

 

--PLP Parammeter

INSERT INTO [dbo].[plp_parameter]

([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])

     VALUES('version_no','PIPELINE_INCREMENTAL','Version number to indicate which version was loaded.','T','1','200',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

*/ --one time for all pipleines.

 

/*****************************************/ 
DELETE FROM [dbo].[plp_pipeline_parameter] WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline Parameter

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','file_name',5,'file_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','input_file_name',7,'input_file_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','lastrundate',8,'lastrundate','IN','Date used to store when raw was last run',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','version_no',9,'version_no','IN','version number to indicate latest load. Incremented everyrun success or failed',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','stage_table',10,'stage_table','IN','stage_table name with schema e.g. gpd.scm_procurement',1,'chhaya.kotian@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

VALUES(@v_pipelinename,'NetworkFolder','load_name',11,'load_name','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)


--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','input_file_system',11,'input_file_system','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_1',12,'SQL_Script_1','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 

--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_2',13,'SQL_Script_2','IN',NULL,1,'chhaya.kotian@mcdermott.com',@Date)

 
/*************************************************/
 


DELETE FROM [plp_parameter_value]  WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline values

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('start_date','2021-10-07 11:33:55',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('end_date','currdate',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('folder_path','Project_Data/FSS',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('file_system','mdr-staging-data',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('file_name','fss_revenue',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('source_directory','Development/FSS/Revenue',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('input_file_name','*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('stage_table','fss.stage_fss_revenue',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('load_name','fss_revenue_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('input_file_system','mdr-raw-data',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('SQL_Script_1','select * from',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

--    VALUES('SQL_Script_2','select * from',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 


 

/***********************/


 


/**********************************/
DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_revenue_JSON'
INSERT INTO GENERIC_JSON_HEADER VALUES

('fss_revenue_JSON','fss_revenue_JSON','fss.stage_fss_revenue','fss.stage_fss_revenue_v',

'fss.error_fss_revenue_v','Y','Y')
DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_revenue_JSON'

INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','zVersionNo','Int','NI',NULL,'[zVersionNo]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','zSourceFileName','Varchar(Max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','#','Varchar(Max)','V',NULL,'[#]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Business Line','Varchar(Max)','V',NULL,'[Business Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Project No.','Varchar(Max)','V',NULL,'[Project No.]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','New/ CO','Varchar(Max)','V',NULL,'[New/ CO]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','JV / Non-JV','Varchar(Max)','V',NULL,'[JV/Non-JV]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','External Product Line','Varchar(Max)','V',NULL,'[External Product Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Project Title','Varchar(Max)','V',NULL,'[Project Title]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Customer','Varchar(Max)','V',NULL,'[Customer]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan Q Latest Update HYP','Money','N',NULL,'[Jan Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb Q Latest Update HYP','Money','N',NULL,'[Feb Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar Q Latest Update HYP','Money','N',NULL,'[Mar Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update HYP','Money','N',NULL,'[Jul Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update HYP','Money','N',NULL,'[Aug Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update HYP','Money','N',NULL,'[Sep Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update HYP','Money','N',NULL,'[Jul Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update HYP','Money','N',NULL,'[Aug Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update HYP','Money','N',NULL,'[Sep Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct Q Latest Update HYP','Money','N',NULL,'[Oct Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov Q Latest Update HYP','Money','N',NULL,'[Nov Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec Q Latest Update HYP','Money','N',NULL,'[Dec Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Q Latest Update HYP','Money','N',NULL,'[Total  Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x1','Varchar(20)','V',NULL,'[x1]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan Q Latest Update ADJ','Money','N',NULL,'[Jan Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb Q Latest Update ADJ','Money','N',NULL,'[Feb Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar Q Latest Update ADJ','Money','N',NULL,'[Mar Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update ADJ','Money','N',NULL,'[Jul Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update ADJ','Money','N',NULL,'[Aug Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update ADJ','Money','N',NULL,'[Sep Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update ADJ','Money','N',NULL,'[Jul Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update ADJ','Money','N',NULL,'[Aug Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update ADJ','Money','N',NULL,'[Sep Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct Q Latest Update ADJ','Money','N',NULL,'[Oct Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov Q Latest Update ADJ','Money','N',NULL,'[Nov Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec Q Latest Update ADJ','Money','N',NULL,'[Dec Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Q Latest Update ADJ','Money','N',NULL,'[Total  Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','X2','Varchar(20)','V',NULL,'[X2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan Q Latest Update ','Money','N',NULL,'[Jan Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb Q Latest Update ','Money','N',NULL,'[Feb Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar Q Latest Update ','Money','N',NULL,'[Mar Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update ','Money','N',NULL,'[Jul Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update ','Money','N',NULL,'[Aug Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update ','Money','N',NULL,'[Sep Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Q Latest Update ','Money','N',NULL,'[Jul Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Q Latest Update ','Money','N',NULL,'[Aug Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Q Latest Update ','Money','N',NULL,'[Sep Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct Q Latest Update ','Money','N',NULL,'[Oct Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov Q Latest Update ','Money','N',NULL,'[Nov Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec Q Latest Update ','Money','N',NULL,'[Dec Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Q Latest Update','Money','N',NULL,'[Total  Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','X3','Varchar(20)','V',NULL,'[X3]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan MB','Money','N',NULL,'[Jan MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb MB','Money','N',NULL,'[Feb MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar MB','Money','N',NULL,'[Mar MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Apr MB','Money','N',NULL,'[Apr MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','May MB','Money','N',NULL,'[May MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jun MB','Money','N',NULL,'[Jun MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul MB','Money','N',NULL,'[Jul MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug MB','Money','N',NULL,'[Aug MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep MB','Money','N',NULL,'[Sep MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct MB','Money','N',NULL,'[Oct MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov MB','Money','N',NULL,'[Nov MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec MB','Money','N',NULL,'[Dec MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  MB','Money','N',NULL,'[Total  MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','X4','Varchar(20)','V',NULL,'[X4]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan Delta MB','Money','N',NULL,'[Jan Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb Delta MB','Money','N',NULL,'[Feb Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar Delta MB','Money','N',NULL,'[Mar Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Apr Delta MB','Money','N',NULL,'[Apr Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','May Delta MB','Money','N',NULL,'[May Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jun Delta MB','Money','N',NULL,'[Jun Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Delta MB','Money','N',NULL,'[Jul Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Delta MB','Money','N',NULL,'[Aug Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Delta MB','Money','N',NULL,'[Sep Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct Delta MB','Money','N',NULL,'[Oct Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov Delta MB','Money','N',NULL,'[Nov Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec Delta MB','Money','N',NULL,'[Dec Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Delta Delta MB','Money','N',NULL,'[Delta Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x5','Varchar(20)','V',NULL,'[x5]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Prev Qtr','Money','N',NULL,'[Total  Prev Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x6','Varchar(20)','V',NULL,'[x6]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Delta Prev Qtr','Money','N',NULL,'[Total  Delta Prev Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x7','Varchar(20)','V',NULL,'[x7]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  Current Qtr','Money','N',NULL,'[Total  Current Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x8','Varchar(20)','V',NULL,'[x8]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Delta Current Qtr','Money','N',NULL,'[Delta Current Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x9','Varchar(20)','V',NULL,'[x9]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan F2','Money','N',NULL,'[Jan F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb F2','Money','N',NULL,'[Feb F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar F2','Money','N',NULL,'[Mar F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Apr F2','Money','N',NULL,'[Apr F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','May F2','Money','N',NULL,'[May F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jun F2','Money','N',NULL,'[Jun F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul F2','Money','N',NULL,'[Jul F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug F2','Money','N',NULL,'[Aug F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep F2','Money','N',NULL,'[Sep F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct F2','Money','N',NULL,'[Oct F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov F2','Money','N',NULL,'[Nov F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec F2','Money','N',NULL,'[Dec F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Total  F2','Money','N',NULL,'[Total  F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x10','Varchar(20)','V',NULL,'[x10]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jan Delta F2','Money','N',NULL,'[Jan Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Feb Delta F2','Money','N',NULL,'[Feb Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Mar Delta F2','Money','N',NULL,'[Mar Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Apr Delta F2','Money','N',NULL,'[Apr Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','May Delta F2','Money','N',NULL,'[May Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jun Delta F2','Money','N',NULL,'[Jun Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Jul Delta F2','Money','N',NULL,'[Jul Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Aug Delta F2','Money','N',NULL,'[Aug Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Sep Delta F2','Money','N',NULL,'[Sep Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Oct Delta F2','Money','N',NULL,'[Oct Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Nov Delta F2','Money','N',NULL,'[Nov Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Dec Delta F2','Money','N',NULL,'[Dec Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Delta F2','Money','N',NULL,'[Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','x11','Varchar(20)','V',NULL,'[x11]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_revenue_JSON','Variance Comments','Varchar(Max)','V',NULL,'[Variance Comments]','Y')


 

/*

create schema fss

select * from generic_json_detail where json_column_data_type ='date'

--drop table fss.stage_fss_reportingperiod

SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

*/ 

CREATE TABLE [fss].[stage_fss_revenue]

(

    [rssk] [bigint] IDENTITY(1,1) NOT NULL,

    [JSON_Attribute] [varchar](8000) NULL

)

WITH

(

    DISTRIBUTION = ROUND_ROBIN,

    CLUSTERED COLUMNSTORE INDEX

)

GO

 

/*


select * from  fss.stage_fss_revenue
*/
 

 

 

--TO BE EXECUTED ONLY WHEN IT IS  READY FOR QA--

/*

 

 

declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_certificatestatus_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_procurement_status' and reprocessing_table_name = 'gpd.reprocess_dim_entp_material_request_milestone'

    if isnull(@count,0) = 0

begin

        insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)

     values ('pl_certificatestatus_coconsole_master_pipeline','gpd.NCSA_procurement_status','gpd.reprocess_dim_entp_material_request_milestone','dbo.dim_entp_material_request_milestone')

end

 

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_procurement_status_excel_master_pipeline' and stage_table_name = 'gpd.NCSA_procurement_status' and reprocessing_table_name = 'gpd.reprocess_dim_entp_material_request_header'

    if isnull(@count,0) = 0

begin

        insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)

     values ('pl_procurement_status_excel_master_pipeline','gpd.NCSA_procurement_status','gpd.reprocess_dim_entp_material_request_header','dbo.dim_entp_material_request_header')

end;

 
 */
 

