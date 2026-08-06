
INSERT INTO [dbo].[generic_load_header]
           ([load_name]
           ,[description]
           ,[stage_table_name]
           ,[target_table_name]
           ,[reprocess_table_name]
           ,[target_sk_name]
           ,[target_gnk_name]
           ,[stage_sk_name]
           ,[glt_id]
           ,[active_flag]
          ,load_type)
     VALUES('dim_entp_maps_authorised_user','Load MAPS Authorised User','[gpd].[stage_maps_authorised_user]','dbo.dim_entp_maps_authorised_user','[gpd].[reprocess_dim_entp_maps_authorised_user]','dim_entp_maps_authorised_user_sk','dim_entp_maps_authorised_user_nk','stage_maps_authorised_user_id','13','Y','DIMENSION')


