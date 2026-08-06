
--------------------------------------------------PROD scripts----------------------------------------

---Potentially increase the number of projects for MCPM Offshore Monthly process.

update plp_parameter_value
set parameter_value='N8585,D7029,D7072,N8196,R4036,R3973,R3973,D7317,E0660,D7415,D7512,D7521,D6978,D7264,D7068,N8318,R3507,D6847,D7018'
where active=1 and  pipeline_code in ('pl_mcpmdata_offshore_monthly_raw_to_synapse')
and parameter_code in ('projectid')

--Cleanup scripts from PROJECTXD might be required here.

delete from [dbo].[fact_project_xd]
where dim_ent_sub_source_nk in (select dim_ent_sub_source_nk from dim_ent_sub_source
where sub_source_name = 'MCPM Offshore')


truncate table [pxd].[stage_mcpm_offshore_data]


truncate table [pxd].[reprocess_stage_mcpm_offshore_data]

--AK start date set to same as QA
execute [dbo].[updateIncrementPipelineParameterValue] 'pl_mcpmdata_offshore_monthly_raw_to_synapse','MCPM','start_date','2021-05-01 00:00:00'