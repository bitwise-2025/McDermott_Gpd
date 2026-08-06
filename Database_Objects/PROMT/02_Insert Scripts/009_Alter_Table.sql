Alter table [promt].[stage_promt_datalake_export_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_risk] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_opportunity] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_opportunity] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_opportunity]  
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_risk_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_risk_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_risk_snapshot]
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_opportunity_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_promt_datalake_export_opportunity_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[fact_promt_opportunity_snapshot]
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_simulationresult] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[stage_promt_datalake_export_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_contingency] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_project] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_project] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[reprocess_dim_ent_promt_project_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime

Alter table [promt].[dim_ent_promt_project_snapshot] 
add [closed_dtm] datetime, [archived] [varchar](5), rearchival_date datetime
