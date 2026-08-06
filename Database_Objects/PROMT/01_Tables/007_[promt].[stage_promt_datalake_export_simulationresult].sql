CREATE TABLE [promt].[stage_promt_datalake_export_simulationresult]
(
[stage_promt_datalake_export_simulationresult_id] 		[int] IDENTITY(1,1) NOT NULL,
[ih_id]													[int],
[t_project_id]											[int],
[created_dtm]											[datetime],
[created_by]											[varchar](500),
[version_no]											[int],
[history_flag]											[varchar](1),
[project_id_version_no]									[int],
[active_flag]											[varchar](1),
[idd_id]												[int],
[data_class_name]										[varchar](500),
[row_id]												[int],
[data_key_name]											[varchar](240),
[data_key_value]										[varchar](8000),
[project_no]											[varchar](120) NULL,
[project_pc_code]										[varchar](120) NULL,
[project_pc_code_description]							[varchar](500) NULL,
[project_bid_project_id]								[int] NULL,         
[project_project_title]									[varchar](500) NULL,
[project_client_name]									[varchar](500) NULL,
[project_business_line]									[varchar](120) NULL,
[project_business_line_description]						[varchar](500) NULL,
[project_country]										[varchar](500) NULL,
[project_manager]										[varchar](500) NULL,
[project_prom_lead]										[varchar](500) NULL,
[project_category]										[varchar](120) NULL,
[project_category_description]							[varchar](500) NULL,
[project_total_contract_value]							[decimal](15, 2) NULL,
[project_estimated_cost]								[decimal](15, 2) NULL,
[project_currency_code]									[varchar](120) NULL,
[project_currency_code_description]						[varchar](500) NULL,
[project_contract_type]									[varchar](120) NULL,
[project_contract_type_description]						[varchar](500) NULL,
[project_total_duration]								[decimal](15, 2) NULL,
[project_document_revision_no]							[varchar](120) NULL,
[project_document_revision_date]						[datetime] NULL,
[project_revisied_by]									[varchar](120) NULL,
[project_approved_by]									[varchar](120) NULL,
[project_award_date]									[datetime] NULL,
[project_active_flag]									[varchar](1) NULL,
[project_project_type]									[varchar](120) NULL,
[project_project_type_description]						[varchar](500) NULL,
[project_duration_type]									[varchar](120) NULL,
[project_version_no]									[int] NULL,
[project_status]										[varchar](20) NULL,
[project_status_description]							[varchar](500) NULL,
dl_touched_dtm											datetime NULL,
 CONSTRAINT [stage_promt_datalake_export_simulationresult_id] PRIMARY KEY NONCLUSTERED 
	(
		[stage_promt_datalake_export_simulationresult_id] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

