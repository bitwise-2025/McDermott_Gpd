DECLARE @Date DATETIME;
SET @Date = GETDATE();


--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_engr_headcount_fcst_P6_to_stage','NCSA','P6 File to ADLS Stage Folder',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_engr_headcount_fcst_stage_to_raw','NCSA','P6 Engg Man Hours - ADLS Stage to ADLS Raw Folder',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_engr_headcount_fcst_raw_to_synapse','NCSA','P6 Engg Man Hours - ADLS Raw to Synapse Stage table',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_engr_headcount_fcst_master_pipeline','NCSA','P6 Engr Headcount Forecast Master SRC-STG-RAW-Synapse',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage ','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage ','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage ','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage ','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_P6_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
--VALUES('pl_engr_headcount_fcst_P6_to_stage','NetworkFolder','project',8,'project','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_stage_to_raw ','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_stage_to_raw ','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_stage_to_raw ','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)





INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse ','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse ','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse ','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','function_code',5,'function_code','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','data_class',6,'data_class','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','sub_source',7,'sub_source','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','source',8,'source','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','unit_of_measure',9,'unit_of_measure','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','IWP_code',10,'IWP_code','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','CWP_CODE',11,'work_unit_code','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','PIM_code',12,'PIM_code','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder','ROC_code',13,'ROC_code','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)



--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/P6/Engineering_Headcount',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','p6_engr_hc_fcst',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','QA/NCSA Operational/P6/Engineering',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_file_name','*',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')
--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
 --    VALUES('project','99236910',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_P6_to_stage','NetworkFolder')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2021-09-15 11:53:39.682',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/P6/Engineering_Headcount',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','p6_engr_hc_fcst',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_stage_to_raw','NetworkFolder')
	 

	 
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-01-13 09:32:40',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/P6/Engineering_Headcount',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','p6_engr_hc_fcst',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('function_code','ENG',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('data_class','Time',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('sub_source','P6-Direct',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source','SYSTEM',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('unit_of_measure','Hours',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('IWP_code','ZZZ',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('CWP_CODE','ZZZ',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('PIM_code','ZZZ',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('ROC_code','ZZZ',1,'ssampathkumar@mcdermott.com',@Date,'pl_engr_headcount_fcst_raw_to_synapse','NetworkFolder')







declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_engr_headcount_fcst_master_pipeline' and stage_table_name = 'gpd.P6_engr_headcount_forecast' and reprocessing_table_name = 'gpd.reprocess_P6_engr_headcount_forecast'
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_engr_headcount_fcst_master_pipeline','gpd.P6_engr_headcount_forecast','gpd.reprocess_P6_engr_headcount_forecast','dbo.fact_ops')
 end
 
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_engr_headcount_fcst_master_pipeline' and stage_table_name = 'gpd.tmp_Activity_P6_engr_headcount' and reprocessing_table_name = 'gpd.reprocess_tmp_Activity_P6_engr_headcount'
if isnull(@count,0) = 0
begin
insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
values ('pl_engr_headcount_fcst_master_pipeline','gpd.tmp_Activity_P6_engr_headcount','gpd.reprocess_tmp_Activity_P6_engr_headcount','dbo.dim_entp_activity')
end;