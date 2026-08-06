DECLARE @Date DATETIME;
SET @Date = GETDATE();



INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('projectid','D7072,N8585',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','MCPM_offshorewk',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/MCPM_offshore_weekly',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_merge_start_date','2022-09-10T10:06:19.0783589Z',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2022-09-28 10:09:14',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_source_to_stage','MCPM')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/MCPM_offshore_weekly',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','MCPM_offshorewk',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-09-28 05:02:41.418',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_stage_to_raw','MCPM')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-09-28 10:10:13',1,'ssampathkumar@mcdermott.com', @Date,'pl_mcpmdata_offshore_weekly_raw_to_synapse','MCPM')