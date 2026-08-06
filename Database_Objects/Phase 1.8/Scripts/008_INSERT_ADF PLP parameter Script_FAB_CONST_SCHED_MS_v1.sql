--Original Name

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fabrication_const_sched_ms_scm_exlstgjsn_master_pipeline'


--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Excel File to Syn Stage JSON',NULL,1,'ssampathkumar@mcdermott.com',@Date,47)

/*
--PLP Parammeter
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('stage_table','PIPELINE','stage table name along with schema to be passed parameter','T','1','500',NULL,1,'ssampathkumar@mcdermott.com',@Date)

--PLP Parammeter
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('version_no','PIPELINE_INCREMENTAL','Version number to indicate which version was loaded.','T','1','200',NULL,1,'ssampathkumar@mcdermott.com',@Date)
 --one time for all pipleines.

*/

--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',5,'file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','input_file_name',7,'input_file_name','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','lastrundate',8,'lastrundate','IN','Date used to store when raw was last run',1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','version_no',9,'version_no','IN','version number to indicate latest load. Incremented everyrun success or failed',1,'ssampathkumar@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','stage_table',10,'stage_table','IN','stage_table',1,'ssampathkumar@mcdermott.com',@Date)
--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
--VALUES(@v_pipelinename,'NetworkFolder','input_file_system',11,'input_file_system','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_1',12,'SQL_Script_1','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)
--INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
--VALUES(@v_pipelinename,'NetworkFolder','SQL_Script_2',13,'SQL_Script_2','IN',NULL,1,'ssampathkumar@mcdermott.com',@Date)


--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/Manual/SCM/Fabrication_Constn_Sched_MS',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','Fab_Const_sched_ms',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Production/NCSA Operational/Manual/SCM/Fabrication_Constuction_Schedule',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','*.xlsx',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('stage_table','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2022-01-15 11:53:39.682',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('version_no','2',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
--    VALUES('input_file_system','mdr-raw-data',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
--    VALUES('SQL_Script_1','select * from',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
--INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
--    VALUES('SQL_Script_2','select * from',1,'ssampathkumar@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')




--TO BE EXECUTED ONLY WHEN IT IS  READY FOR QA--
/*

declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_fabrication_const_sched_ms_scm_exlstgjsn_master_pipeline' and stage_table_name = 'gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON' and reprocessing_table_name = NULL
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_fabrication_const_sched_ms_scm_exlstgjsn_master_pipeline','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON',NULL,NULL)
 end
 
*/