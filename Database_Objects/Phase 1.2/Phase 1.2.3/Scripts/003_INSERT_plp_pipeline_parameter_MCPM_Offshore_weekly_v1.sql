DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','file_merge_start_date',6,'file_merge_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_source_to_stage','MCPM','projectid',7,'projectid','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_raw_to_synapse','MCPM','last_run_start_date',1,'last_run_start_date','IN','',1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_mcpmdata_offshore_weekly_raw_to_synapse','MCPM','last_run_end_date',2,'last_run_end_date','IN','',1,'ssampathkumar@mcdermott.com', @Date)
