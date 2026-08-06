--source_to_stage

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','end_date',2,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','file_system',3,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','folder_path',4,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','file_name',5,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','source_directory',6,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_P6_to_stage','NetworkFolder','excel_file_name',7,'excel_file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')



--stage_to_raw


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_stage_to_raw','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_stage_to_raw','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_stage_to_raw','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_stage_to_raw','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')


--raw_to_synapse


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse ','NetworkFolder','lastrundate',1,'lastrundate','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','file_system',2,'file_system','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','folder_path',3,'folder_path','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','file_name',4,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','function_code',5,'function_code','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')


insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','data_class',6,'data_class','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','sub_source',7,'sub_source','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','source',8,'source','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','unit_of_measure',9,'unit_of_measure','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','IWP_code',10,'IWP_code','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','CWP_CODE',11,'CWP_CODE','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','PIM_code',12,'PIM_code','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')

insert into plp_pipeline_parameter (pipeline_code,pipeline_sub_code,parameter_code,display_order,source_column_name,source_operator,comment,active,touched_by,touched_dtm)Values ('pl_resource_spread_direct_raw_to_synapse','NetworkFolder','ROC_code',13,'ROC_code','IN',NULL,1,'aditya.anand2@mcdermott.com','2024-04-22 06:42:19.043')


