DECLARE @Date DATETIME;
SET @Date = GETDATE();

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_coa_mcpm_source_to_stage','NCSA','CoA MCPM onshore offshore - Source to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_coa_mcpm_stage_to_raw','NCSA','CoA MCPM - ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
VALUES ('pl_coa_mcpm_raw_to_synapse','NCSA','CoA MCPM - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)


--Pipeline Parameters--

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_source_to_stage','MCPM','project',6,'project','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_stage_to_raw','MCPM','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_stage_to_raw','MCPM','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_stage_to_raw','MCPM','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_stage_to_raw','MCPM','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_raw_to_synapse','MCPM','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_coa_mcpm_raw_to_synapse','MCPM','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

--Parameter Values---

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',' 2022-07-04 06:23:52',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CoA_MCPM',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project','99236910,99185710,N8585,D7029,D7072,D7068,99350106,R4036,R3973,E0660,N8196,D6978,N8318,99356968,D7317,99357972,990E0841,99356420,D7521,D7512,D7415,D7264,99241222,R3507,D6847,D7018,D7531,D7532,D7533,R3940',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/CoA',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_source_to_stage','MCPM')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/MCPM/CoA',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CoA_MCPM',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_stage_to_raw','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate',' 2022-06-30 02:15:00.371',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_stage_to_raw','MCPM')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date',' 2022-06-30 03:14:55',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_raw_to_synapse','MCPM')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_coa_mcpm_raw_to_synapse','MCPM')



declare @count int;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_coa_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_CoA_PSR_MCPM' and reprocessing_table_name = 'gpd.reprocess_dim_ent_prsl1_mcpm'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_coa_mcpm_master_pipeline','gpd.NCSA_CoA_PSR_MCPM','gpd.reprocess_dim_ent_prsl1_mcpm','dbo.dim_ent_psrlevel1')
 end
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_coa_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_CoA_PSR_MCPM' and reprocessing_table_name = 'gpd.reprocess_dim_ent_prsl2_mcpm'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_coa_mcpm_master_pipeline','gpd.NCSA_CoA_PSR_MCPM','gpd.reprocess_dim_ent_prsl2_mcpm','dbo.dim_ent_psrlevel2')
 end;
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_coa_mcpm_master_pipeline' and stage_table_name = 'gpd.NCSA_CoA_MCPM_CostCode_v' and reprocessing_table_name = 'gpd.reprocess_dim_entp_cost_code_mcpm'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_coa_mcpm_master_pipeline','gpd.NCSA_CoA_MCPM_CostCode_v','gpd.reprocess_dim_entp_cost_code_mcpm','dbo.dim_entp_costcode')
 end;
