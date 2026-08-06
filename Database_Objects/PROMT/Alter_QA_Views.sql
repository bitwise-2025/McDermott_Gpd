ALTER View [promt].[stage_promt_risk_opportunity_category_v] as
select ROW_NUMBER() OVER (ORDER BY ro_category) as stage_promt_risk_opportunity_id,ro_category,ro_category_description,sub_category from (
select distinct ISNULL(ro_category,'') ro_category, ISNULL(ro_category_description,'') ro_category_description, ISNULL(sub_category,'') sub_category  
from [promt].[stage_promt_risk_opportunity_v] )a
 
UNION ALL
 
select ROW_NUMBER() OVER (ORDER BY ro_category) as stage_promt_risk_opportunity_id,ro_category,ro_category_description,sub_category from (
select distinct ISNULL(ro_category,'') ro_category, ISNULL(ro_category_description,'') ro_category_description, ISNULL(sub_category,'') sub_category  
from [promt].[stage_promt_datalake_export_risk_snapshot] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY ro_category) as stage_promt_risk_opportunity_id,ro_category,ro_category_description,sub_category from (
select distinct ISNULL(ro_category,'') ro_category, ISNULL(ro_category_description,'') ro_category_description, ISNULL(sub_category,'') sub_category  
from [promt].[stage_promt_datalake_export_opportunity_snapshot] )a

GO




ALTER VIEW [promt].[stage_promt_quality_v] AS 
select ROW_NUMBER() OVER (ORDER BY quality) as promt_quality_id,quality,quality_description from (
select distinct ISNULL(quality,'') quality, ISNULL(quality_description,'') quality_description 
from [promt].[stage_promt_risk_opportunity_v] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY quality) as promt_quality_id,quality,quality_description from (
select distinct ISNULL(quality,'') quality, ISNULL(quality_description,'') quality_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY quality) as promt_quality_id,quality,quality_description from (
select distinct ISNULL(quality,'') quality, ISNULL(quality_description,'') quality_description
from [promt].[stage_promt_datalake_export_opportunity_snapshot] )a

GO




ALTER VIEW [promt].[stage_promt_social_culture_v] AS 
select ROW_NUMBER() OVER (ORDER BY social_culture) as social_culture_id,social_culture,social_culture_description from (
select distinct ISNULL(social_culture,'') social_culture, ISNULL(social_culture_description,'') social_culture_description 
from [promt].[stage_promt_risk_opportunity_v] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY social_culture) as social_culture_id,social_culture,social_culture_description from (
select distinct ISNULL(social_culture,'') social_culture, ISNULL(social_culture_description,'') social_culture_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY social_culture) as social_culture_id,social_culture,social_culture_description from (
select distinct ISNULL(social_culture,'') social_culture, ISNULL(social_culture_description,'') social_culture_description 
from [promt].[stage_promt_datalake_export_opportunity_snapshot] )a

GO




ALTER VIEW [promt].[stage_promt_distribution_type_v]
AS select ROW_NUMBER() OVER (ORDER BY distribution_type) as distribution_type_id,distribution_type,distribution_type_description from (
select distinct ISNULL(distribution_type,'') distribution_type,ISNULL(distribution_type_description,'') distribution_type_description 
from [promt].[stage_promt_risk_opportunity_v] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY distribution_type) as distribution_type_id,distribution_type,distribution_type_description from (
select distinct ISNULL(distribution_type,'') distribution_type,ISNULL(distribution_type_description,'') distribution_type_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] )a

UNION ALL

select ROW_NUMBER() OVER (ORDER BY distribution_type) as distribution_type_id,distribution_type,distribution_type_description from (
select distinct ISNULL(distribution_type,'') distribution_type,ISNULL(distribution_type_description,'') distribution_type_description 
from [promt].[stage_promt_datalake_export_opportunity_snapshot] )a


GO


ALTER VIEW [promt].[stage_promt_cost_impact_tcv_percentage_v]
AS select ROW_NUMBER() OVER (ORDER BY cost_impact_tcv_percentage) as cost_impact_tcv_percentage_id,cost_impact_tcv_percentage,cost_impact_tcv_percentage_description from (
select distinct cost_impact_tcv_percentage,cost_impact_tcv_percentage_description 
from [promt].[stage_promt_risk_opportunity_v] )a;
GO


ALTER VIEW [promt].[stage_promt_overall_impact_v]
AS select ROW_NUMBER() OVER (ORDER BY overall_impact) as overall_impact_id,overall_impact,overall_impact_description,overall_impact_display_sort_order from (
select distinct overall_impact,overall_impact_description,overall_impact_display_sort_order 
from [promt].[stage_promt_risk_opportunity_v] )a;
GO




ALTER VIEW [promt].[stage_promt_mit_environment_v] AS select ROW_NUMBER() OVER (ORDER BY mit_environment) as mit_environment_id,mit_environment,mit_environment_description from (
select distinct ISNULL(mit_environment,'') mit_environment,ISNULL(mit_environment_description,'') mit_environment_description 
from [promt].[stage_promt_datalake_export_risk]

union all

select distinct ISNULL(mit_environment,'') mit_environment,ISNULL(mit_environment_description,'') mit_environment_description 
from [promt].[stage_promt_datalake_export_risk_snapshot]

 )a;
GO





ALTER VIEW [promt].[stage_promt_mit_health_safety_security_v] AS select ROW_NUMBER() OVER (ORDER BY mit_health_safety_security) as mit_health_safety_security_id,mit_health_safety_security,mit_health_safety_security_description from (
select distinct ISNULL(mit_health_safety_security,'') mit_health_safety_security,ISNULL(mit_health_safety_security_description,'') mit_health_safety_security_description 
from [promt].[stage_promt_datalake_export_risk] 

union all

select distinct ISNULL(mit_health_safety_security,'') mit_health_safety_security,ISNULL(mit_health_safety_security_description,'') mit_health_safety_security_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] 

)a;
GO





ALTER VIEW [promt].[stage_promt_mit_quality_v] AS select ROW_NUMBER() OVER (ORDER BY mit_quality) as mit_quality_id,mit_quality,mit_quality_description from (
select distinct ISNULL(mit_quality,'') mit_quality,ISNULL(mit_quality_description,'') mit_quality_description 
from [promt].[stage_promt_datalake_export_risk] 

union all

select distinct ISNULL(mit_quality,'') mit_quality,ISNULL(mit_quality_description,'') mit_quality_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] 

)a;
GO





ALTER VIEW [promt].[stage_promt_mit_reputation_v] AS select ROW_NUMBER() OVER (ORDER BY mit_reputation) as mit_reputation_id,mit_reputation,mit_reputation_description from (
select distinct ISNULL(mit_reputation,'') mit_reputation,ISNULL(mit_reputation_description,'') mit_reputation_description 
from [promt].[stage_promt_datalake_export_risk]

union all

select distinct ISNULL(mit_reputation,'') mit_reputation,ISNULL(mit_reputation_description,'') mit_reputation_description 
from [promt].[stage_promt_datalake_export_risk_snapshot]


 )a;
GO





ALTER VIEW [promt].[stage_promt_mit_social_culture_v] AS select ROW_NUMBER() OVER (ORDER BY mit_social_culture) as mit_social_culture_id,mit_social_culture,mit_social_culture_description from (
select distinct ISNULL(mit_social_culture,'') mit_social_culture,ISNULL(mit_social_culture_description,'') mit_social_culture_description 
from [promt].[stage_promt_datalake_export_risk] 

union all

select distinct ISNULL(mit_social_culture,'') mit_social_culture,ISNULL(mit_social_culture_description,'') mit_social_culture_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] 

)a;
GO




ALTER VIEW [promt].[stage_promt_mit_cost_impact_tcv_percentage_v] AS select ROW_NUMBER() OVER (ORDER BY mit_cost_impact_tcv_percentage) as mit_cost_impact_tcv_percentage_id,mit_cost_impact_tcv_percentage,mit_cost_impact_tcv_percentage_description from (
select distinct ISNULL(mit_cost_impact_tcv_percentage,'') mit_cost_impact_tcv_percentage,ISNULL(mit_cost_impact_tcv_percentage_description,'') mit_cost_impact_tcv_percentage_description 
from [promt].[stage_promt_datalake_export_risk] 

union all

select distinct ISNULL(mit_cost_impact_tcv_percentage,'') mit_cost_impact_tcv_percentage,ISNULL(mit_cost_impact_tcv_percentage_description,'') mit_cost_impact_tcv_percentage_description 
from [promt].[stage_promt_datalake_export_risk_snapshot] 

)a;
GO



ALTER VIEW [promt].[stage_promt_mit_overall_impact_v]
AS select ROW_NUMBER() OVER (ORDER BY mit_overall_impact) as mit_overall_impact_id,mit_overall_impact,mit_overall_impact_description,mit_overall_impact_display_sort_order from (
select distinct ISNULL(mit_overall_impact,'') mit_overall_impact,ISNULL(mit_overall_impact_description,'') mit_overall_impact_description,ISNULL(mit_overall_impact_display_sort_order,'') mit_overall_impact_display_sort_order 
from [promt].[stage_promt_datalake_export_risk] )a;
GO




