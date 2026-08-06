DECLARE @Date DATETIME;

 

DECLARE @v_pipelinename varchar(150);

 

SET @Date = GETDATE();

 

SET @v_pipelinename='pl_sample_fss_gross_profit_stagejson_master_pipeline'

 

 

DELETE FROM PLP_PIPELINE WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline

 

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])

 

    VALUES (@v_pipelinename,'FSS','Excel File to Syn Stage JSON',NULL,1,'chhaya.kotian@mcdermott.com',@Date,47)

 

 

/*****************************************/ 
DELETE FROM [dbo].[plp_pipeline_parameter] WHERE PIPELINE_CODE =@v_pipelinename

 

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

 


/*************************************************/


 

 

DELETE FROM [plp_parameter_value]  WHERE PIPELINE_CODE =@v_pipelinename

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('start_date','2021-10-07 11:33:55',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('end_date','currdate',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/FSS',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','fss_gross_profit',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('source_directory','Development/FSS/GrossProfit',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('stage_table','fss.stage_fss_gross_profit',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('load_name','fss_gross_profit_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

 

 

/**********************************/
DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_gross_profit_JSON'
INSERT INTO GENERIC_JSON_HEADER VALUES

 

('fss_gross_profit_JSON','fss_gross_profit_JSON','fss.stage_fss_gross_profit','fss.stage_fss_gross_profit_v',
'fss.error_fss_gross_profit_v','Y','Y')

 

DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_gross_profit_JSON'

INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','zVersionNo','Int','NI',NULL,'[zVersionNo]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','zSourceFileName','Varchar(Max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','#','Varchar(Max)','V',NULL,'[#]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Business Line','Varchar(Max)','V',NULL,'[Business Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','External Product Line_duplicate','Varchar(Max)','V',NULL,'[External Product Line_duplicate]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Project No.','Varchar(Max)','V',NULL,'[Project No.]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','BL/PW','Varchar(Max)','V',NULL,'[BL/PW]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','External Product Line','Varchar(Max)','V',NULL,'[External Product Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Project Title','Varchar(Max)','V',NULL,'[Project Title]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Customer','Varchar(Max)','V',NULL,'[Customer]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan Q Latest Update HYP','Money','N',NULL,'[Jan Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb Q Latest Update HYP','Money','N',NULL,'[Feb Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar Q Latest Update HYP','Money','N',NULL,'[Mar Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr Q Latest Update HYP','Money','N',NULL,'[Apr Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May Q Latest Update HYP','Money','N',NULL,'[May Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun Q Latest Update HYP','Money','N',NULL,'[Jun Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul Q Latest Update HYP','Money','N',NULL,'[Jul Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug Q Latest Update HYP','Money','N',NULL,'[Aug Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep Q Latest Update HYP','Money','N',NULL,'[Sep Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct Q Latest Update HYP','Money','N',NULL,'[Oct Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov Q Latest Update HYP','Money','N',NULL,'[Nov Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec Q Latest Update HYP','Money','N',NULL,'[Dec Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Q Latest Update HYP','Money','N',NULL,'[Total  Q Latest Update HYP]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x1','Varchar(20)','V',NULL,'[x1]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan Q Latest Update ADJ','Money','N',NULL,'[Jan Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb Q Latest Update ADJ','Money','N',NULL,'[Feb Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar Q Latest Update ADJ','Money','N',NULL,'[Mar Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr Q Latest Update ADJ','Money','N',NULL,'[Apr Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May Q Latest Update ADJ','Money','N',NULL,'[May Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun Q Latest Update ADJ','Money','N',NULL,'[Jun Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul Q Latest Update ADJ','Money','N',NULL,'[Jul Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug Q Latest Update ADJ','Money','N',NULL,'[Aug Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep Q Latest Update ADJ','Money','N',NULL,'[Sep Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct Q Latest Update ADJ','Money','N',NULL,'[Oct Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov Q Latest Update ADJ','Money','N',NULL,'[Nov Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec Q Latest Update ADJ','Money','N',NULL,'[Dec Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Q Latest Update ADJ','Money','N',NULL,'[Total  Q Latest Update ADJ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','X2','Varchar(20)','V',NULL,'[X2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan Q Latest Update ','Money','N',NULL,'[Jan Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb Q Latest Update ','Money','N',NULL,'[Feb Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar Q Latest Update ','Money','N',NULL,'[Mar Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr Q Latest Update ','Money','N',NULL,'[Apr Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May Q Latest Update ','Money','N',NULL,'[May Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun Q Latest Update ','Money','N',NULL,'[Jun Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul Q Latest Update','Money','N',NULL,'[Jul Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug Q Latest Update','Money','N',NULL,'[Aug Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep Q Latest Update','Money','N',NULL,'[Sep Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct Q Latest Update ','Money','N',NULL,'[Oct Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov Q Latest Update ','Money','N',NULL,'[Nov Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec Q Latest Update ','Money','N',NULL,'[Dec Q Latest Update ]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Q Latest Update','Money','N',NULL,'[Total  Q Latest Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','X3','Varchar(20)','V',NULL,'[X3]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan MB','Money','N',NULL,'[Jan MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb MB','Money','N',NULL,'[Feb MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar MB','Money','N',NULL,'[Mar MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr MB','Money','N',NULL,'[Apr MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May MB','Money','N',NULL,'[May MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun MB','Money','N',NULL,'[Jun MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul MB','Money','N',NULL,'[Jul MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug MB','Money','N',NULL,'[Aug MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep MB','Money','N',NULL,'[Sep MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct MB','Money','N',NULL,'[Oct MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov MB','Money','N',NULL,'[Nov MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec MB','Money','N',NULL,'[Dec MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  MB','Money','N',NULL,'[Total  MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','X4','Varchar(20)','V',NULL,'[X4]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan Delta MB','Money','N',NULL,'[Jan Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb Delta MB','Money','N',NULL,'[Feb Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar Delta MB','Money','N',NULL,'[Mar Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr Delta MB','Money','N',NULL,'[Apr Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May Delta MB','Money','N',NULL,'[May Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun Delta MB','Money','N',NULL,'[Jun Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul Delta MB','Money','N',NULL,'[Jul Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug Delta MB','Money','N',NULL,'[Aug Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep Delta MB','Money','N',NULL,'[Sep Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct Delta MB','Money','N',NULL,'[Oct Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov Delta MB','Money','N',NULL,'[Nov Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec Delta MB','Money','N',NULL,'[Dec Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Delta Delta MB','Money','N',NULL,'[Delta Delta MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x5','Varchar(20)','V',NULL,'[x5]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Prev Qtr','Money','N',NULL,'[Total  Prev Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x6','Varchar(20)','V',NULL,'[x6]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Delta Prev Qtr','Money','N',NULL,'[Total  Delta Prev Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x7','Varchar(20)','V',NULL,'[x7]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  Current Qtr','Money','N',NULL,'[Total  Current Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x8','Varchar(20)','V',NULL,'[x8]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Delta Current Qtr','Money','N',NULL,'[Delta Current Qtr]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x9','Varchar(20)','V',NULL,'[x9]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan F2','Money','N',NULL,'[Jan F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb F2','Money','N',NULL,'[Feb F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar F2','Money','N',NULL,'[Mar F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr F2','Money','N',NULL,'[Apr F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May F2','Money','N',NULL,'[May F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun F2','Money','N',NULL,'[Jun F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul F2','Money','N',NULL,'[Jul F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug F2','Money','N',NULL,'[Aug F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep F2','Money','N',NULL,'[Sep F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct F2','Money','N',NULL,'[Oct F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov F2','Money','N',NULL,'[Nov F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec F2','Money','N',NULL,'[Dec F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Total  F2','Money','N',NULL,'[Total  F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x10','Varchar(20)','V',NULL,'[x10]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jan Delta F2','Money','N',NULL,'[Jan Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Feb Delta F2','Money','N',NULL,'[Feb Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Mar Delta F2','Money','N',NULL,'[Mar Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Apr Delta F2','Money','N',NULL,'[Apr Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','May Delta F2','Money','N',NULL,'[May Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jun Delta F2','Money','N',NULL,'[Jun Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Jul Delta F2','Money','N',NULL,'[Jul Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Aug Delta F2','Money','N',NULL,'[Aug Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Sep Delta F2','Money','N',NULL,'[Sep Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Oct Delta F2','Money','N',NULL,'[Oct Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Nov Delta F2','Money','N',NULL,'[Nov Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Dec Delta F2','Money','N',NULL,'[Dec Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Delta F2','Money','N',NULL,'[Delta F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','x11','Varchar(20)','V',NULL,'[x11]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES ('fss_gross_profit_JSON','Variance Comments','Varchar(Max)','V',NULL,'[Variance Comments]','Y')
 


/*
if exists (select 1 from [fss].[stage_fss_gross_profit])
begin 
drop table [fss].[stage_fss_gross_profit];
end
*/

CREATE TABLE [fss].[stage_fss_gross_profit]
(


    [rssk] [bigint] IDENTITY(1,1) NOT NULL,
    [JSON_Attribute] [varchar](8000) NULL
)

WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
)

 

 

--select * from  fss.stage_fss_gross_profit