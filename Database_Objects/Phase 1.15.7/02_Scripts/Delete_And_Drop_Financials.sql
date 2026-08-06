Drop view [gpd].[Financials_2_PMR_JSON_v]
Drop view [gpd].[Financials_1_PMR_JSON_v]
Drop view [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_v]

 

Delete  from  [gpd].[Financials_2_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'
Delete   from  [gpd].[Financials_1_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'
Delete   from  [gpd].[Financials_3_LDs_Guarantees_PMR_JSON]
where json_attribute like '%zCreatedDateTime" : "2023-09-08%'