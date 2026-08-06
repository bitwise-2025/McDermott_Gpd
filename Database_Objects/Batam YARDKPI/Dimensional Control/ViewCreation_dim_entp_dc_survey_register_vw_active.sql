SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_dc_survey_register_vw]
CREATE VIEW [dbo].[dim_entp_dc_survey_register_vw]
AS select [dim_entp_dc_survey_register_sk]
      ,[dim_entp_dc_survey_register_nk]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[dim_ent_source_nk]
      ,[dim_ent_sub_source_nk]
      ,[dc_function]
      ,[dim_ent_contract_nk]
      ,[discipline_code]
      ,[platform_name]
      ,[report_number]
      ,[rev]
      ,[description]
      ,[dwg_ref]
      ,[work_pack_no]
      ,[work_pack_title]
      ,[date_request]
      ,[date_Inspect]
      ,[date_report]
      ,[qc_rfi_irn]
      ,[pcm_status]
      ,[yard_area]
      ,[stages]
      ,[weightage]
      ,[status]
      ,[defect_category]
      ,[remarks]
      ,[trn_no]
      ,[irn_no]
      ,[date]
      ,[misc]
from [dbo].[dim_entp_dc_survey_register] where active = 1;
GO


