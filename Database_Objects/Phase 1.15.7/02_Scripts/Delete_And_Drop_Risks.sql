Delete  from [gpd].[RiskOpp_Contingency_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'

Delete from [gpd].[RiskOpp_Romap_Status_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'

Delete from [gpd].[RiskOpp_Risks_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'

 

 

Drop view [gpd].[RiskOpp_Contingency_PMR_JSON_v]
Drop view [gpd].[RiskOpp_Romap_Status_PMR_JSON_v]
Drop view [gpd].[RiskOpp_Risks_PMR_JSON_v]