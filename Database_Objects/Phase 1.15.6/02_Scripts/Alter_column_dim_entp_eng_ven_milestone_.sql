Alter table [dbo].[dim_entp_eng_ven_milestone] 
alter column [milestone_id] bigint ;

GO
Alter table [dbo].[dim_entp_eng_ven_milestone]
alter column [ms_weight] bigint ;

Alter table gpd.reprocess_dim_entp_eng_ven_milestone
alter column [ms_weight] bigint ;

Alter table gpd.reprocess_dim_entp_eng_ven_milestone
alter column [MS_ID] bigint ;


Alter table  [gpd].[iDocs_MS_Master]
alter column [MS_ID] bigint null ;

 

Alter table  [gpd].[iDocs_MS_Master]
alter column [MS_WEIGHT] bigint null ;
