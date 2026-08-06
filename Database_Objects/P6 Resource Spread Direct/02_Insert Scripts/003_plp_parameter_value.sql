--source_to_stage

declare @dd datetime;
select @dd = getdate();

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2001-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/P6/Resource_Spread_Direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_directory','QA/NCSA Operational/P6/Resource_Spread_Direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','p6_resource_spread_direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('excel_file_name','*',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_P6_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/P6/Resource_Spread_Direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','p6_resource_spread_direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2024-04-15 06:03:43.744',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('ROC_code','ZZZ',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('IWP_code','ZZZ',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('data_class','Time',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('CWP_CODE','ZZZ',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('function_code','ENG',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('unit_of_measure','Hours',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('PIM_code','ZZZ',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','p6_resource_spread_direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/P6/Resource_Spread_Direct',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source','P6',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2024-04-15 06:05:41',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_resource_spread_direct_raw_to_synapse','NetworkFolder')

