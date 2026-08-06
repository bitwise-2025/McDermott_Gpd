---===========
--PROD
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

UPDATE [dbo].[NCSA_project_config_emails]
SET email_id = 'GAMS-analytics@mcdermott.com'
