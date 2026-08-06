--------------------------------------------------AK Scripts---------------------------------------
DECLARE @Date DATETIME;
SET @Date = GETDATE();


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('projectdetail_json','[{"dbName":"Sitepro_BB3","projectId":"99236910"},{"dbName":"Sitepro_GPX","projectId":"99185710"}]',1,'ssampathkumar@mcdermott.com',@Date,'pl_ncsa_project_list','Sitepro')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('databaseName','Sitepro_bb3,Sitepro_gpx',1,'ssampathkumar@mcdermott.com',@Date,'pl_ncsa_project_list','Sitepro')
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('projectid','99236910,99185710',1,'ssampathkumar@mcdermott.com',@Date,'pl_ncsa_project_list','Sitepro')
	 
--TO BE DONE as part of NCSA 1.1 --add goldenpass project number to mcpm dimensions,weekly,monthly
--update plp_parameter_value
--set parameter_value=parameter_value+',99185710'
--where active=1 and pipeline_code in ('pl_phases_mcpm_source_to_stage', 'pl_prime_mcpm_source_to_stage', 'pl_sub_prime_mcpm_source_to_stage', 'pl_summary_cost_type_mcpm_source_to_stage', 'pl_unit_mcpm_source_to_stage', 'pl_wa_mcpm_source_to_stage')
--and parameter_code in ('project')

update plp_parameter_value
set parameter_value=parameter_value+',99185710'
where active=1 and  pipeline_code in ('pl_mcpmdata_onshore_data_raw_to_synapse_stage', 'pl_mcpmdata_onshore_data_source_to_stage', 'pl_mcpmdata_progressitems_source_to_stage')
and parameter_code in ('projectid')

--------------------------------------------------debi scripts----------------------------------------
insert into plp_parameter_value values('databaseName','Sitepro_bb3',1,'ssampathkumar@mcdermott.com','2022-08-17 07:52:41.387','pl_6wklookahead_sitepro_source_to_stage','Sitepro');

--Insert statement for plp_parameter_value by using Insert select 
insert into plp_parameter_value
select parameter_code,parameter_value,active,touched_by,@Date AS touched_dtm,
pipeline_code,'99236910' AS  pipeline_sub_code
from plp_parameter_value
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' and pipeline_sub_code ='Sitepro';

insert into plp_parameter_value
select parameter_code,parameter_value,active,touched_by,@Date AS touched_dtm,
pipeline_code,'99185710' AS  pipeline_sub_code
from plp_parameter_value
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' and pipeline_sub_code ='Sitepro';

--Update statement to update the databaseName as Sitepro_gpx
update plp_parameter_value
set parameter_value='Sitepro_gpx'
where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' and pipeline_sub_code ='99185710'
and parameter_code ='databaseName';

--This has been shifted to the Post-Validation Scripts sesctionUpdate
--Update the Start Date manually to pick valid records form W6
--update plp_parameter_value
--set parameter_value='2021-11-27 00:00:00'
--where pipeline_code like 'pl_6wklookahead_sitepro_source_to_stage%' 
--and pipeline_sub_code in ('99236910','99185710') and parameter_code ='start_date'