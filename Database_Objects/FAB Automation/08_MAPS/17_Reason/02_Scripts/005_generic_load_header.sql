
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
     VALUES('dim_entp_maps_reason','Load MAPS Reason','[gpd].[stage_maps_reason]','dbo.dim_entp_maps_reason','[gpd].[reprocess_dim_entp_maps_reason]','dim_entp_maps_reason_sk','dim_entp_maps_reason_nk','stage_maps_reason_id','13','Y','DIMENSION')


