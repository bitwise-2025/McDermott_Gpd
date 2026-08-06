--source_to_stage

declare @dd datetime;
select @dd = getdate();

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Risk',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','2001-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Risk',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Risk',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Risk',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_raw_to_synapse','NetworkFolder')


----------------------------------------------------------------------------

--source_to_stage

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Opportunity',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','2001-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Opportunity',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Opportunity',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Opportunity',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_raw_to_synapse','NetworkFolder')


----------------------------------------------------------------------------

--source_to_stage

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Simulationresult',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Simulationresult',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Simulationresult',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Simulationresult',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_simulationresult_raw_to_synapse','NetworkFolder')


----------------------------------------------------------------------------

--source_to_stage


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Contingency',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Contingency',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Contingency',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Contingency',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_contingency_raw_to_synapse','NetworkFolder')



--source_to_stage

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Risk_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Risk_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Risk_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Risk_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_risk_snapshot_raw_to_synapse','NetworkFolder')



--source_to_stage

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Opportunity_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_start_date','1990-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_project_numbers','R4148,D7071',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('promt_end_date','2050-12-31 02:08:36',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Opportunity_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_source_to_stage','NetworkFolder')



--stage_to_raw

insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/PROMT/Datalake_Export_Opportunity_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_system','mdr-raw-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','Datalake_Export_Opportunity_Snapshot',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_stage_to_raw','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('lastrundate','2021-12-31 12:35:59.045',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_stage_to_raw','NetworkFolder')



--raw_to_synapse


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','2021-12-31 12:36:58.280',1,'aditya.anand2@mcdermott.com',@dd,'pl_promt_datalake_export_opportunity_snapshot_raw_to_synapse','NetworkFolder')



