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
     VALUES('dim_entp_plm_inboxtask','Load PLM InboxTask','[gpd].[NCSA_PLM_Inboxtask_v]','dbo.dim_entp_plm_inboxtask','[gpd].[reprocess_dim_entp_plm_inboxtask]','dim_entp_plm_inboxtask_sk','dim_entp_plm_inboxtask_nk','stage_plm_inboxtask_id','13','Y','DIMENSION')
