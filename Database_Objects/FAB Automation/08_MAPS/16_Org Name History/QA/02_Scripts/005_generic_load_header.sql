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
VALUES('dim_entp_maps_org_name_history','MAPS - Organisation name history data movement to synapse','gpd.stage_maps_org_name_history','dbo.dim_entp_maps_org_name_history','gpd.reprocess_dim_entp_maps_org_name_history','dim_entp_maps_org_name_history_sk','dim_entp_maps_org_name_history_nk','stage_maps_org_name_history_id','13','Y','DIMENSION')

 