
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
     VALUES('dim_entp_maps_visa','Load MAPS Visa','[gpd].[stage_maps_visa]','dbo.dim_entp_maps_visa','[gpd].[reprocess_dim_entp_maps_visa]','dim_entp_maps_visa_sk','dim_entp_maps_visa_nk','stage_maps_visa_id','13','Y','DIMENSION')


