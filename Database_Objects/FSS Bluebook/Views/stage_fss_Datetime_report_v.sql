CREATE VIEW fss.stage_fss_datetime_report_v
AS
select distinct zcreatedDateTime from (
select distinct zcreateddatetime from fss.stage_fss_neworders_report_v
UNION
select distinct zcreateddatetime from fss.error_fss_neworders_report_v
UNION
select distinct zcreateddatetime from fss.stage_fss_revenue_report_v
UNION
select distinct zcreateddatetime from fss.error_fss_revenue_report_v
UNION
select distinct zcreateddatetime from fss.stage_fss_gross_profit_report_v
UNION
select distinct zcreateddatetime from fss.error_fss_gross_profit_report_v
) as a
where zCreatedDateTime is not null
