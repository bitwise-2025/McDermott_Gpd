--------------------INSERT   pl_fab_automation_rota_file_master

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_rota_file_master'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','FAB Automation - Rota file data movement to synapse',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)
	
	
--------------------INSERT   pl_fab_automation_rota_source_to_stage

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_rota_source_to_stage'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','FAB Automation - Rota file data movement from source to stage',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)

--PLP Parameter
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('rota_active_leave_file_name','PIPELINE_INCREMENTAL','rota_active_leave_file_name to be passed as parameter','T','1','200',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('rota_offshore_emp_file_name','PIPELINE_INCREMENTAL','rota_offshore_emp_file_name to be passed as parameter','T','1','200',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('rota_active_leave_folder_path','PIPELINE_INCREMENTAL','rota_active_leave_file_name to be passed as parameter','T','1','200',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_parameter]
([parameter_code],[parameter_type_code],[description],[parameter_data_type],[max_no_values],[parameter_size],[comment],[active],[touched_by],[touched_dtm])
     VALUES('rota_offshore_emp_folder_path','PIPELINE_INCREMENTAL','rota_offshore_emp_file_name to be passed as parameter','T','1','200',NULL,1,'suhana.shaik@mcdermott.com',@Date)



--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_offshore_emp_file_name',2,'rota_offshore_emp_file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_active_leave_file_name',5,'rota_active_leave_file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_offshore_emp_folder_path',6,'rota_offshore_emp_folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_active_leave_folder_path',7,'rota_active_leave_folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',8,'source_directory','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','input_file_name',9,'input_file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)



--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',@Date,1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_active_leave_file_name','rota_active_leave',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-staging-data',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_offshore_emp_file_name','rota_offshore_employee',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_offshore_emp_folder_path','Project_Data/NCSA/FAB Automation/FAB_Rota/Offshore Employee',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_active_leave_folder_path','Project_Data/NCSA/FAB Automation/FAB_Rota/Active Leave',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','Time Office\Kronos Reports 2021\Daily Manhour Report\Fab Rota Files (From Luis)',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('input_file_name','Fab-Rota*.xlsx',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')



 ----------------------------------------------------- pl_fab_automation_rota_stage_to_raw

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_rota_stage_to_raw'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','Rota file data movement from stage to raw',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_system',3,'file_system','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_offshore_emp_file_name',2,'rota_offshore_emp_file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_active_leave_file_name',5,'rota_active_leave_file_name','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_active_leave_folder_path',6,'rota_active_leave_folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','rota_offshore_emp_folder_path',7,'rota_offshore_emp_folder_path','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)

--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('lastrundate','2023-01-01 07:05:48.012',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('folder_path','Project_Data/NCSA/FAB Automation/FAB_Rota',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_system','mdr-raw-data',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_active_leave_file_name','rota_active_leave',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_offshore_emp_file_name','rota_offshore_employee',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_active_leave_folder_path','Project_Data/NCSA/FAB Automation/FAB_Rota/Active Leave',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('rota_offshore_emp_folder_path','Project_Data/NCSA/FAB Automation/FAB_Rota/Offshore Employee',1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 

 ----------------------------------------------------- pl_fab_automation_rota_raw_to_synapse

DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_fab_automation_rota_raw_to_synapse'

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'DUBAI FAB','FAB rota file data movement from raw to synapse',NULL,1,'suhana.shaik@mcdermott.com',@Date,153)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'suhana.shaik@mcdermott.com',@Date)




--PLP Pipeline values
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date',@Date,1,'suhana.shaik@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
	 
 /* Insert into generic_load_header */
	 
	 INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
		   ,[load_type]
		   ,[master_load_name]
		   ,[json_column_delimiter])
     VALUES('dim_ent_fab_rota','FAB Automation - Rota file data movement to synapse','gpd.stage_fab_rota','dbo.dim_ent_fab_rota','gpd.reprocess_dim_ent_fab_rota','dim_ent_fab_rota_sk','dim_ent_fab_rota_nk','stage_fab_rota_key','13','Y','DIMENSION',NULL,NULL)



 /* Insert into generic_load_detail */

Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','batch_number','nvarchar(50)','TEXT','NK','batch_number',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','sap_number','nvarchar(50)','TEXT','OA','sap_number',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','name','varchar(100)','TEXT','OA','name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','title','varchar(100)','TEXT','OA','title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','department','varchar(50)','TEXT','OA','department',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','cost_center','nvarchar(50)','TEXT','OA','cost_center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','hook_up_project_others','nvarchar(100)','TEXT','OA','hook_up_project_others',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','local_actual','varchar(20)','TEXT','OA','local_actual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','location','varchar(20)','TEXT','OA','location',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','hire_date','varchar(50)','TEXT','OA','hire_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','status','varchar(20)','TEXT','OA','status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','action_date','varchar(50)','TEXT','NK','action_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','fab_rota_type','varchar(20)','TEXT','OA','fab_rota_type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,130,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','load_date','varchar(50)','TEXT','OA','load_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_fab_rota','type','varchar(100)','TEXT','OA','type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,'Y',NULL)


