/* DB Scripts - Sitepro DIM and FACT Changes - AK - 12/10/2021 */

ALTER TABLE  [dbo].[ADFLogs] ALTER COLUMN [ErrorMessage] varchar(8000) NULL; 

GO
--correcting Schedule resources STage and reprocess table to allow for longer project_id

alter table [gpd].[NCSA_ScheduleResource]
alter column [project_id] varchar(12)

GO
alter table [gpd].[reprocess_dim_ops_schedule_resource]
alter column [project_id] varchar(12)
