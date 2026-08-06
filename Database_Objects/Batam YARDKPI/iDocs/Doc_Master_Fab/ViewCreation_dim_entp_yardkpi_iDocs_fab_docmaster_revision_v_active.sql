SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--DROP VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision_v]
CREATE VIEW [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision_v]
AS select [dim_entp_yardkpi_iDocs_fab_docmaster_revision_sk]
	,[dim_entp_yardkpi_iDocs_fab_docmaster_revision_nk]
	,[end_date]
	,[hash_code]
	,[active]
	,[created_date_time]
	,[modified_date_time]
	,[late_arrival_flag]
	,[dim_ent_source_nk]
	,[dim_ent_sub_source_nk]
	,[dim_entp_yardkpi_iDocs_fab_docmaster_nk]
	,[doc_id]
	,[doc_number]
	,[revision_no]
	,[revision_date]
	,[overdue_reason]
	,[shop_dwg_type_of_error]
from [dbo].[dim_entp_yardkpi_iDocs_fab_docmaster_revision] where active = 1;
GO


