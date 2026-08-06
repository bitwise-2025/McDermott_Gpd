DECLARE @Date DATETIME;
SET @Date = GETDATE();


insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_inboxtask_plm_source_to_stage','NCSA','pl_inboxtask_plm_source_to_stage',NULL,'1','aditya.anand2@mcdermott.com',@Date,47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_inboxtask_plm_stage_to_raw','NCSA','pl_inboxtask_plm_stage_to_raw',NULL,'1','aditya.anand2@mcdermott.com',@Date,47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_inboxtask_plm_raw_to_synapse','NCSA','pl_inboxtask_plm_raw_to_synapse',NULL,'1','aditya.anand2@mcdermott.com',@Date,47)

insert into plp_pipeline (pipeline_code,subject_area_code,description,comment,active,touched_by,touched_dtm,sec_sa_id) Values('pl_inboxtask_plm_master_pipeline','NCSA','pl_inboxtask_plm_master_pipeline',NULL,'1','aditya.anand2@mcdermott.com',@Date,47)




--source_to_stage

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_source_to_stage','NetworkFolder','file_system',1,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_source_to_stage','NetworkFolder','folder_path',2,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_source_to_stage','NetworkFolder','file_name',3,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_source_to_stage','NetworkFolder','plm_run_last_dtm',4,'last_run_end_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_source_to_stage','NetworkFolder','plm_run_till_dtm',5,'last_run_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)


--stage_to_raw

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

--raw_to_synapse

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_raw_to_synapse','NetworkFolder','last_run_start_date',1,'last_run_start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_inboxtask_plm_raw_to_synapse','NetworkFolder','last_run_end_date',2,'last_run_end_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES('pl_inboxtask_plm_raw_to_synapse','NetworkFolder','stage_table',3,'stage_table','IN','stage_table name',1,'aditya.anand2@mcdermott.com',@Date)



--source_to_stage

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','InboxTask',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/PLM/InboxTask',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_source_to_stage','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('plm_run_last_dtm','2022-09-10 12:36:58.280',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('plm_run_till_dtm','2022-09-10 12:36:58.280',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_source_to_stage','NetworkFolder')


--stage_to_raw


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/PLM/InboxTask',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','InboxTask',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2022-09-10 12:36:58.280',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_stage_to_raw','NetworkFolder')

--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('last_run_end_date','currdate',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_raw_to_synapse','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('last_run_start_date','2022-09-10 12:36:58.280',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_raw_to_synapse','NetworkFolder')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('stage_table','gpd.NCSA_PLM_Inboxtask',1,'aditya.anand2@mcdermott.com',@Date,'pl_inboxtask_plm_raw_to_synapse','NetworkFolder')



--plp_pipeline_details

declare @count int;
select @count = count(*) from dbo.plp_pipeline_details Where pipeline_code = 'pl_inboxtask_plm_master_pipeline' and stage_table_name = 'gpd.NCSA_PLM_Inboxtask' 
	if isnull(@count,0) = 0
begin
		insert into dbo.plp_pipeline_details(pipeline_code,stage_table_name,reprocessing_table_name,target_table_name)
	 values ('pl_inboxtask_plm_master_pipeline','gpd.NCSA_PLM_Inboxtask','gpd.reprocess_dim_entp_plm_inboxtask','dbo.dim_entp_plm_inboxtask')
 end
 

