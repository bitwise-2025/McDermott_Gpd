CREATE VIEW fss.stage_fss_datetime_report_v
AS
select distinct zcreatedDateTime, Datasource from (
select distinct zcreateddatetime,'New Orders' AS [DataSource] from fss.stage_fss_neworders_report_v
UNION
select distinct zcreateddatetime,'New Orders' AS [DataSource] from fss.error_fss_neworders_report_v
UNION
select distinct zcreateddatetime,'Revenue' AS [DataSource] from fss.stage_fss_revenue_report_v
UNION
select distinct zcreateddatetime,'Revenue' AS [DataSource] from fss.error_fss_revenue_report_v
UNION
select distinct zcreateddatetime,'Gross Profit' AS [DataSource] from fss.stage_fss_gross_profit_report_v
UNION
select distinct zcreateddatetime,'Gross Profit' AS [DataSource] from fss.error_fss_gross_profit_report_v
UNION
select distinct zcreateddatetime,'DOE Breakdown' AS [DataSource] from fss.stage_fss_doe_breakdown_report_v
UNION
select distinct zcreateddatetime,'DOE Breakdown' AS [DataSource] from fss.error_fss_doe_breakdown_report_v
UNION
select distinct zcreateddatetime,'Gross DOE Changes' AS [DataSource] from fss.stage_fss_gross_doe_Changes_report_v
UNION
select distinct zcreateddatetime,'Gross DOE Changes' AS [DataSource] from fss.error_fss_gross_doe_Changes_report_v
UNION
select distinct zcreateddatetime,'Backlog Revenue RollOff' AS [DataSource] from fss.stage_fss_backlog_Revenue_rolloff_report_v
UNION
select distinct zcreateddatetime,'Backlog Revenue RollOff' AS [DataSource] from fss.error_fss_backlog_Revenue_rolloff_report_v
UNION
select distinct zcreateddatetime,'Capex & DD' AS [DataSource] from fss.stage_fss_capex_and_dd_report_v
UNION
select distinct zcreateddatetime,'Capex & DD' AS [DataSource] from fss.error_fss_capex_and_dd_report_v
UNION
select distinct zcreateddatetime,'Functional Support Cost' AS [DataSource] from fss.stage_fss_functional_support_Cost_report_v
UNION
select distinct zcreateddatetime,'Functional Support Cost' AS [DataSource] from fss.error_fss_functional_support_Cost_report_v
UNION
select distinct zcreateddatetime,'P&L' AS [DataSource] from fss.stage_fss_pandl_report_v
UNION
select distinct zcreateddatetime,'P&L' AS [DataSource] from fss.error_fss_pandl_report_v
UNION
select distinct zcreateddatetime,'P&L YTD' AS [DataSource] from fss.stage_fss_pandl_ytd_report_v
UNION
select distinct zcreateddatetime,'P&L YTD' AS [DataSource] from fss.error_fss_pandl_ytd_report_v
) as a
where zCreatedDateTime is not null
