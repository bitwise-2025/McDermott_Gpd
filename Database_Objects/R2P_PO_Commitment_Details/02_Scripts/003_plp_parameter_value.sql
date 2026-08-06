--source_to_stage


declare @dd datetime
select @dd = getdate()
insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('file_name','R2P_PO_Commitment_Details_Report',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('folder_path','Project_Data/NCSA/R2P_PO_Commitment_Details',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('end_date','currdate',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('sub_source_name','R2P',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('start_date','12-20-2021',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('output_file_system','mdr-staging-data',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')



insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('report_path','/Custom/Oracle R2P Integrations/MCPM/MDR_R2P_to_MCPM_PO_Commitments_Details_Report.xdo',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('source_name','SYSTEM',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')


insert into plp_parameter_value
(parameter_code,parameter_value,active,touched_by,touched_dtm,pipeline_code,pipeline_sub_code)
values ('number_of_days','365',1,'aditya.anand2@mcdermott.com',@dd,'pl_R2P_PO_Commitment_Details_source_to_stage','NetworkFolder')
