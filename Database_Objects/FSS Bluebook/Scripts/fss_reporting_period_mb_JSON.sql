DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

 

SET @Date = GETDATE();
SET @v_pipelinename='pl_sample_fss_reportingperiod_mb_stagejson_master_pipeline'

 
 DELETE FROM PLP_PIPELINE WHERE PIPELINE_CODE =@v_pipelinename

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
    VALUES (@v_pipelinename,'FSS','Excel File to Syn Stage JSON',NULL,1,'chhaya.kotian@mcdermott.com',@Date,47)

 
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
     VALUES('file_name','fss_reportingperiod',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Development/FSS/MB/ReportingPeriod',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*.xlsx',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('stage_table','fss.stage_fss_reportingperiod_mb',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('version_no','2',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
VALUES('load_name','fss_reporting_period_mb_JSON',1,'chhaya.kotian@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')


DELETE FROM GENERIC_JSON_HEADER WHERE LOAD_NAME='fss_reporting_period_mb_JSON'
	 INSERT INTO GENERIC_JSON_HEADER VALUES
('fss_reporting_period_mb_JSON','fss_reporting_period_mb_JSON','fss.stage_fss_reportingperiod_mb','fss.stage_fss_reportingperiod_mb_V',
'error_fss_reportingperiod_mb_v','Y','Y')

DELETE FROM GENERIC_JSON_DETAIL WHERE LOAD_NAME='fss_reporting_period_mb_JSON'

INSERT INTO GENERIC_JSON_DETAIL VALUES
('fss_reporting_period_mb_JSON','Data source','varchar(max)','V',NULL,'[Data source]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES
('fss_reporting_period_mb_JSON','Reporting Period','date','D',23,'[Reporting Period]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES
('fss_reporting_period_mb_JSON','zSourceFileName','varchar(max)','V',NULL,'[zSourceFileName]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES
('fss_reporting_period_mb_JSON','zCreatedDateTime','DateTime','D',23,'[zCreatedDateTime]','Y')
INSERT INTO GENERIC_JSON_DETAIL VALUES
('fss_reporting_period_mb_JSON','zVersionNo','INT','NI',NULL,'[zVersionNo]','Y')
 

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [fss].[stage_fss_reportingperiod_mb]
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