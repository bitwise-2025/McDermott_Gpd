--source_to_stage

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','file_name',2,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','weld_qual_fab_code',5,'weld_qual_fab_code','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','weld_qual_process',6,'weld_qual_process','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','weld_qual_user_id',7,'weld_qual_user_id','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_source_to_stage','NetworkFolder','train_qual_list',8,'train_qual_list','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')


--stage_to_raw


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_stage_to_raw','NetworkFolder','file_name',2,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_stage_to_raw','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_stage_to_raw','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')


--raw_to_synapse


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_welder_qualification_raw_to_synapse','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2023-03-28 06:42:19.043')

