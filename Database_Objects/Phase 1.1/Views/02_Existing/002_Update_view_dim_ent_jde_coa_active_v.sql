SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[dim_ent_jde_coa_active_v]
AS select a.*,
left(cost_code,2) prime,
(select b.prime_description from dim_ent_prime_active_v b where b.project_number = a.project and  b.prime_code =  left(cost_code,2)) prime_description,
left(cost_code,3) Sub_prime,
(select b.sub_prime_description from dim_ent_sub_prime_active_v b where b.project_number = a.project and  b.sub_prime_code =  left(cost_code,3)) sub_prime_description,
left(cost_type,2) Summary_Cost_Type,
(select b.Summary_Cost_Type_description from dim_ent_summary_cost_type_active_v b where b.project_number = a.project and  b.summary_cost_type =  left(cost_type,2)) summary_cost_type_description
from dim_ent_jde_coa  a where active = 1 
and coa_type = 'Project';
GO