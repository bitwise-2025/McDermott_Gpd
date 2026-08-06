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
     VALUES('dim_ent_turnstyle_daily_punch','FAB Automation - Daily punches data movement to synapse','gpd.stage_turnstyle_daily_punch','dbo.dim_ent_turnstyle_daily_punch','gpd.reprocess_dim_ent_turnstyle_daily_punch','dim_ent_turnstyle_daily_punch_sk','dim_ent_turnstyle_daily_punch_nk','stage_turnstyle_daily_punch_id','13','Y','DIMENSION')
