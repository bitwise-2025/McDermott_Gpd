
--source_to_stage

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_source_to_stage','NetworkFolder','file_system',1,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_source_to_stage','NetworkFolder','folder_path',2,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_source_to_stage','NetworkFolder','file_name',3,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_source_to_stage','NetworkFolder','start_date',4,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')



--stage_to_raw


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_stage_to_raw','NetworkFolder','file_system',1,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_stage_to_raw','NetworkFolder','folder_path',2,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_stage_to_raw','NetworkFolder','file_name',3,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_stage_to_raw','NetworkFolder','lastrundate',4,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')


--raw_to_synapse


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_maps_employ_skill_raw_to_synapse','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-15 06:42:19.043')
