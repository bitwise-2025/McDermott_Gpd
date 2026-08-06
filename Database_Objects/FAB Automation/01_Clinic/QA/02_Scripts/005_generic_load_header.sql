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
     VALUES('dim_ent_clinic_daily_visit','Load Clinic Daily Visit FAB Automation','[gpd].[stage_clinic_daily_visit]','dbo.dim_ent_clinic_daily_visit','[gpd].[reprocess_dim_ent_clinic_daily_visit]','dim_ent_clinic_daily_visit_sk','dim_ent_clinic_daily_visit_nk','stage_clinic_daily_visit_id','13','Y','DIMENSION')

