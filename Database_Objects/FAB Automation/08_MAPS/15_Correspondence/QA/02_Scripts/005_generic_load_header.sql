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
VALUES('dim_entp_maps_correspondence','MAPS - Correspondence data movement to synapse','gpd.stage_maps_correspondence','dbo.dim_entp_maps_correspondence','gpd.reprocess_dim_entp_maps_correspondence','dim_entp_maps_correspondence_sk','dim_entp_maps_correspondence_nk','stage_maps_correspondence_id','13','Y','DIMENSION')
