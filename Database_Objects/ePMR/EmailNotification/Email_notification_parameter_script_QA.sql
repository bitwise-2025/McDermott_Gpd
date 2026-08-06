---===========
--QA
---===========
UPDATE plp_parameter_value
SET parameter_value = 'PMR-ADF-Reporting@mcdermott.com'
WHERE pipeline_code = 'pl_ncsa_master_pipelines' and parameter_code = 'ncsa_master_pipeline_email_to'

UPDATE plp_parameter_value
SET parameter_value = 'PMR-ADF-Reporting@mcdermott.com;djayasooriya@mcdermott.com;LGaunkar@mcdermott.com;ISheikh@mcdermott.com'
WHERE pipeline_code = 'pl_fabautomation_master_pipelines' and parameter_code = 'fab_rota_master_pipeline_email_to'

UPDATE plp_parameter_value
SET parameter_value = 'PMR-ADF-Reporting@mcdermott.com;djayasooriya@mcdermott.com'
WHERE pipeline_code = 'pl_fabautomation_master_pipelines' and parameter_code = 'fab_automation_master_pipeline_email_to'

UPDATE [dbo].[json_load_stat_emails]
SET email_id = 'GAMS-analytics@mcdermott.com;AAli@mcdermott.com;RUthadiyan@mcdermott.com'
where email_id IS NOT NULL

UPDATE [dbo].[NCSA_project_config_emails]
SET email_id = 'GAMS-analytics@mcdermott.com;RUthadiyan@mcdermott.com;ArunaChatterjee@mcdermott.com'
where project_number = '99357972'

UPDATE [dbo].[NCSA_project_config_emails]
SET email_id = 'GAMS-analytics@mcdermott.com;RUthadiyan@mcdermott.com'
where project_number != '99357972'
