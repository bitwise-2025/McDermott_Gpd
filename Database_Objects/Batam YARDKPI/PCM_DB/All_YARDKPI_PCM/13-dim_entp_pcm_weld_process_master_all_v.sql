/****** Object:  View [dbo].[dim_entp_pcm_weld_process_master_v]    Script Date: 3/26/2025 7:12:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_pcm_weld_process_master_all_v]
AS select [dim_entp_pcm_weld_process_master_sk]
	,[dim_entp_pcm_weld_process_master_nk]
	,[start_date] 
	,[end_date] 
	,[hash_code]
	,[active]
	,[created_date_time] 
	,[modified_date_time] 
	,[late_arrival_flag]
	,[fab_code]
	,[process] 
	,[process_title]
	,[discipline] 
from [dbo].[dim_entp_pcm_weld_process_master] where active = 1;
GO


