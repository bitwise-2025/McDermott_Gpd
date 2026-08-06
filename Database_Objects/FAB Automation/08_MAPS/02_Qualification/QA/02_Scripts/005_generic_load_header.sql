
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
     VALUES('dim_entp_maps_qualification','Load MAPS Qualification','[gpd].[stage_maps_qualification]','dbo.dim_entp_maps_qualification','[gpd].[reprocess_dim_entp_maps_qualification]','dim_entp_maps_qualification_sk','dim_entp_maps_qualification_nk','stage_maps_qualification_id','13','Y','DIMENSION')

