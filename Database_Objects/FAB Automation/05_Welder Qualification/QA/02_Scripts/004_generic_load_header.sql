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
     VALUES('dim_ent_welder','Welder Qualification data movement to synapse','gpd.stage_welding_process_v','dbo.dim_ent_welder','gpd.reprocess_dim_ent_welder','dim_ent_welder_sk','dim_ent_welder_nk','stage_welding_process_key','13','Y','DIMENSION')


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
     VALUES('dim_ent_jcc','Welder JCC data movement to synapse','gpd.stage_jcc_v','dbo.dim_ent_jcc','gpd.reprocess_dim_ent_jcc','dim_ent_jcc_sk','dim_ent_jcc_nk','stage_welding_process_key','13','Y','DIMENSION')


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
     VALUES('dim_ent_welder_contract','Welder Contract data movement to synapse','gpd.stage_welder_contract_v','dbo.dim_ent_welder_contract','gpd.reprocess_dim_ent_welder_contract','dim_ent_welder_contract_sk','dim_ent_welder_contract_nk','stage_welding_process_key','13','Y','DIMENSION')


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
     VALUES('dim_ent_welder_process','Welder Contract data movement to synapse','gpd.stage_weld_process_v','dbo.dim_ent_weld_process','gpd.reprocess_dim_ent_weld_process','dim_entp_pcm_weld_process_master_sk','dim_entp_pcm_weld_process_master_nk','stage_welding_process_key','13','Y','DIMENSION')


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
     VALUES('dim_ent_welder_qual','Welder Qualification data movement to synapse','gpd.stage_welding_process_v','dbo.dim_ent_welder_qual','gpd.reprocess_dim_ent_welder_qual','dim_ent_welder_qual_sk','dim_ent_welder_qual_nk','stage_welding_process_key','13','Y','DIMENSION')


