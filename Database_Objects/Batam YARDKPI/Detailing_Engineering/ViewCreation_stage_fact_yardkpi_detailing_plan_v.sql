-- drop view yardkpi.stage_fact_yardkpi_detailing_plan_v

create view yardkpi.stage_fact_yardkpi_detailing_plan_v
as
select ROW_NUMBER() over(ORDER BY project, activity_id ASC) as stage_fact_yardkpi_detailing_activity_id,
[parent_rssk],
cutoff_date,
project,
activity_id,
date,
plans
from (
select distinct
	[parent_rssk],
    cutoff_date,
	project,
	activity_id,
	date,
	plans
from [yardkpi].[stage_detailing_engineering] dcsr
where activity_id !=''
        ) disa;

go