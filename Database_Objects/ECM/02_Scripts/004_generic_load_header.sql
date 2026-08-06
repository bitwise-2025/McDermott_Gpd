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
     VALUES('dim_ecmhr_geolocation_bl1','dim_ecmhr_geolocation_bl1','gpd.stage_ecmhr_geolocation_bl1_v','dim_ecmhr_geolocation_bl1','gpd.reprocess_dim_ecmhr_geolocation_bl1','dim_ecmhr_geolocation_bl1_sk','dim_ecmhr_geolocation_bl1_nk','stage_ecmhr_geolocation_bl1_id','13','Y','DIMENSION')


---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_geolocation_bl2','dim_ecmhr_geolocation_bl2','gpd.stage_ecmhr_geolocation_bl2_v','dim_ecmhr_geolocation_bl2','gpd.reprocess_dim_ecmhr_geolocation_bl2','dim_ecmhr_geolocation_bl2_sk','dim_ecmhr_geolocation_bl2_nk','stage_ecmhr_geolocation_bl2_id','13','Y','DIMENSION')


---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_geolocation_area','dim_ecmhr_geolocation_area','gpd.stage_ecmhr_geolocation_area_v','dim_ecmhr_geolocation_area','gpd.reprocess_dim_ecmhr_geolocation_area','dim_ecmhr_geolocation_area_sk','dim_ecmhr_geolocation_area_nk','stage_ecmhr_geolocation_area_id','13','Y','DIMENSION')


---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_geolocation_country','dim_ecmhr_geolocation_country','gpd.stage_ecmhr_geolocation_country_v','dim_ecmhr_geolocation_country','gpd.reprocess_dim_ecmhr_geolocation_country','dim_ecmhr_geolocation_country_sk','dim_ecmhr_geolocation_country_nk','stage_ecmhr_geolocation_country_id','13','Y','DIMENSION')


---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_geolocation_location','dim_ecmhr_geolocation_location','gpd.stage_ecmhr_geolocation_location_v','dim_ecmhr_geolocation_location','gpd.reprocess_dim_ecmhr_geolocation_location','dim_ecmhr_geolocation_location_sk','dim_ecmhr_geolocation_location_nk','stage_ecmhr_geolocation_location_id','13','Y','DIMENSION')


---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_header','dim_ecmhr_header','gpd.stage_ecmhr_header_v','dim_ecmhr_header','gpd.reprocess_dim_ecmhr_header','dim_ecmhr_header_sk','dim_ecmhr_header_nk ','stage_ecmhr_header_id','13','Y','DIMENSION')



---------------------------------------------------------------------

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
     VALUES('dim_ecmhr_detail','dim_ecmhr_detail','gpd.stage_ecmhr_detail_v','dim_ecmhr_detail','gpd.reprocess_dim_ecmhr_detail','dim_ecmhr_detail_sk','dim_ecmhr_detail_nk ','stage_ecmhr_detail_id','13','Y','DIMENSION')


