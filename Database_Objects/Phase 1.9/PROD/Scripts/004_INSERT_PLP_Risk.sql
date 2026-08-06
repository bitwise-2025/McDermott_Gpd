DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_risk_plm_source_to_stage','NCSA','Load Risk Data from PLM to Datalake',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_risk_plm_stage_to_raw','NCSA','Load Risk Data from PLM to Datalake',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_risk_plm_raw_to_synapse','NCSA','Load Risk Data from PLM to Datalake',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_risk_plm_master_pipeline','NCSA','Load Risk Data from PLM to Datalake',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_raw_to_synapse','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_raw_to_synapse','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_source_to_stage','NetworkFolder','file_system',1,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_source_to_stage','NetworkFolder','folder_path',2,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_source_to_stage','NetworkFolder','file_name',3,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_source_to_stage','NetworkFolder','plm_run_last_dtm',4,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_source_to_stage','NetworkFolder','plm_run_till_dtm',5,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_risk_plm_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-05-09 13:28:54.400',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('plm_run_last_dtm','2022-05-09T13:34:31.527',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('plm_run_till_dtm','2021-12-31 02:08:36',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/PLM/Risk',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','Risk',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-05-09 13:27:55.032',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','Risk',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/PLM/Risk',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_risk_plm_stage_to_raw','NetworkFolder')


declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_rpn_plm_master_pipeline' and stage_table_name = 'gpd.NCSA_PLM_Risk' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_risk_plm_master_pipeline','gpd.NCSA_PLM_Risk','gpd.reprocess_dim_entp_plm_risk','dbo.dim_entp_plm_risk')
 end