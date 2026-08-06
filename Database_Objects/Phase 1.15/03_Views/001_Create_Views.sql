/****** Object:  View [dbo].[dim_entp_cost_types_active_v]    Script Date: 4/11/2023 12:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_cost_types_active_v]
AS select cost_type ,cost_type_description ,created_date_time ,dim_entp_cost_types_nk ,dim_entp_cost_types_sk ,dim_entp_project_nk ,end_date ,hash_code ,modified_date_time ,project_number ,start_date,active
 from dim_entp_cost_types where active=1;
GO
/****** Object:  View [gpd].[NCSA_MCPM_CoA_Units_v]    Script Date: 4/11/2023 12:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_MCPM_CoA_Units_v] AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_mcpm_coa_units_id,
A.[work_unit_code] as [work_unit_code],
A.[work_unit_name] as [work_unit_name],
A.project_number as project_number
from (
SELECT distinct
b.[Unit] as [work_unit_code]
,b.[Description] as [work_unit_name]
,b.domain as project_number
from [gpd].[NCSA_MCPM_CoA_UnitsWorkArea] b
left join dim_entp_work_unit a
ON a.project_number=b.domain
and a.work_unit_code=b.[Unit]
and a.active=1
where b.[unit] is not null and b.domain is not null and a.[work_unit_code] is null and b.[Unit]=b.[WorkARea]

) A;
GO
/****** Object:  View [gpd].[NCSA_MCPM_CoA_WorkArea_v]    Script Date: 4/11/2023 12:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_MCPM_CoA_WorkArea_v]
AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_mcpm_coa_workarea_id,
A.[work_area_code] as [work_area_code],
coalesce(A.[work_area_name],'N/A') as [work_area_name],
A.UnitID as [UnitID],
A.PhaseID as [PhaseID],
A.project_number as project_number
from (
SELECT distinct
b.[workarea] as [work_area_code]
,b.[Description] as [work_area_name]
,b.[Unit] as [UnitID]
,'ZZZ' as [PhaseID]
,b.domain as project_number
from [gpd].[NCSA_MCPM_CoA_UnitsWorkArea] b
left join dim_entp_project p on (p.project_number=b.domain and p.active=1)
left join dim_entp_work_unit c on (c.dim_entp_project_nk=p.dim_entp_project_nk and c.work_unit_code=b.unit and c.active=1)
left join dim_entp_work_area a on (a.dim_entp_project_nk=c.dim_entp_project_nk and a.work_area_code=b.[workarea] and a.dim_entp_work_unit_nk=c.dim_entp_work_unit_nk and a.active=1)
where a.work_area_code is null
) A;
GO
/****** Object:  View [gpd].[NCSA_MCPM_Contract_v]    Script Date: 4/11/2023 12:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_MCPM_Contract_v] AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_mcpm_contract_id,
A.project_number as project_number,
A.contract_number as contract_number,
A.[contract_name] as [contract_name],
A.source as source,
A.sub_source_name as sub_source_name,
A.dim_ent_source_nk as dim_ent_source_nk,
A.dim_ent_sub_source_nk as dim_ent_sub_source_nk,
A.dim_entp_project_nk as dim_ent_project_nk,
A.enable_analytics as enable_analytics
from (
SELECT distinct
b.contractno as contract_number
,b.[description] as [contract_name]
,b.domain as project_number
,'SYSTEM' as source
,b.source as sub_source_name
,b.dim_ent_source_nk
,b.dim_ent_sub_source_nk
,b.dim_entp_project_nk
,'YES' as enable_analytics
from [gpd].[NCSA_MCPM_Contract] b
left join dim_ent_contract a
ON a.contract_number=b.contractno 
and a.project_number=b.domain
and a.active=1
where b.contractno is not null and b.domain is not null and (a.contract_number is null or b.[description]!=a.[contract_name])

) A;
GO
/****** Object:  View [gpd].[NCSA_MCPM_Entity_v]    Script Date: 4/11/2023 12:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[NCSA_MCPM_Entity_v] AS select ROW_NUMBER() OVER(order by (select 0) ) as stage_mcpm_entity_id,
A.[entity_id] as [entity_id],
A.[entity_name] as [entity_name],
A.source as source,
A.sub_source_name as sub_source_name,
A.dim_ent_source_nk as dim_ent_source_nk,
A.dim_ent_sub_source_nk as dim_ent_sub_source_nk
from (
SELECT distinct
 b.[companyid] as [entity_id]
,b.[companyname] as [entity_name]
,'SYSTEM' as source
,b.source as sub_source_name
,b.dim_ent_source_nk
,b.dim_ent_sub_source_nk
from [gpd].[NCSA_MCPM_Contract] B
left join dim_ent_entity a
ON a.[entity_id]=b.[companyid]
and a.active=1
--and a.contract_number is null
where b.[companyid] is not null and  a.[entity_id] is null

) A;
GO



