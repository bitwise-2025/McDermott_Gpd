DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_phases_mcpm_raw_to_synapse_stage','NCSA','MCPM phases raw to synapse load',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_phases_mcpm_source_to_stage','NCSA','MCPM phases source to stage load',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_raw_to_synapse_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_raw_to_synapse_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','project',6,'project','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_phases_mcpm_source_to_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','phase_mcpm',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project','99236910',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:25:52',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/Phases',1,'ssampathkumar@mcdermott.com',@Date,'pl_phases_mcpm_source_to_stage','MCPM')

declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_phases_mcpm_master_pipeline' and stage_table_name = '[gpd].[NCSA_MCPM_Phases_v]' and reprocessing_table_name = 'gpd.reprocess_dim_ops_phase'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_phases_mcpm_master_pipeline','[gpd].[NCSA_MCPM_Phases_v]','gpd.reprocess_dim_ops_phase','dim_entp_phase')
 end

