
DECLARE @Date DATETIME;

DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();

SET @v_pipelinename='pl_sample_fss_functional_support_cost_stagejson_master_pipeline'

 
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

     VALUES('file_name','fss_functional_support_cost',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('source_directory','Development/FSS',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('input_file_name','*EXCOM*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('stage_table','fss.stage_fss_functional_support_cost',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

     VALUES('load_name','fss_functional_support_cost_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

/**********************************/
DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_functional_support_cost_JSON'

INSERT INTO GENERIC_JSON_HEADER VALUES
('fss_functional_support_cost_JSON','fss_functional_support_cost_JSON','fss.stage_fss_functional_support_cost','fss.stage_fss_functional_support_cost_v','fss.error_fss_functional_support_cost_v','Y','Y')

DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_functional_support_cost_JSON'


INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','zVersionNo','Int','NI',NULL,'[zVersionNo]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','zSourceFileName','Varchar(Max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','HFM Function','Varchar(Max)','V',NULL,'[HFM Function]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Business Line','Varchar(Max)','V',NULL,'[Business Line]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Category','Varchar(Max)','V',NULL,'[Category]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sub Title','Varchar(Max)','V',NULL,'[Sub Title]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Function Name','Varchar(Max)','V',NULL,'[Function Name]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan Curr Qtr Update Hyp','Money','N',NULL,'[Jan Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb Curr Qtr Update Hyp','Money','N',NULL,'[Feb Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar Curr Qtr Update Hyp','Money','N',NULL,'[Mar Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr Curr Qtr Update Hyp','Money','N',NULL,'[Apr Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May Curr Qtr Update Hyp','Money','N',NULL,'[May Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun Curr Qtr Update Hyp','Money','N',NULL,'[Jun Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul Curr Qtr Update Hyp','Money','N',NULL,'[Jul Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug Curr Qtr Update Hyp','Money','N',NULL,'[Aug Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep Curr Qtr Update Hyp','Money','N',NULL,'[Sep Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct Curr Qtr Update Hyp','Money','N',NULL,'[Oct Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov Curr Qtr Update Hyp','Money','N',NULL,'[Nov Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec Curr Qtr Update Hyp','Money','N',NULL,'[Dec Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total Curr Qtr Update Hyp','Money','N',NULL,'[Total Curr Qtr Update Hyp]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X1','Varchar(Max)','V',NULL,'[X1]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan Curr Qtr Update Adj','Money','N',NULL,'[Jan Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb Curr Qtr Update Adj','Money','N',NULL,'[Feb Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar Curr Qtr Update Adj','Money','N',NULL,'[Mar Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr Curr Qtr Update Adj','Money','N',NULL,'[Apr Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May Curr Qtr Update Adj','Money','N',NULL,'[May Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun Curr Qtr Update Adj','Money','N',NULL,'[Jun Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul Curr Qtr Update Adj','Money','N',NULL,'[Jul Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug Curr Qtr Update Adj','Money','N',NULL,'[Aug Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep Curr Qtr Update Adj','Money','N',NULL,'[Sep Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct Curr Qtr Update Adj','Money','N',NULL,'[Oct Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov Curr Qtr Update Adj','Money','N',NULL,'[Nov Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec Curr Qtr Update Adj','Money','N',NULL,'[Dec Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total Curr Qtr Update Adj','Money','N',NULL,'[Total Curr Qtr Update Adj]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X2','Varchar(Max)','V',NULL,'[X2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan Curr Qtr Update','Money','N',NULL,'[Jan Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb Curr Qtr Update','Money','N',NULL,'[Feb Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar Curr Qtr Update','Money','N',NULL,'[Mar Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr Curr Qtr Update','Money','N',NULL,'[Apr Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May Curr Qtr Update','Money','N',NULL,'[May Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun Curr Qtr Update','Money','N',NULL,'[Jun Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul Curr Qtr Update','Money','N',NULL,'[Jul Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug Curr Qtr Update','Money','N',NULL,'[Aug Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep Curr Qtr Update','Money','N',NULL,'[Sep Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct Curr Qtr Update','Money','N',NULL,'[Oct Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov Curr Qtr Update','Money','N',NULL,'[Nov Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec Curr Qtr Update','Money','N',NULL,'[Dec Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total Curr Qtr Update','Money','N',NULL,'[Total Curr Qtr Update]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X3','Varchar(Max)','V',NULL,'[X3]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan MB','Money','N',NULL,'[Jan MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb MB','Money','N',NULL,'[Feb MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar MB','Money','N',NULL,'[Mar MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr MB','Money','N',NULL,'[Apr MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May MB','Money','N',NULL,'[May MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun MB','Money','N',NULL,'[Jun MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul MB','Money','N',NULL,'[Jul MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug MB','Money','N',NULL,'[Aug MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep MB','Money','N',NULL,'[Sep MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct MB','Money','N',NULL,'[Oct MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov MB','Money','N',NULL,'[Nov MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec MB','Money','N',NULL,'[Dec MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total MB','Money','N',NULL,'[Total MB]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X4','Varchar(Max)','V',NULL,'[X4]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan MB Delta','Money','N',NULL,'[Jan MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb MB Delta','Money','N',NULL,'[Feb MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar MB Delta','Money','N',NULL,'[Mar MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr MB Delta','Money','N',NULL,'[Apr MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May MB Delta','Money','N',NULL,'[May MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun MB Delta','Money','N',NULL,'[Jun MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul MB Delta','Money','N',NULL,'[Jul MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug MB Delta','Money','N',NULL,'[Aug MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep MB Delta','Money','N',NULL,'[Sep MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct MB Delta','Money','N',NULL,'[Oct MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov MB Delta','Money','N',NULL,'[Nov MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec MB Delta','Money','N',NULL,'[Dec MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total MB Delta','Money','N',NULL,'[Total MB Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X5','Varchar(Max)','V',NULL,'[X5]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan F2','Money','N',NULL,'[Jan F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb F2','Money','N',NULL,'[Feb F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar F2','Money','N',NULL,'[Mar F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr F2','Money','N',NULL,'[Apr F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May F2','Money','N',NULL,'[May F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun F2','Money','N',NULL,'[Jun F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul F2','Money','N',NULL,'[Jul F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug F2','Money','N',NULL,'[Aug F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep F2','Money','N',NULL,'[Sep F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct F2','Money','N',NULL,'[Oct F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov F2','Money','N',NULL,'[Nov F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec F2','Money','N',NULL,'[Dec F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total F2','Money','N',NULL,'[Total F2]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X6','Varchar(Max)','V',NULL,'[X6]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jan F2 Delta','Money','N',NULL,'[Jan F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Feb F2 Delta','Money','N',NULL,'[Feb F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Mar F2 Delta','Money','N',NULL,'[Mar F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Apr F2 Delta','Money','N',NULL,'[Apr F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','May F2 Delta','Money','N',NULL,'[May F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jun F2 Delta','Money','N',NULL,'[Jun F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Jul F2 Delta','Money','N',NULL,'[Jul F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Aug F2 Delta','Money','N',NULL,'[Aug F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Sep F2 Delta','Money','N',NULL,'[Sep F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Oct F2 Delta','Money','N',NULL,'[Oct F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Nov F2 Delta','Money','N',NULL,'[Nov F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Dec F2 Delta','Money','N',NULL,'[Dec F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Total F2 Delta','Money','N',NULL,'[Total F2 Delta]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','X7','Varchar(Max)','V',NULL,'[X7]','Y')
INSERT INTO GENERIC_JSON_DETAIL(load_name,json_column_name,json_column_data_type,json_column_data_group,json_column_data_group_format,json_column_alias_name,active_flag) VALUES('fss_functional_support_cost_JSON','Commentary','Varchar(Max)','V',NULL,'[Commentary]','Y')



/*

create schema fss

select * from generic_json_detail where json_column_data_type ='date'

--drop table fss.stage_fss_reportingperiod
 */ 
SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [fss].[stage_fss_functional_support_cost]

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


select * from  fss.[stage_fss_functional_support_cost]
*/
 

 

