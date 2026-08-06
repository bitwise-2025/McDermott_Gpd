DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_contracts_mcpm_master_pipeline','NCSA','MCPM Contract Extract to load SRC-STG-RAW-Synapse',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_contracts_mcpm_raw_to_synapse_stage','NCSA','MCPM Contract Extract load to stage load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_contracts_mcpm_source_to_stage','NCSA','MCPM Contract Extract stage to raw load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_contracts_mcpm_stage_to_raw_parameterized','NCSA','MCPM Contract Extract stage to raw load',NULL,1,'abhijit.kharat@mcdermott.com',@Date,47)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_raw_to_synapse_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_raw_to_synapse_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_source_to_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_source_to_stage','MCPM','file_name',5,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_source_to_stage','MCPM','folder_path',4,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_source_to_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_source_to_stage','MCPM','file_system',3,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_stage_to_raw_parameterized','MCPM','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_stage_to_raw_parameterized','MCPM','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_stage_to_raw_parameterized','MCPM','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_contracts_mcpm_stage_to_raw_parameterized','MCPM','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2022-03-30 09:49:00',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_raw_to_synapse_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/Contracts',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','contracts_mcpm',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2022-03-30 09:47:47',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-30 09:48:36.743',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_stage_to_raw_parameterized','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_stage_to_raw_parameterized','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/Contracts',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_stage_to_raw_parameterized','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','contracts_mcpm',1,'abhijit.kharat@mcdermott.com',@Date,'pl_contracts_mcpm_stage_to_raw_parameterized','MCPM')


declare @count int				
declare @next_val int;				
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_contracts_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_MCPM_offshore' and reprocessing_table_name = 'gpd.reprocess_dim_entp_mcpm_contract_entity'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_contracts_mcpm_master_pipeline','gpd.NCSA_MCPM_Contract_Entity','gpd.reprocess_dim_entp_mcpm_contract_entity','dbo.dim_entp_contract_entity')
 end