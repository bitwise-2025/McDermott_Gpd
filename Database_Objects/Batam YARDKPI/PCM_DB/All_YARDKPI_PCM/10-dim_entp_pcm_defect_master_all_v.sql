SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_pcm_defect_master_all_v]
AS select [dim_entp_pcm_defect_master_sk]
	,[dim_entp_pcm_defect_master_nk]
	,[start_date] 
	,[end_date] 
	,[hash_code]
	,[active]
	,[created_date_time] 
	,[modified_date_time] 
	,[late_arrival_flag]
	,[fab_code] 
	,[defect_type]
	,[defect_type_title]
from [dbo].[dim_entp_pcm_defect_master] where active = 1;
GO