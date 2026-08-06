
--@AK for P6 office
DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('excel_sheet_name','PIPELINE','Gets the sheetname from excel file','T','1','255',NULL,1,'ssampathkumar@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_office_master_pipeline','NCSA','P6 Office Extract to load SRC-STG-RAW-Synapse',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_office_excel_p6_source_to_stage','NCSA','P6 Office Extract load to stage load',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_office_excel_stage_to_raw','NCSA','P6 Office Extract stage to raw load',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES ('pl_office_excel_raw_to_synapse_stage','NCSA','P6 Office Extract raw to synapse load',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)


INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_p6_source_to_stage','NetworkFolder','excel_sheet_name',8,'excel_sheet_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_raw_to_synapse_stage','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_office_excel_raw_to_synapse_stage','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-12-12 02:08:36',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/P6/Office',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','P6_Office',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Production/NCSA Operational/P6/Codes',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_file_name','*P6 Codes*.xlsx',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('excel_sheet_name','Global Office',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_p6_source_to_stage','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2021-12-04 12:35:59.045',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/P6/Office',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_stage_to_raw','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','P6_Office',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_stage_to_raw','NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_start_date','2021-12-04 12:36:58.280',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_raw_to_synapse_stage','NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('last_run_end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,'pl_office_excel_raw_to_synapse_stage','NetworkFolder')


declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_office_master_pipeline' and stage_table_name = 'gpd.P6_codes_office' and reprocessing_table_name = 'gpd.reprocess_dim_ent_office'

if isnull(@count,0) = 0
begin
	 insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_office_master_pipeline','gpd.P6_codes_office','gpd.reprocess_dim_ent_office','dim_ent_office')
end
