--==================
--pre-script
--==================
DROP Table [yardkpi].[stage_entp_spc_progress]
DROP TABLE [yardkpi].[reprocess_entp_spc_progress]
DROP TABLE [dbo].[dim_entp_spc_progress]
DROP PROC [dbo].[usp_yardKPI_spc_dim_fact_load_validate]
--drop PROC [dbo].[usp_yardkpi_spc_dim_load]
DROP VIEW [yardkpi].[stage_entp_spc_project_vw]
DROP Table dbo.dim_entp_spc_project
DROP TABLE [yardkpi].[reprocess_entp_spc_project]
DROP VIEW [yardkpi].[stage_entp_spc_discipline_vw]
DROP TABLE [yardkpi].[reprocess_entp_spc_discipline]
DROP TABLE [dbo].[dim_entp_spc_discipline]
DROP VIEW [yardkpi].[stage_entp_spc_status_vw]
DROP TABLE [yardkpi].[reprocess_entp_spc_status]
DROP TABLE [dbo].[dim_entp_spc_status]
DROP VIEW [yardkpi].[stage_entp_spc_jobno_vw]
DROP TABLE [dbo].[dim_entp_spc_jobno]
DROP TABLE [yardkpi].[reprocess_entp_spc_jobno]
--DROP VIEW [yardkpi].[stage_entp_spc_entp_project_vw]
--DROP TABLE [yardkpi].[reprocess_entp_spc_entp_project]
DROP VIEW yardkpi.stage_entp_spc_contract_vw
DROP TABLE yardkpi.reprocess_entp_spc_contract
--DROP VIEW [yardkpi].[stage_entp_spc_ent_contract_vw]
--DROP TABLE [yardkpi].[reprocess_entp_spc_ent_contract]
delete from generic_load_header where load_name ='dim_entp_spc_contract'
delete from generic_load_detail where load_name ='dim_entp_spc_contract'

DROP VIEW dbo.dim_entp_spc_project_vw
DROP VIEW dbo.dim_entp_spc_discipline_vw
DROP VIEW dbo.dim_entp_spc_status_vw
DROP VIEW dbo.dim_entp_spc_jobno_vw
DROP VIEW [dbo].[dim_entp_spc_progress_vw]

select * from  [yardkpi].[reprocess_entp_spc_progress]
select * from  [yardkpi].[reprocess_entp_spc_project]
select * from  [yardkpi].[reprocess_entp_spc_discipline]
select * from  [yardkpi].[reprocess_entp_spc_status]
select * from  [yardkpi].[reprocess_entp_spc_jobno]






select * from  dbo.dim_entp_spc_project_vw
select * from dbo.dim_entp_spc_discipline_vw
select * from dbo.dim_entp_spc_status_vw
select * from dbo.dim_entp_spc_jobno_vw
select * from [dbo].[dim_entp_spc_progress_vw]

select P.pipeline_code,subject_area_code,PP.pipeline_sub_code,PP.display_order,PP.parameter_code,PV.parameter_value,P2.parameter_type_code,PV.parameter_value_id
from plp_pipeline P
JOIN plp_pipeline_parameter PP ON P.pipeline_code=PP.pipeline_code
JOIN plp_parameter_value PV ON P.pipeline_code=PV.pipeline_code and PP.pipeline_sub_code=PV.pipeline_sub_code and PP.parameter_code=PV.parameter_code
JOIN plp_parameter P2 ON PV.parameter_code=P2.parameter_code
WHERE P.pipeline_code like 'pl_yardkpi_spc%'
AND P.active =1 AND PP.Active=1 AND PV.Active=1
ORDER by P.pipeline_code,PP.pipeline_sub_code,PP.display_order
======
Dev
======
SVC-GLB-AZURADF_DEV

MDREntAnltxAzureKeyVault1
SPC-ORACLE-DEV-NON-AD-SVC-ADF
2e20fe9961404ee9a18640319156fe2c

battor01.mcdcorp.net|
spfc1bat|

battor01.mcdcorp.net|
spfc1bat|
QA3695BTM_DATA.SPCRPT_FIWP
QA4036BTM_DATA.SPCRPT_FIWP

===
QA
===
battor01.mcdcorp.net
1521
Oracle SID
spfc1bat
SVC-GLB-AZURADF_QA
MDREntAnltxAzureKeyVault1
NON-AD-SVC-GLB-AZURADF-QA
Latest version


insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'schema_table', 'QA4036BTM_DATA.SPCRPT_FIWP,QA3695BTM_DATA.SPCRPT_FIWP,QA7264BTM_DATA.SPCRPT_FIWP', 1, 'ajmal.usman@mcdermott.com','2024-06-19 11:03:26.827','pl_yardkpi_spc_source_to_stage','SPC')
--QA3695BTM_DATA.SPCRPT_FIWP
--QA7068BTM_DATA.SPCRPT_FIWP

Delete from plp_parameter_value where pipeline_code = 'pl_yardkpi_spc_source_to_stage' and parameter_code ='schema_table'



select * from [yardkpi].[stage_entp_spc_progress]
[dbo].[usp_yardKPI_spc_dim_fact_load_validate]

--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_project','Y','N','Y'
--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_discipline','Y','N','Y'
--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_status','Y','N','Y'
--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_jobno','Y','N','Y'
--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_entp_project','Y','N','Y'
--EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_ent_contract','Y','N','Y'
EXECUTE [dbo].[generic_load_dim_v2] 'dim_entp_spc_progress','Y','Y','Y'

EXECUTE [dbo].[usp_yardkpi_spc_dim_load]

SELECT * from generic_load_header where load_name ='dim_entp_spc_progress'
SELECT * from generic_load_detail where load_name ='dim_entp_spc_progress' order by stage_column_key_type, sl_no

SELECT * FROM dbo.dim_entp_spc_project
SELECT * FROM dbo.dim_entp_spc_discipline
SELECT * FROM dbo.dim_entp_spc_status
SELECT * FROM dbo.dim_entp_spc_jobno
SELECT * FROM yardkpi.stage_entp_spc_entp_project_vw
SELECT MAX(dim_entp_project_NK) FROM dbo.dim_entp_project WHERE 
SELECT MAX(dim_ent_contract_NK) FROM dbo.dim_ent_contract
dim_entp_spc_ent_contract


SELECT * FROM yardkpi.stage_entp_spc_progress
SELECT * FROM dbo.dim_entp_spc_progress
SELECT * FROM yardkpi.reprocess_entp_spc_progress

select *  FROM dim_ent_contract where contract_number ='R3695' and dim_ent_contract_sk = 3537 

Exception raised:  Error converting data type varchar to bigint.
UPDATE dim_ent_contract
SET active = '1'
where contract_number ='R3695' and dim_ent_contract_sk = 3537

[ESTIMATEDMANHOURS] [decimal](25,18) NULL,
	[PLANNEDMANHOURS] [decimal](25,18) NULL,
	[ACTUALMANHOURS] [decimal](25,18) NULL,
	[COMPLETEDMANHOURS] [decimal](25,18) NULL,
	[TOTALCOMPONENTCONSTRAINTS] [int] NULL,
	[OPENCOMPONENTCONSTRAINTS] [int] NULL,
	[CREWSIZE] [int] NULL,


	update yardkpi.stage_entp_spc_progress
	set [ESTIMATEDMANHOURS_str] = '0'
	where [ESTIMATEDMANHOURS_str] = ''

	update yardkpi.stage_entp_spc_progress
	set [PLANNEDMANHOURS_str] = '0'
	where [PLANNEDMANHOURS_str] = ''

	update yardkpi.stage_entp_spc_progress
	set [ACTUALMANHOURS_str] = '0'
	where [ACTUALMANHOURS_str] = ''

	update yardkpi.stage_entp_spc_progress
	set [COMPLETEDMANHOURS_str] = '0'
	where [COMPLETEDMANHOURS_str] = ''

	update yardkpi.stage_entp_spc_progress
	set [ESTIMATEDMANHOURS] = CAST([ESTIMATEDMANHOURS_str] AS DECIMAL(25,18))

	update yardkpi.stage_entp_spc_progress
	set [PLANNEDMANHOURS] = CAST([PLANNEDMANHOURS_str] AS DECIMAL(25,18))

	update yardkpi.stage_entp_spc_progress
	set [ACTUALMANHOURS] = CAST([ACTUALMANHOURS_str] AS DECIMAL(25,18))

	update yardkpi.stage_entp_spc_progress
	set [COMPLETEDMANHOURS] = CAST([COMPLETEDMANHOURS_str] AS DECIMAL(25,18))
	

	--update yardkpi.stage_entp_spc_progress
	--set [TOTALCOMPONENTCONSTRAINTS] = '0'
	--where [TOTALCOMPONENTCONSTRAINTS] = ''

	--update yardkpi.stage_entp_spc_progress
	--set [OPENCOMPONENTCONSTRAINTS] = '0'
	--where [OPENCOMPONENTCONSTRAINTS] = ''

	--update yardkpi.stage_entp_spc_progress
	--set [CREWSIZE] = '0'
	--where [CREWSIZE] = ''

	[ESTIMATEDMANHOURS] [decimal](25,18) NULL,
	[PLANNEDMANHOURS] [decimal](25,18) NULL,
	[ACTUALMANHOURS] [decimal](25,18) NULL,
	[COMPLETEDMANHOURS] [decimal](25,18) NULL,

	[TOTALCOMPONENTCONSTRAINTS] [int] NULL,
	[OPENCOMPONENTCONSTRAINTS] [int] NULL,

select * from  yardkpi.stage_entp_spc_progress where [COMPLETEDMANHOURS] = ''
	set [ESTIMATEDMANHOURS] = '0'
	where [ESTIMATEDMANHOURS] = ''

select [TOTALCOMPONENTCONSTRAINTS] from  yardkpi.stage_entp_spc_progress where [TOTALCOMPONENTCONSTRAINTS] <> 0
select [OPENCOMPONENTCONSTRAINTS] from  yardkpi.stage_entp_spc_progress where [OPENCOMPONENTCONSTRAINTS] <> 0
select [CREWSIZE] from  yardkpi.stage_entp_spc_progress where [CREWSIZE] <> 0

select * from  yardkpi.stage_entp_spc_progress

[CREWSIZE] [int] NULL,


select [OPENCOMPONENTCONSTRAINTS] from  yardkpi.stage_entp_spc_progress where [OPENCOMPONENTCONSTRAINTS] <> 0



select [ESTIMATEDMANHOURS] from  yardkpi.stage_entp_spc_progress where [ESTIMATEDMANHOURS] <> '0'

SELECT [ESTIMATEDMANHOURS], [ESTIMATEDMANHOURS] AS decimal(10, 2) from yardkpi.stage_entp_spc_progress


	   QA3695BTM_DATA.SPCRPT_FIWP

UPDATE plp_parameter_value
SET parameter_value = 'QA3695BTM_DATA.SPCRPT_FIWP'
where parameter_code ='schema_table' and pipeline_code = 'pl_yardkpi_spc_source_to_stage'

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'schema_table', 'QA4036BTM_DATA.SPCRPT_FIWP,QA3695BTM_DATA.SPCRPT_FIWP,QA7264BTM_DATA.SPCRPT_FIWP', 1, 'ajmal.usman@mcdermott.com','2024-06-19 11:03:26.827','pl_yardkpi_spc_source_to_stage','SPC')