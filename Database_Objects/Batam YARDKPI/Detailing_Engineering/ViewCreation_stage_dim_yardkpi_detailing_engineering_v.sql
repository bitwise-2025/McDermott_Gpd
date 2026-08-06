--DROP VIEW [yardkpi].[stage_dim_yardkpi_detailing_engineering_v]

create view [yardkpi].[stage_dim_yardkpi_detailing_engineering_v]
as
select ROW_NUMBER() over(ORDER BY  activity_id ASC) as stage_detailing_engineering_id,
source_code,
sub_source_code,
project_status,
project,
scope,
plan_actual,
activity_id,
discipline,
discipline_description,
piping_detailing_deliverable_type,
facility,
facility_description,
description,
project_category,
detailing_group_activity,
division,
component,
subf,
cst_element,
wbs,
Remarks
from (
select distinct
    source_code,
    sub_source_code,
	project_status,
	project,
	scope,
	plan_actual,
	activity_id,
	discipline,
	discipline_description,
	piping_detailing_deliverable_type,
	facility,
	facility_description,
	description,
	project_category,
	detailing_group_activity,
	division,
	component,
	subf,
	cst_element,
	wbs,
	Remarks
from [yardkpi].[stage_detailing_engineering] 
where activity_id !='')disa;

go