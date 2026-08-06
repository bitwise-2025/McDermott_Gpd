/****** Object:  View [gpd].[MCPM_coa_v]    Script Date: 1/5/2023 10:59:32 AM ******/
IF	OBJECT_ID('[gpd].[MCPM_coa_v]','V') IS NOT NULL
DROP VIEW [gpd].[MCPM_coa_v]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[MCPM_coa_v] AS SELECT 
	  D.[dim_ent_jde_coa_sk] as stage_mcpm_coa_id
      ,D.[coa_value] 
      ,D.[contract_entity]
      ,COALESCE(S.[contractno],D.[contract], NULL) AS [contract]
      ,D.[area_unit] 
      ,D.[cost_code] 
      ,D.[cost_type] 
      ,D.[coa_type]
      ,D.[project] 
      ,D.[account_code] 
      ,D.[contract_status]
      ,D.[area_description] 
      ,COALESCE(S.[MCPM_CoaDesc],D.[cost_description], NULL) AS [cost_description] 
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


