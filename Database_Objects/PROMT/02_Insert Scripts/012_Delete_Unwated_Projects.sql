delete from [promt].[dim_ent_promt_project] where project_project_title LIKE '%Gevo%' and project_no ='360706 (Deleted upon request)'		

delete from [promt].[dim_ent_promt_project_snapshot] where project_project_title LIKE '%Gevo%' and project_no ='360706 (Deleted upon request)'

delete from [promt].[fact_promt_risk] where dim_ent_promt_project_sk='32' and dim_ent_promt_project_nk='196'		
		
delete from [promt].[fact_promt_opportunity] where dim_ent_promt_project_sk='32' and dim_ent_promt_project_nk='196'			


delete from [promt].[fact_promt_risk_snapshot] where dim_ent_promt_project_sk in				
(
'1083'
,'488'
,'975'
,'800'
,'266'
,'388'
,'391'
,'752'
,'291'
,'52'
,'772'
)




delete from [promt].[fact_promt_opportunity_snapshot] where dim_ent_promt_project_sk in						
(
'1083'
,'488'
,'975'
,'800'
,'266'
,'388'
,'391'
,'752'
,'291'
,'52'
,'772'
)

