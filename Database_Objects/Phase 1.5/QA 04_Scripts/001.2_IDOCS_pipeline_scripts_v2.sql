DECLARE @Date DATETIME;
SET @Date = GETDATE();

--pl_idocs_closed_m_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_closed_m_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_closed_m_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

--pl_idocs_doc_eng_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_doc_eng_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_eng_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

--pl_idocs_doc_ven_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_doc_ven_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_doc_ven_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

--pl_idocs_ev_ms_master_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_ev_ms_master_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

--pl_idocs_open_exp_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_open_exp_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)

--pl_idocs_project_specific_raw_to_synapse_stage
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_raw_to_synapse_stage','iDocs','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_raw_to_synapse_stage','iDocs','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
--pl_idocs_project_specific_stage_to_raw
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_stage_to_raw','iDocs','lastrundate',1,'lastrundate','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_stage_to_raw','iDocs','file_name',4,'file_name','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_stage_to_raw','iDocs','folder_path',3,'folder_path','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_stage_to_raw','iDocs','file_system',2,'file_system','IN',NULL,1,'abhijit.kharat@mcdermott.com',@Date)





--pl_idocs_closed_m_raw_to_synapse_stage
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:35:22',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_raw_to_synapse_stage','iDocs')
--pl_idocs_closed_m_stage_to_raw 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Closed_M',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:34:06.307',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','Closed_M',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_closed_m_stage_to_raw','iDocs')
	 
--pl_idocs_doc_eng_raw_to_synapse_stage	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:08:55',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_raw_to_synapse_stage','iDocs')
--pl_idocs_doc_eng_stage_to_raw	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:07:56.753',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Doc_Master_Eng',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_doc_eng',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_eng_stage_to_raw','iDocs')
	 
--pl_idocs_doc_ven_raw_to_synapse_stage	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:13:07',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_raw_to_synapse_stage','iDocs')
--pl_idocs_doc_ven_stage_to_raw	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_doc_ven',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Doc_Master_Ven',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:11:41.827',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_doc_ven_stage_to_raw','iDocs')
	 
--pl_idocs_ev_ms_master_raw_to_synapse_stage	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:28:29',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_raw_to_synapse_stage','iDocs')
--pl_idocs_ev_ms_master_stage_to_raw	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_EngVen_MS_Master',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/EngVen_MS_Master',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:26:45.551',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_ev_ms_master_stage_to_raw','iDocs')
	 
--pl_idocs_open_exp_raw_to_synapse_stage	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:37:13',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_raw_to_synapse_stage','iDocs')
--pl_idocs_open_exp_stage_to_raw	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:35:08.219',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Open_Expediting',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_open_exp',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_open_exp_stage_to_raw','iDocs')
	 
--pl_idocs_project_specific_raw_to_synapse_stage	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_raw_to_synapse_stage','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-03-29 07:31:44',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_raw_to_synapse_stage','iDocs')
--pl_idocs_project_specific_stage_to_raw	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Project_Specific',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-03-29 07:26:02.243',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_stage_to_raw','iDocs')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','ProjectSpecific',1,'abhijit.kharat@mcdermott.com',@Date,'pl_idocs_project_specific_stage_to_raw','iDocs')
