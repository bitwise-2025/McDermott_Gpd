--DROP VIEW [yardkpi].[stage_fact_yardkpi_detailing_activity_v]

create view [yardkpi].[stage_fact_yardkpi_detailing_activity_v]
as
select ROW_NUMBER() over(ORDER BY project, activity_id ASC) as stage_fact_yardkpi_detailing_activity_id,
[parent_rssk],
cutoff_date,
project,
activity_id,
ROS_IFC_Drawing_receive_by_Detailing_team,
Complete_issuance_Shop_Drawing_by_Detailing_team,
qty,
detailing_start,
detailing_finish,
manhour,
progress,
plan_progress,
earned,
[plan],
variance,
total,
cek
from (
select distinct
	[parent_rssk],
    cutoff_date,
	project,
	activity_id,
	ROS_IFC_Drawing_receive_by_Detailing_team,
	Complete_issuance_Shop_Drawing_by_Detailing_team,
	qty,
	detailing_start,
	detailing_finish,
	manhour,
	progress,
	plan_progress,
	earned,
	[plan],
	variance,
	total,
	cek
from [yardkpi].[stage_detailing_engineering] dcsr
Where activity_id !='')disa;

go