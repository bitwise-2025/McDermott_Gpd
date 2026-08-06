DECLARE @NK_v INT;
DECLARE @SRC_NK_v INT;
SELECT @NK_v= MAX(dim_ent_sub_source_nk)+1  from dbo.dim_ent_sub_source;
SELECT @SRC_NK_v = dim_ent_source_nk  from dbo.dim_ent_source where source_name='SYSTEM';

INSERT INTO [dbo].[dim_ent_sub_source]
([dim_ent_sub_source_nk]
,[start_date]
,[end_date]
,[hash_code]
,[active]
,[created_date_time]
,[modified_date_time]
,[late_arrival_flag]
,[dim_ent_source_nk]
,[source_name]
,[sub_source_name])
VALUES
(@NK_v
,'2000-01-01 00:00:00.000'
,'2050-12-30 00:00:00.000'
,'P6-Direct'
,1
,'2022-03-04 00:00:00.000'
,NULL
,'N'
,@SRC_NK_v 
,'SYSTEM'
,'P6-Direct')


--MCPM Legacy Offshore
SELECT @NK_v= MAX(dim_ent_sub_source_nk)+1  from dbo.dim_ent_sub_source;
SELECT @SRC_NK_v = dim_ent_source_nk  from dbo.dim_ent_source where source_name='MANUAL';

INSERT INTO [dbo].[dim_ent_sub_source]
([dim_ent_sub_source_nk]
,[start_date]
,[end_date]
,[hash_code]
,[active]
,[created_date_time]
,[modified_date_time]
,[late_arrival_flag]
,[dim_ent_source_nk]
,[source_name]
,[sub_source_name])
VALUES
(@NK_v
,'2000-01-01 00:00:00.000'
,'2050-12-30 00:00:00.000'
,'Excel_MCPM_Cost'
,1
,'2022-03-04 00:00:00.000'
,NULL
,'N'
,@SRC_NK_v 
,'MANUAL'
,'Excel_MCPM_Cost')

--P6 Legacy Plan

SELECT @NK_v= MAX(dim_ent_sub_source_nk)+1  from dbo.dim_ent_sub_source;
SELECT @SRC_NK_v = dim_ent_source_nk  from dbo.dim_ent_source where source_name='MANUAL';

INSERT INTO [dbo].[dim_ent_sub_source]
([dim_ent_sub_source_nk]
,[start_date]
,[end_date]
,[hash_code]
,[active]
,[created_date_time]
,[modified_date_time]
,[late_arrival_flag]
,[dim_ent_source_nk]
,[source_name]
,[sub_source_name])
VALUES
(@NK_v
,'2000-01-01 00:00:00.000'
,'2050-12-30 00:00:00.000'
,'P6-Excel-Legacy'
,1
,'2022-03-04 00:00:00.000'
,NULL
,'N'
,@SRC_NK_v 
,'MANUAL'
,'P6-Excel-Legacy')

Go

--- One time entry for Dim_ent_unit_of_Measure


DECLARE @NK_v INT;
SELECT @NK_v= MAX(dim_ent_unit_of_measure_nk)+1  from dbo.dim_ent_unit_of_measure;

insert into dim_ent_unit_of_measure (dim_ent_unit_of_measure_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,unit_of_measure_code,unit_of_measure_name) 
values (@NK_v,'1900-01-01 00:00:00.000','2050-01-01 00:00:00.000','HR',1,'2022-05-26 06:42:19.043',NULL,'N','HR','HR')

