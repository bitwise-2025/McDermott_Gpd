/****** Object:  View [dbo].[dim_ent_document_milestone_sequence_active_v]    Script Date: 5/25/2022 2:03:39 AM ******/
IF	OBJECT_ID('[dbo].[dim_ent_document_milestone_sequence_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_document_milestone_sequence_active_v]
GO


/****** Object:  View [dbo].[dim_ent_document_milestone_sequence_active_v]    Script Date: 5/25/2022 2:03:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_document_milestone_sequence_active_v]
AS select *
from dim_ent_document_milestone_sequence
where active = 1;
GO


/****** Object:  View [dbo].[dim_ent_document_milestone_sequence_v]    Script Date: 5/25/2022 2:04:44 AM ******/

IF	OBJECT_ID('[dbo].[dim_ent_document_milestone_sequence_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_document_milestone_sequence_v]
GO


/****** Object:  View [dbo].[dim_ent_document_milestone_sequence_v]    Script Date: 5/25/2022 2:04:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_document_milestone_sequence_v]
AS select * from [dbo].[dim_ent_document_milestone_sequence];
GO


/****** Object:  View [dbo].[dim_entp_project_active_v]    Script Date: 5/30/2022 9:11:24 PM ******/
IF	OBJECT_ID('[dbo].[dim_entp_project_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_project_active_v]
GO

/****** Object:  View [dbo].[dim_entp_project_active_v]    Script Date: 5/30/2022 9:11:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_project_active_v]
AS select 	dim_entp_project_nk,
	project_number,
	client_name,
	project_type,
	project_name,
	dim_entp_project_start_date_sk,
	dim_entp_project_end_date_sk,
	dim_ent_city_iso_nk,
	dim_ent_country_iso_nk,
      [tier_lov_code]
      ,[product_line_lov_code]
      ,[pcm]
      ,[award_date]
      ,[pcd]
      ,[dim_ent_area_nk]
      ,[area_code]
	  ,[exclude_project]
from dim_entp_project
where active = 1;
GO