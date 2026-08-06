
/****** Object:  View [dbo].[dim_entp_ven_openclose_task_register_active_v22]    Script Date: 12/8/2021 1:22:59 AM ******/
IF	OBJECT_ID('[dbo].[dim_entp_ven_openclose_task_register_active_v22]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_ven_openclose_task_register_active_v22]

GO
SET ANSI_NULLS ON
GO

/****** Object:  View [dbo].[dim_entp_ven_openclose_task_register_active_v22]    Script Date: 8/25/2022 11:46:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_ven_openclose_task_register_active_v22]
AS select  [dim_entp_eng_ven_close_tr_nk] as [dim_entp_eng_ven_tr_nk]
      ,[document_id]
      ,[recipient]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[project_number]
      ,[deliverable]
      ,[document_number]
      ,[type_class]
      ,[expedited_version]
      ,[expedited_revision]
      ,[current_version]
      ,[current_revision]
      ,[user_type]
      ,[company]
      ,[expediting_start]
      ,[expediting_due]
      ,[expediting_forecast]
      ,[expediting_actual]
      ,[response_status]
      ,[client_return_date]
      ,[dim_entp_project_nk]
      ,[dim_entp_ven_del_nk]
      ,[dim_entp_eng_del_nk]
      ,[dim_ent_document_status_nk]
      ,[expediting_id]
	,type_class + convert(varchar(500),dim_entp_ven_del_nk) key_ven_del
  FROM  [dbo].[dim_entp_eng_ven_close_task_register] CT
  WHERE CT.ACTIVE=1;
GO


