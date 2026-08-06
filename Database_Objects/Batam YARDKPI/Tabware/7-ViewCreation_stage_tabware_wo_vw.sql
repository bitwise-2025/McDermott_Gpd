/****** Object:  View [yardkpi].[stage_tabware_wo_vw]    Script Date: 3/28/2024 2:13:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW [yardkpi].[stage_tabware_wo_vw]


CREATE VIEW [yardkpi].[stage_tabware_wo_vw] AS select
  ROW_NUMBER() over(
    ORDER BY
      equipment, wo_base ASC
  ) as stage_tabware_wo_id,
 source_code,
 sub_source_code,
 equipment,
 equipment_class,
 entered_date,
 requested_completion,
 completed_date,
 last_modified,
 wo_status,
 work_class,
 iso9000,
 workers,
 wo_planned_hours,
 down_hours,
 res_planned_hours,
 actual_hours,
 planned_hours_total,
 internal_labor,
 contract_labor,
 internal_nonstock,
 contract_nonstock,
 stores_material,
 wo_services,
 internal_tool,
 contract_tool,
 internal_other,
 contract_other,
 wo_base,
 wo_task,
 wo_subtask,
 failure_flag,
 planned_labor,
 planned_nonstock,
 planned_stores,
 planned_services,
 planned_tools,
 plant

from
(
select
 source_code,
 sub_source_code,
 a.equipment,
 max(equipment_class) as equipment_class,
 max(entered_date) as entered_date,
 max(requested_completion) as requested_completion,
 max(completed_date) as completed_date,
 max(last_modified) as last_modified,
 max(wo_status) as wo_status,
 max(work_class) as work_class,
 max(iso9000) as iso9000,
 sum( case when actual_hours > 0 then workers else 0 end) as workers,
 sum(wo_planned_hours) as wo_planned_hours,
 sum(down_hours) as down_hours,
 sum(res_planned_hours) as res_planned_hours,
 sum(actual_hours) as actual_hours,
 sum(planned_hours_total) as planned_hours_total,
 sum(internal_labor) as internal_labor,
 sum(contract_labor) as contract_labor,
 sum(internal_nonstock) as internal_nonstock,
 sum(contract_nonstock) as contract_nonstock,
 sum(stores_material) as stores_material,
 sum(wo_services) as wo_services,
 sum(internal_tool) as internal_tool,
 sum(contract_tool) as contract_tool,
 sum(internal_other) as internal_other,
 sum(contract_other) as contract_other,
 a.wo_base,
 max(wo_task) as wo_task,
 max(wo_subtask) as wo_subtask,
 max(failure_flag) as failure_flag,
 sum(planned_labor) as planned_labor,
 sum(planned_nonstock) as planned_nonstock,
 sum(planned_stores) as planned_stores,
 sum(planned_services) as planned_services,
 sum(planned_tools) as planned_tools,
 plant
from [yardkpi].[stage_tabware_wo] a, 
    (select equipment, wo_base, count(*) dcount
	   from [yardkpi].[stage_tabware_wo]
	  group by equipment, wo_base
     having count(*) > 1) b
where a.equipment = b.equipment
  and a.wo_base = b.wo_base
group by
 source_code,
 sub_source_code,
 a.equipment,
 a.wo_base,
 plant

union

select
 source_code,
 sub_source_code,
 a.equipment,
 max(equipment_class) as equipment_class,
 max(entered_date) as entered_date,
 max(requested_completion) as requested_completion,
 max(completed_date) as completed_date,
 max(last_modified) as last_modified,
 max(wo_status) as wo_status,
 max(work_class) as work_class,
 max(iso9000) as iso9000,
 sum( case when actual_hours > 0 then workers else 0 end) as workers,
 sum(wo_planned_hours) as wo_planned_hours,
 sum(down_hours) as down_hours,
 sum(res_planned_hours) as res_planned_hours,
 sum(actual_hours) as actual_hours,
 sum(planned_hours_total) as planned_hours_total,
 sum(internal_labor) as internal_labor,
 sum(contract_labor) as contract_labor,
 sum(internal_nonstock) as internal_nonstock,
 sum(contract_nonstock) as contract_nonstock,
 sum(stores_material) as stores_material,
 sum(wo_services) as wo_services,
 sum(internal_tool) as internal_tool,
 sum(contract_tool) as contract_tool,
 sum(internal_other) as internal_other,
 sum(contract_other) as contract_other,
 a.wo_base,
 max(wo_task) as wo_task,
 max(wo_subtask) as wo_subtask,
 max(failure_flag) as failure_flag,
 sum(planned_labor) as planned_labor,
 sum(planned_nonstock) as planned_nonstock,
 sum(planned_stores) as planned_stores,
 sum(planned_services) as planned_services,
 sum(planned_tools) as planned_tools,
 plant
from [yardkpi].[stage_tabware_wo] a, 
    (select equipment, wo_base, count(*) dcount
	   from [yardkpi].[stage_tabware_wo]
	  group by equipment, wo_base
     having count(*) = 1) b
where a.equipment = b.equipment
  and a.wo_base = b.wo_base
group by
 source_code,
 sub_source_code,
 a.equipment,
 a.wo_base,
 plant
) stage_tabware_wo

