--Step 1]
--modify the view [gpd].[MCPM_coa_v] to include the new column
ALTER VIEW [gpd].[MCPM_coa_v]
AS SELECT 
	  D.[dim_ent_jde_coa_sk] as stage_mcpm_coa_id
      ,D.[coa_value] 
      ,D.[contract_entity]
      ,D.[contract] 
      ,D.[area_unit] 
      ,D.[cost_code] 
      ,D.[cost_type] 
      ,D.[coa_type]
      ,D.[project] 
      ,D.[account_code] 
      ,D.[contract_status]
      ,D.[area_description] 
      ,D.[cost_description] 
      ,D.[coa_status] 
      ,D.[source_name] 
      ,D.[sub_source_name] 
      ,D.[projectname] 
      ,D.[contractdesc] 
      ,D.[contract_entity_desc]
      ,D.[project_entity] 
      ,D.[project_entity_description] 
      ,S.[MCPM_PSRLevel1] PSRLevel1
      ,S.[MCPM_PSRLevel2] PSRLevel2
      ,S.[MCPM_PSRL1Description] PSRL1Description
      ,S.[MCPM_PSRL2Description] PSRL2Description
	  ,S.[measurable]
  FROM [dbo].[dim_ent_jde_coa] D,
  gpd.[NCSA_MCPM_dim_ent_jde_coa] S
  WHERE TRIM(D.account_code) = S.CoA
  And D.project = S.Domain
  and D.active=1;
GO


--Step 2]
--modify the view  Stage.coa_jde_v to include the new column measurable

ALTER VIEW [Stage].[coa_jde_v] AS select S.*,D.PSRLevel1,D.PSRLevel2,D.PSRL1Description,D.PSRL2Description,D.measurable from 
(SELECT [stage_coa_jde_key]
       ,concat('JDE', '.', trim(isnull(contract_entity, '')), '.', trim(isnull(contract, '')), '.',  trim(isnull(costtype, '')), '.', trim(isnull(areaunit, '')), trim(isnull(costcode, ''))) coa_value
      ,[coa_type]
      ,[project]
      ,[projectname]
      ,[account]
      ,[contract]
      ,[contractdesc]
      ,[contract_entity]
      ,[contract_entity_desc]
      ,[contract_status]
      ,[project_entity]
      ,[project_entity_description]
      ,[areaunit]
      ,[areadesc]
      ,[costcode]
      ,[costdescription]
      ,[costtype]
      ,[coa_status]
      ,[source_name]
      ,[sub_source_name]
      ,[load_date]
  FROM [Stage].[coa_jde]) S
  LEFT OUTER JOIN (select coa_value,PSRLevel1,PSRLevel2,PSRL1Description,PSRL2Description,CAST(measurable as char(1)) as measurable  FROM dbo.dim_ent_jde_coa where active=1) D
  ON S.coa_value = D.coa_value;
GO