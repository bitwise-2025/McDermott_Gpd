DECLARE @Date DATETIME;
SET @Date = GETDATE();

--PLP PIPELINE Entries
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_checksheet_coconsole_source_to_stage','NCSA','pl_checksheet_coconsole_source_to_stage',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_checksheet_coconsole_stage_to_raw','NCSA','CoConsole Check Sheets ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)

INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_checksheet_coconsole_raw_to_synapse_stage','NCSA','co-console_check_sheets - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
 
 
--PLP PIPELINE_PARAMETER Entries 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_source_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_checksheet_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

 
--PLP_PARAMETER_VALUE Entries 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Production/NCSA Operational/Co_Console/CheckSheet',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_file_name','*Sheets by System -*Check Sheets*.xlsx',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2022-07-06 03:03:46',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/CheckSheet',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CheckSheet',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_source_to_stage','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CheckSheet',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/CheckSheet',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate',' 2022-07-06 03:09:52.993',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_stage_to_raw','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_raw_to_synapse_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date',' 2022-07-06 03:13:11',1,'ssampathkumar@mcdermott.com', @Date,'pl_checksheet_coconsole_raw_to_synapse_stage','NetworkFolder')
	 


---------------------------------PUNCH ITEM--------------------------------------------------------------
--PLP PIPELINE Entries
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_punchitem_coconsole_source_to_stage','NCSA','CoConsole Punch Items Source to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_punchitem_coconsole_stage_to_raw','NCSA','CoConsole Punch Items ADLS Stage to Raw Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_punchitem_coconsole_raw_to_synapse_stage','NCSA','co-console_punch_item - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)

--PLP Parammeter
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('sql_script','PIPELINE','Contains SQL Scripts to execute','T','1','8000',NULL,1,'ssampathkumar@mcdermott.com',@Date) 
 
--PLP PIPELINE_PARAMETER Entries 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_source_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_punchitem_coconsole_raw_to_synapse_stage ','NetworkFolder','sql_script',3,'sql_script','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

 
--PLP_PARAMETER_VALUE Entries 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_file_name','*Punch Items by System*.xlsx',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Production/NCSA Operational/Co_Console/PunchItem',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','PunchItem',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',' 2022-07-01 07:31:49',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/PunchItem',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_source_to_stage','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','PunchItem',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/PunchItem',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate',' 2022-07-01 07:33:57.167',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_stage_to_raw','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date',' 2022-07-01 07:34:25',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_raw_to_synapse_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('sql_script',' LEN(Project)>5',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_raw_to_synapse_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_punchitem_coconsole_raw_to_synapse_stage','NetworkFolder')



---------------------------------CERTIFICATE STATUS--------------------------------------------------------------
--PLP PIPELINE Entries
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_certificatestatus_coconsole_source_to_stage','NCSA','CoConsole Certificate Status Source to ADLS Stage Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_certificatestatus_coconsole_stage_to_raw','NCSA','CoConsole certificate ADLS Stage to ADLS Raw Folder',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
 VALUES ('pl_certificatestatus_coconsole_raw_to_synapse_stage','NCSA','CoConsole certificate status - ADLS Raw to Synapse Stage table',NULL,'1','ssampathkumar@mcdermott.com', @Date,47)
 
 
--PLP PIPELINE_PARAMETER Entries 
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_source_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_certificatestatus_coconsole_raw_to_synapse_stage','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com', @Date)

 
--PLP_PARAMETER_VALUE Entries 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_file_name','*Certificate Status - Sub System*.xlsx',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Production/NCSA Operational/Co_Console/CertificateStatus',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',' 2021-09-17 09:34:49',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CertificationStatus',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/CertificateStatus',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_source_to_stage','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/CoConsole/CertificateStatus',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','CertificationStatus',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate',' 2022-06-30 02:15:00.371',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_stage_to_raw','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date',' 2022-06-30 03:14:55',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_raw_to_synapse_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com', @Date,'pl_certificatestatus_coconsole_raw_to_synapse_stage','NetworkFolder')





------------------Pipeline Details-----------------


declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_certificatestatus_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_certificatestatus_v' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_certstatus'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_certificatestatus_coconsole_master_pipeline','gpd.NCSA_coconsole_certificatestatus_v','gpd.reprocess_cc_dim_entp_comm_certstatus','dbo.dim_entp_commissioning_ss_certification_status')
 end
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_checksheet_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_checksheet' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_tags_cs'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_checksheet_coconsole_master_pipeline','gpd.NCSA_coconsole_checksheet','gpd.reprocess_cc_dim_entp_comm_tags_cs','dbo.dim_entp_commissioning_tags')
 end;
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_checksheet_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_checksheet' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_sheet_trans'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_checksheet_coconsole_master_pipeline','gpd.NCSA_coconsole_checksheet','gpd.reprocess_cc_dim_entp_comm_sheet_trans','dbo.dim_entp_commissioning_sheets_transactions')
 end;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_checksheet_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_checksheet' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_sub_system'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_checksheet_coconsole_master_pipeline','gpd.NCSA_coconsole_checksheet','gpd.reprocess_cc_dim_entp_comm_sub_system','dbo.dim_entp_commissioning_sub_system')
 end;
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_checksheet_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_checksheet' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_system'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_checksheet_coconsole_master_pipeline','gpd.NCSA_coconsole_checksheet','gpd.reprocess_cc_dim_entp_comm_system','dbo.dim_entp_commissioning_system')
 end;

select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_checksheet_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_checksheet' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_sheets'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_checksheet_coconsole_master_pipeline','gpd.NCSA_coconsole_checksheet','gpd.reprocess_cc_dim_entp_comm_sheets','dbo.dim_entp_commissioning_sheets')
 end;

-- 
 
 
 


select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_punchitem_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_punchitem' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_punchitem'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_punchitem_coconsole_master_pipeline','gpd.NCSA_coconsole_punchitem','gpd.reprocess_cc_dim_entp_comm_punchitem','dbo.dim_entp_commissioning_punch_items')
 end;
 
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_punchitem_coconsole_master_pipeline' and stage_table_name = 'gpd.NCSA_coconsole_punchitem' and reprocessing_table_name = 'gpd.reprocess_cc_dim_entp_comm_tags_pi'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_punchitem_coconsole_master_pipeline','gpd.NCSA_coconsole_punchitem','gpd.reprocess_cc_dim_entp_comm_tags_pi','dbo.dim_entp_commissioning_tags')
 end;
 
 
 
