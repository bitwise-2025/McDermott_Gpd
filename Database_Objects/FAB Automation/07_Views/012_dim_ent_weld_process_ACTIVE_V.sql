DROP VIEW [dbo].[dim_ent_weld_process_ACTIVE_V]
GO
CREATE VIEW [dbo].[dim_ent_weld_process_ACTIVE_V]
AS select 	[dim_entp_pcm_weld_process_master_sk],
	[dim_entp_pcm_weld_process_master_nk],
	[start_date],
	[end_date],
	[hash_code],
	[active],
	[created_date_time],
	[modified_date_time],
	[late_arrival_flag],
	[fab_code] AS [Fab Code],
	[process]  AS [Process],
	[process_title] AS [Process Title],
	[discipline],
	[position]
FROM [dbo].[dim_ent_weld_process]
where active = '1';
GO


