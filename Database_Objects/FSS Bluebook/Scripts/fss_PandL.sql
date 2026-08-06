

DECLARE @Date DATETIME;

DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();

SET @v_pipelinename='pl_sample_fss_PandL_stagejson_master_pipeline'

 
DELETE FROM PLP_PIPELINE WHERE PIPELINE_CODE =@v_pipelinename
--PLP Pipeline

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])

    VALUES (@v_pipelinename,'FSS','Excel File to Syn Stage JSON',NULL,1,'chhaya.kotian@mcdermott.com',@Date,47) 

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

     VALUES('file_name','fss_PandL',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('source_directory','Development/FSS/PandL',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('input_file_name','*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('stage_table','fss.stage_fss_PandL',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('load_name','fss_PandL_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

/**********************************/
DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_PandL_JSON'

INSERT INTO GENERIC_JSON_HEADER VALUES
('fss_PandL_JSON','fss_PandL_JSON','fss.stage_fss_PandL','fss.stage_fss_PandL_v','fss.error_fss_PandL_v','Y','Y')

DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_PandL_JSON'

INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','zVersionNo','Int','NI',NULL,'[zVersionNo]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','zSourceFileName','Varchar(Max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Column 1','Varchar(Max)','V',NULL,'[Column 1]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Column 2','Varchar(Max)','V',NULL,'[Column 2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Seq No','Int','NI',NULL,'[Seq No]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sub Title','Varchar(Max)','V',NULL,'[Sub Title]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Calculation','Varchar(Max)','V',NULL,'[Calculation]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Business Line','Varchar(Max)','V',NULL,'[Business Line]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','P&L Items','Varchar(Max)','V',NULL,'[P&L Items]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan Curr Qtr Update HYP','Money','N',NULL,'[Jan Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb Curr Qtr Update HYP','Money','N',NULL,'[Feb Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar Curr Qtr Update HYP','Money','N',NULL,'[Mar Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr Curr Qtr Update HYP','Money','N',NULL,'[Apr Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May Curr Qtr Update HYP','Money','N',NULL,'[May Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun Curr Qtr Update HYP','Money','N',NULL,'[Jun Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul Curr Qtr Update HYP','Money','N',NULL,'[Jul Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug Curr Qtr Update HYP','Money','N',NULL,'[Aug Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep Curr Qtr Update HYP','Money','N',NULL,'[Sep Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct Curr Qtr Update HYP','Money','N',NULL,'[Oct Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov Curr Qtr Update HYP','Money','N',NULL,'[Nov Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec Curr Qtr Update HYP','Money','N',NULL,'[Dec Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total Curr Qtr Update HYP','Money','N',NULL,'[Total Curr Qtr Update HYP]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','X1','Varchar(Max)','V',NULL,'[X1]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Curr Qtr Update ADJ','Money','N',NULL,'[Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb Curr Qtr Update ADJ','Money','N',NULL,'[Feb Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar Curr Qtr Update ADJ','Money','N',NULL,'[Mar Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr Curr Qtr Update ADJ','Money','N',NULL,'[Apr Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May Curr Qtr Update ADJ','Money','N',NULL,'[May Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun Curr Qtr Update ADJ','Money','N',NULL,'[Jun Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul Curr Qtr Update ADJ','Money','N',NULL,'[Jul Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug Curr Qtr Update ADJ','Money','N',NULL,'[Aug Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep Curr Qtr Update ADJ','Money','N',NULL,'[Sep Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct Curr Qtr Update ADJ','Money','N',NULL,'[Oct Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov Curr Qtr Update ADJ','Money','N',NULL,'[Nov Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec Curr Qtr Update ADJ','Money','N',NULL,'[Dec Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total Curr Qtr Update ADJ','Money','N',NULL,'[Total Curr Qtr Update ADJ]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x2','Varchar(Max)','V',NULL,'[x2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan Curr Qtr Update','Money','N',NULL,'[Jan Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb Curr Qtr Update','Money','N',NULL,'[Feb Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar Curr Qtr Update','Money','N',NULL,'[Mar Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr Curr Qtr Update','Money','N',NULL,'[Apr Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May Curr Qtr Update','Money','N',NULL,'[May Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun Curr Qtr Update','Money','N',NULL,'[Jun Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul Curr Qtr Update','Money','N',NULL,'[Jul Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug Curr Qtr Update','Money','N',NULL,'[Aug Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep Curr Qtr Update','Money','N',NULL,'[Sep Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct Curr Qtr Update','Money','N',NULL,'[Oct Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov Curr Qtr Update','Money','N',NULL,'[Nov Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec Curr Qtr Update','Money','N',NULL,'[Dec Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total Curr Qtr Update','Money','N',NULL,'[Total Curr Qtr Update]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x3','Varchar(Max)','V',NULL,'[x3]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan MB','Money','N',NULL,'[Jan MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb MB','Money','N',NULL,'[Feb MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar MB','Money','N',NULL,'[Mar MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr MB','Money','N',NULL,'[Apr MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May MB','Money','N',NULL,'[May MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun MB','Money','N',NULL,'[Jun MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul MB','Money','N',NULL,'[Jul MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug MB','Money','N',NULL,'[Aug MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep MB','Money','N',NULL,'[Sep MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct MB','Money','N',NULL,'[Oct MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov MB','Money','N',NULL,'[Nov MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec MB','Money','N',NULL,'[Dec MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total MB','Money','N',NULL,'[Total MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x4','Varchar(Max)','V',NULL,'[x4]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan Delta MB','Money','N',NULL,'[Jan Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb Delta MB','Money','N',NULL,'[Feb Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar Delta MB','Money','N',NULL,'[Mar Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr Delta MB','Money','N',NULL,'[Apr Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May Delta MB','Money','N',NULL,'[May Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun Delta MB','Money','N',NULL,'[Jun Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul Delta MB','Money','N',NULL,'[Jul Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug Delta MB','Money','N',NULL,'[Aug Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep Delta MB','Money','N',NULL,'[Sep Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct Delta MB','Money','N',NULL,'[Oct Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov Delta MB','Money','N',NULL,'[Nov Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec Delta MB','Money','N',NULL,'[Dec Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total Delta MB','Money','N',NULL,'[Total Delta MB]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x5','Varchar(Max)','V',NULL,'[x5]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan F2','Money','N',NULL,'[Jan F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb F2','Money','N',NULL,'[Feb F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar F2','Money','N',NULL,'[Mar F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr F2','Money','N',NULL,'[Apr F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May F2','Money','N',NULL,'[May F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun F2','Money','N',NULL,'[Jun F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul F2','Money','N',NULL,'[Jul F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug F2','Money','N',NULL,'[Aug F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep F2','Money','N',NULL,'[Sep F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct F2','Money','N',NULL,'[Oct F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov F2','Money','N',NULL,'[Nov F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec F2','Money','N',NULL,'[Dec F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total F2','Money','N',NULL,'[Total F2]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x6','Varchar(Max)','V',NULL,'[x6]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jan F2 Delta','Money','N',NULL,'[Jan F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Feb F2 Delta','Money','N',NULL,'[Feb F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Mar F2 Delta','Money','N',NULL,'[Mar F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Apr F2 Delta','Money','N',NULL,'[Apr F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','May F2 Delta','Money','N',NULL,'[May F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jun F2 Delta','Money','N',NULL,'[Jun F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Jul F2 Delta','Money','N',NULL,'[Jul F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Aug F2 Delta','Money','N',NULL,'[Aug F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Sep F2 Delta','Money','N',NULL,'[Sep F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Oct F2 Delta','Money','N',NULL,'[Oct F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Nov F2 Delta','Money','N',NULL,'[Nov F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Dec F2 Delta','Money','N',NULL,'[Dec F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Total F2 Delta','Money','N',NULL,'[Total F2 Delta]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','x7','Varchar(Max)','V',NULL,'[x7]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Commentary','Varchar(Max)','V',NULL,'[Commentary]','Y')
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Category','Varchar(Max)','V',NULL,'[Category]','Y')/*added by santosh on 28-08-2023*/
INSERT INTO generic_json_detail(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_PandL_JSON','Commentary2','Varchar(Max)','V',NULL,'[Commentary2]','Y')
 

/*

create schema fss

select * from generic_json_detail where json_column_data_type ='date'

--drop table fss.stage_fss_reportingperiod

SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

*/ 
CREATE TABLE [fss].[stage_fss_PandL]

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


select * from  fss.stage_fss_PandL
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
 

