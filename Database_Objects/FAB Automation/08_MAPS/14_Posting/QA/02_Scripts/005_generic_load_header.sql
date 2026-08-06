
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
     VALUES('dim_entp_maps_posting','Load MAPS Posting','[gpd].[stage_maps_posting]','dbo.dim_entp_maps_posting','[gpd].[reprocess_dim_entp_maps_posting]','dim_entp_maps_posting_sk','dim_entp_maps_posting_nk','stage_maps_posting_id','13','Y','DIMENSION')



