DECLARE @Date DATETIME;
SET @Date = GETDATE();

-- PIPELINE "pl_idocs_ev_ms_master_source_to_stage"

--plp_pipeline_parameter


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)



--plp_parameter_value

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/EngVen_MS_Master',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_EngVen_MS_Master',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')
	 
	 INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*_PWRBI_MS_MASTER_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')
	

-- PIPELINE "pl_idocs_open_exp_source_to_stage"

--plp_pipeline_parameter


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_open_exp_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

	--plp_parameter_value

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Open_Expediting',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_open_exp',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')
	 
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*_IDOCS_DL_PWBI_ALL_OPEN_EXPEDITING_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317') 


	
-- PIPELINE "pl_idocs_project_specific_source_to_stage"

--plp_pipeline_parameter


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_idocs_project_specific_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)


--plp_parameter_value

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')

	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Project_Specific',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','ProjectSpecific',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')
	 
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*_IDOCS_DL_PWRBI_PROJECT_SPECIFIC_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_project_specific_source_to_stage','iDocs_D7317') 



-- PIPELINE "pl_idocs_spool_status_source_to_stage"

 

 

--plp_pipeline_parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])
VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

 

--plp_parameter_value

 

 

     

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/NCSA/iDocs/Spool_Status_Report',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','iDocs_P21A_Spool_Status',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','2883_P21A_Spool_Status_Report*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')
	 
	

 

 

-- PIPELINE "pl_idocs_spool_status_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_spool_status_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

 

--plp_parameter_value

 

 

     

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/NCSA/iDocs/Spool_Status_Report',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','iDocs_P21A_Spool_Status',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','2883_P21A_Spool_Status_Report*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_spool_status_source_to_stage','iDocs_D7317')
	 
	

 

 

-- PIPELINE "pl_idocs_doc_eng_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_eng_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

 

--plp_parameter_value

 

 

     

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/NCSA/iDocs/Doc_Master_Eng',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','iDocs_doc_eng',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','*_IDOCS_DL_ENG_PWRBI_DOCMASTER_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_eng_source_to_stage','iDocs_D7317')
	 
	  

 

 

-- PIPELINE "pl_idocs_closed_m_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_closed_m_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

 

--plp_parameter_value

 

 

     

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/NCSA/iDocs/Closed_M',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','Closed_M',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','*_IDOCS_DL_ALL_EXP_MASTER_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_closed_m_source_to_stage','iDocs_D7317')
	 
	 
	  



 

 

-- PIPELINE "pl_idocs_doc_ven_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','file_system',3,'file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','folder_path',4,'folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','file_name',5,'file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','input_file_system',6,'input_file_system','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','input_folder_path',7,'input_folder_path','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm])

 

VALUES('pl_idocs_doc_ven_source_to_stage','iDocs_D7317','input_file_name',8,'input_file_name','IN',NULL,1,'Vijaykumar.Bn@mcdermott.com',@Date)

 

 

 

--plp_parameter_value

 

 

     

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('folder_path','Project_Data/NCSA/iDocs/Doc_Master_Ven',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('file_name','iDocs_doc_ven',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])

 

     VALUES('input_file_name','*_IDOCS_DL_VEN_PWRBI_DOCMASTER_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_doc_ven_source_to_stage','iDocs_D7317')
	 




     Delete from plp_parameter_value
where pipeline_code='pl_idocs_ev_ms_master_source_to_stage'
and pipeline_sub_code='iDocs_D7317'

 

 

DECLARE @Date DATETIME;
SET @Date = GETDATE();

 

 

-- PIPELINE "pl_idocs_ev_ms_master_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

 

--plp_parameter_value

 

 

     
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

     
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/EngVen_MS_Master',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_EngVen_MS_Master',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

     INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*_PWRBI_MS_MASTER_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_ev_ms_master_source_to_stage','iDocs_D7317')

 

 

 

-- PIPELINE "pl_idocs_open_exp_source_to_stage"

 

 

--plp_pipeline_parameter

 

 

 

 

    --plp_parameter_value

 

 

     
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2022-07-29 04:47:18',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currentdate',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

     
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/iDocs/Open_Expediting',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','iDocs_open_exp',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_system','mdr-staging-data',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_folder_path','IDOCS-OFF-D7317-D7555_ZULUF_TRUNKLINES_CRPO_79',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317')

 

 

 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*_IDOCS_DL_PWBI_ALL_OPEN_EXPEDITING_*.CSV',1,'Vijaykumar.Bn@mcdermott.com',@Date,'pl_idocs_open_exp_source_to_stage','iDocs_D7317') 