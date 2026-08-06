--[yardkpi].[reprocess_dc_survey_register]

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [rev] [varchar](50) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [description] [varchar](1000) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN[dwg_ref] [varchar](1000) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [work_pack_no] [varchar](1000) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [date_request] [varchar](50) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [date_Inspect] [varchar](50) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [date_report] [varchar](50) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [qc_rfi_irn] [varchar](200) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [defect_category] [varchar](500) NULL
			
ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [remarks] [varchar](1000) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [date] [varchar](50) NULL

ALTER TABLE [yardkpi].[reprocess_dc_survey_register]
ALTER COLUMN [misc] [varchar](1000) NULL

--[dbo].[dim_entp_dc_survey_register]

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [rev] [varchar](50) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [description] [varchar](1000) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [dwg_ref] [varchar](1000) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [work_pack_no] [varchar](1000) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [qc_rfi_irn] [varchar](200) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [defect_category] [varchar](500) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [remarks] [varchar](1000) NULL

ALTER TABLE [dbo].[dim_entp_dc_survey_register]
ALTER COLUMN [misc] [varchar](1000) NULL
