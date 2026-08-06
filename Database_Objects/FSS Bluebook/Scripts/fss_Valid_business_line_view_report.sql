if object_id('fss.stage_fss_neworders_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_neworders_valid_businessline_report_vw;
go
CREATE  VIEW fss.stage_fss_neworders_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_neworders_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_revenue_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_revenue_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_revenue_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_revenue_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_gross_profit_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_gross_profit_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_gross_profit_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_gross_profit_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_gross_doe_Changes_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_gross_doe_Changes_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_gross_doe_Changes_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_gross_doe_Changes_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_backlog_revenue_rolloff_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_backlog_revenue_rolloff_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_backlog_revenue_rolloff_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_backlog_revenue_rolloff_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_capex_and_dd_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_capex_and_dd_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_capex_and_dd_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_capex_and_DD_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_functional_support_cost_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_functional_support_cost_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_functional_support_cost_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_functional_support_cost_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_pnl_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_pnl_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_pnl_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_pandl_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO

if object_id('fss.stage_fss_pnl_ytd_valid_businessline_report_vw','v') is not null
drop view fss.stage_fss_pnl_ytd_valid_businessline_report_vw;
go
CREATE VIEW fss.stage_fss_pnl_ytd_valid_businessline_report_vw
AS
select O.* from fss.stage_fss_pandl_ytd_report_v O 
INNER JOIN dim_entp_fss_business_line B
ON O.[Business Line]=B.business_line
GO
