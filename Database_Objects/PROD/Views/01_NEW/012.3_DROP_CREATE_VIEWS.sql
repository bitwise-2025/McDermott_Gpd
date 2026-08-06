DROP VIEW [dbo].[dim_ent_unique_cost_code_v]
GO

CREATE VIEW [dbo].[dim_ent_unique_cost_code_v]
AS select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_jde_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null
union all
select project,cost_code,cost_description,cost_code_key,
(select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) dim_entp_project_nk
from dim_ent_geac_unique_cost_code_v
where (select dim_entp_project_nk from dim_entp_project a where active = '1' and a.project_number = project) is not null;
GO
