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
     VALUES('dim_ent_time_office_employee_master','Load Time Office Employee Master','[gpd].[stage_office_employee_master]','dbo.dim_ent_time_office_employee_master','[gpd].[reprocess_dim_ent_time_office_employee_master]','dim_ent_time_office_employee_master_sk','dim_ent_time_office_employee_master_nk','stage_office_employee_master_id','13','Y','DIMENSION')



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
     VALUES('dim_ent_time_office_supervisor_id_master','Load Time Office Supervisor Master','[gpd].[stage_office_supervisor_master]','dbo.dim_ent_time_office_supervisor_id_master','[gpd].[reprocess_dim_ent_time_office_supervisor_id_master]','dim_ent_time_office_supervisor_id_master_sk','dim_ent_time_office_supervisor_id_master_nk','stage_office_supervisor_master_id','13','Y','DIMENSION')

