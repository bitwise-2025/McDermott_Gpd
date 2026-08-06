delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_master'

delete from plp_pipeline_details where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_master'


delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_source_to_stage'
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_stage_to_raw'
delete from plp_pipeline where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_raw_to_synapse'

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_source_to_stage'
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_source_to_stage'

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_stage_to_raw'
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_stage_to_raw'

delete from plp_pipeline_parameter where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_raw_to_synapse'
delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_dc_survey_register_excel_raw_to_synapse'

