IF	OBJECT_ID('[dbo].[dim_entp_commissioning_punch_items_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_punch_items_active_v]
GO


/****** Object:  View [dbo].[dim_entp_commissioning_punch_items_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_punch_items_active_v]
AS select * from [dbo].[dim_entp_commissioning_punch_items] where active=1;
GO

IF	OBJECT_ID('[dbo].[dim_entp_commissioning_sheets_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_sheets_active_v]
GO


/****** Object:  View [dbo].[dim_entp_commissioning_sheets_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_sheets_active_v]
AS select [dim_entp_commissioning_sheets_sk]
      ,[dim_entp_commissioning_sheets_nk]
      ,[sheet]
      ,[sheet_type]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[sheet_description]
	  ,[discipline]
      ,[dim_entp_commissioning_sub_system_nk]
      ,[dim_entp_commissioning_tags_nk]
       From [dbo].[dim_entp_commissioning_sheets] where active=1;
GO


IF	OBJECT_ID('[dbo].[dim_entp_commissioning_sheets_transactions_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_sheets_transactions_active_v]
GO



/****** Object:  View [dbo].[dim_entp_commissioning_sheets_transactions_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_sheets_transactions_active_v]
AS select [dim_entp_commissioning_sheets_transactions_sk]
      ,[dim_entp_commissioning_sheets_transactions_nk]
      ,[sheet]
      ,[sheet_status]
      ,[start_date]
      ,[end_date]
      ,[hash_code]
      ,[active]
      ,[created_date_time]
      ,[modified_date_time]
      ,[late_arrival_flag]
      ,[type]
      ,[ok]
      ,[approver]
      ,[status_date]
      ,[barcode]
      ,[phase_number]
      ,[discipline]
      ,[dim_entp_commissioning_sheets_nk]
      ,[tag_number]
      ,[system_number]
      ,[sub_system_number]
      ,[project_number]
      ,[dim_entp_commissioning_tags_nk]
      ,[dim_entp_commissioning_system_nk]
      ,[dim_entp_commissioning_sub_system_nk]
      ,[dim_entp_project_nk]
      
from [dbo].[dim_entp_commissioning_sheets_transactions] where active=1;
GO


IF	OBJECT_ID('[dbo].[dim_entp_commissioning_sub_system_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_sub_system_active_v]
GO

/****** Object:  View [dbo].[dim_entp_commissioning_sub_system_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_sub_system_active_v]
AS select * from [dbo].[dim_entp_commissioning_sub_system] where active=1;
GO

IF	OBJECT_ID('[dbo].[dim_entp_commissioning_system_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_system_active_v]
GO

/****** Object:  View [dbo].[dim_entp_commissioning_system_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_system_active_v]
AS select * from [dbo].[dim_entp_commissioning_system] where active=1;
GO

IF	OBJECT_ID('[dbo].[dim_entp_commissioning_tags_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_commissioning_tags_active_v]
GO


/****** Object:  View [dbo].[dim_entp_commissioning_tags_active_v]    Script Date: 7/25/2022 3:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_commissioning_tags_active_v]
AS select * from [dbo].[dim_entp_commissioning_tags] where active=1;
GO
