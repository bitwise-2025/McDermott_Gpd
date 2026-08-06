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
     VALUES('dim_entp_maps_employee_skill','Load MAPS Employ Skill','[gpd].[stage_maps_employ_skill]','dbo.dim_entp_maps_employee_skill','[gpd].[reprocess_dim_entp_maps_employ_skill]','dim_entp_maps_employee_skill_sk','dim_entp_maps_employee_skill_nk','stage_maps_employ_skill_id','13','Y','DIMENSION')

