

DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('last_processing_date','PIPELINE_INCREMENTAL','Contains last processing date from source','T','1','30',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
	 
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_mcpmdata_laborcorrection_master_pipeline','NCSA','Load MCPM Labor Corrections data',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_mcpmdata_laborcorrection_raw_to_synapse_stage','NCSA','Load MCPM Labor Corrections data',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_mcpmdata_laborcorrection_source_to_stage','NCSA','Load MCPM Labor Corrections data',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_mcpmdata_laborcorrection_stage_to_raw','NCSA','Load MCPM Labor Corrections data',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','file_system',3,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','folder_path',4,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','file_name',5,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_source_to_stage','MCPM','last_processing_date',6,'last_processing_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/MCPM_Offshore_LaborCorrection',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','MCPM_Offshore_LaborCorrection',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_processing_date','2022-09-01 12:50:26.783',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_source_to_stage','MCPM')


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_stage_to_raw','MCPM','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_stage_to_raw','MCPM','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_stage_to_raw','MCPM','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_stage_to_raw','MCPM','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-12-13 10:04:49.580',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/MCPM_Offshore_LaborCorrection',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','MCPM_Offshore_LaborCorrection',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_stage_to_raw','MCPM')


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_raw_to_synapse_stage','MCPM','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_laborcorrection_raw_to_synapse_stage','MCPM','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_mcpmdata_laborcorrection_raw_to_synapse_stage','MCPM')
