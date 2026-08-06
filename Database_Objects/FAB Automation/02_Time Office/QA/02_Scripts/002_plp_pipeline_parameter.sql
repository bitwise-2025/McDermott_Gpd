--source_to_stage

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_time_office_source_to_stage'

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','employee_folder_path',2,'employee_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','supervisor_email_folder_path',3,'supervisor_email_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','supervisor_name_folder_path',4,'supervisor_name_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',5,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','employee_file_name',6,'employee_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','supervisor_email_file_name',7,'supervisor_email_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','supervisor_name_file_name',8,'supervisor_name_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',9,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','input_file_name',10,'input_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)



--stage_to_raw


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','file_system',1,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','employee_folder_path',2,'employee_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_email_folder_path',3,'supervisor_email_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_name_folder_path',4,'supervisor_name_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','employee_file_name',5,'employee_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_email_file_name',6,'supervisor_email_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_name_file_name',7,'supervisor_name_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','lastrundate',8,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_master_file_name',9,'supervisor_master_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_stage_to_raw','NetworkFolder','supervisor_master_folder_path',10,'supervisor_master_folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')



--raw_to_synapse


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_time_office_raw_to_synapse','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-02-17 06:42:19.043')

