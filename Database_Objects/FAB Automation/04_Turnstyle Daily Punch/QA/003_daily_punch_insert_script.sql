/* Insert master pipeline details into plp_pipeline */

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_turnstyle_daily_punch_master'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','Daily time punch data movement to synapse',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)
	
	
 --------------------INSERT   pl_fab_automation_turnstyle_daily_punch_source_to_stage

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_turnstyle_daily_punch_source_to_stage'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','Daily time punch data movement from source to stage',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)

--PLP Parameter
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('src_punch_in_start_time','PIPELINE_INCREMENTAL','src_punch_in_start_time to be passed as parameter','T','1','30',NULL,1,'suhana.shaik@mcdermott.com',@Date)

--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','src_punch_in_start_time',2,'src_punch_in_start_time','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',5,'file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)



--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',@Date,1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('src_punch_in_start_time','2022-01-01 00:00:00.000',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/FAB Automation/Turnstyle Daily Punch',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','turnstyle_daily_punch',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

----------------------------------------------------- pl_fab_automation_turnstyle_daily_punch_stage_to_raw

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_turnstyle_daily_punch_stage_to_raw'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','Daily time punch data movement from stage to raw',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',2,'file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)



--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2023-01-01 07:05:48.012',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/FAB Automation/Turnstyle Daily Punch',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','turnstyle_daily_punch',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')


----------------------------------------------------- pl_fab_automation_turnstyle_daily_punch_raw_to_synapse

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_turnstyle_daily_punch_raw_to_synapse'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','Daily time punch data movement from raw to synapse',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)




--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',@Date,1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

