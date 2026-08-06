--source_to_stage

declare @dd datetime;
select @dd = getdate();

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','MAPS_Employ_Noneffect',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/FAB Automation/MAPS/Employ_Noneffect',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2001-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_source_to_stage','NetworkFolder')


--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/FAB Automation/MAPS/Employ_Noneffect',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','MAPS_Employ_Noneffect',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_maps_employ_noneffect_raw_to_synapse','NetworkFolder')

