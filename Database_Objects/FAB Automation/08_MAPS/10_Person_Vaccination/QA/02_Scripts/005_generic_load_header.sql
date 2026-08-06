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
     VALUES('dim_entp_maps_person_vaccination','Load MAPS Person Vaccination','[gpd].[stage_maps_person_vaccination]','dbo.dim_entp_maps_person_vaccination','[gpd].[reprocess_dim_entp_maps_person_vaccination]','dim_entp_maps_person_vaccination_sk','dim_entp_maps_person_vaccination_nk','stage_maps_person_vaccination_id','13','Y','DIMENSION')


