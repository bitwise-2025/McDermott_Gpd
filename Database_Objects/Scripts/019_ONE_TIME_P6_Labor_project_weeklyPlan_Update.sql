-- ON TIME Query update for paramter updates for P6 Labor Units, Project Milestone and weekly plan

Update plp_parameter_value
set parameter_value = 'QA/NCSA Operational/NCSA_WeeklyPlan'--'Development/NCSA Operational/NCSA_WeeklyPlan'--'NCSA Operational/NCSA_WeeklyPlan'
where pipeline_code='pl_weeklyplan_excel_source_to_stage'
and parameter_code='source_directory'

Update plp_parameter_value
set parameter_value = 'QA\NCSA Operational\P6\Project Milestone\99236910 - BB3'--'Development\NCSA Operational\P6\Project Milestone\99236910 - BB3'
where pipeline_code='pl_project_milestones_excel_to_stage'
and parameter_code='source_directory'


Update plp_parameter_value
set parameter_value = 'QA/NCSA Operational/P6/Labor Units/99236910 - BB3'--'Development/NCSA Operational/P6/Labor Units/99236910 - BB3'
where pipeline_code='pl_Labor_Units_P6_to_stage'
and parameter_code='source_directory'