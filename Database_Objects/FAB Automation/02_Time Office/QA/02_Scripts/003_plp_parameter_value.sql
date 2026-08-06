--source_to_stage

declare @dd datetime;
select @dd = getdate();

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2001-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('employee_file_name','Employee_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_email_file_name','Supervisor_Email_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_name_file_name','Supervisor_Name_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('employee_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Employee',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_email_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Supervisor/Supervisor_Email',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_name_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Supervisor/Supervisor_Name',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('input_file_name','New Master*.xlsx',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_directory','Time Office/Kronos Reports 2021/Daily Manhour Report/Master File',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_source_to_stage','NetworkFolder')




--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('employee_file_name','Employee_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_email_file_name','Supervisor_Email_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_name_file_name','Supervisor_Name_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('employee_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Employee',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_email_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Supervisor/Supervisor_Email',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_name_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Supervisor/Supervisor_Name',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_master_file_name','Supervisor_Master',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('supervisor_master_folder_path','Project_Data/NCSA/FAB Automation/Time_Office/Supervisor',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_stage_to_raw','NetworkFolder')



--raw_to_synapse

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_time_office_raw_to_synapse','NetworkFolder')

