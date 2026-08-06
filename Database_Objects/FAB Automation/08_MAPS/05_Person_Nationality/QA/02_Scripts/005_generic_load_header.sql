
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
     VALUES('dim_entp_maps_person_nationality','Load MAPS Person Nationality','[gpd].[stage_maps_person_nationality]','dbo.dim_entp_maps_person_nationality','[gpd].[reprocess_dim_entp_maps_person_nationality]','dim_entp_maps_person_nationality_sk','dim_entp_maps_person_nationality_nk','stage_maps_person_nationality_id','13','Y','DIMENSION')


