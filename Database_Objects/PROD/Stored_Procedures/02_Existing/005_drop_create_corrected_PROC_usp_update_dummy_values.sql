/****** Object:  StoredProcedure [dbo].[usp_update_dummy_values]    Script Date: 9/2/2021 1:11:23 AM ******/
DROP PROCEDURE [dbo].[usp_update_dummy_values]
GO

/****** Object:  StoredProcedure [dbo].[usp_update_dummy_values]    Script Date: 9/2/2021 1:11:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_update_dummy_values] AS


--This procedure to update dummy values with code ZZZ to project dim tables
--Change Log: 09/02/2021 : Satish: Corrected the (dim_entp_iwp_nk) value in the IWP INSERT section.

--Phase tables dummy value insert
declare  @mx_val bigint
declare  @counter bigint
declare  @max_key bigint
declare @dim_entp_project_nk bigint
declare @count int


IF OBJECT_ID('tempdb..#project_temp') IS NOT NULL
BEGIN
    DROP TABLE #project_temp
END

--select * into #project_temp from [dbo].[dim_entp_project] where active = 1

--Limiting the records fetched only to those that are not present in the DIM table
	SELECT DISTINCT A.*
	into #project_temp
	FROM [dbo].[dim_entp_project] A
	WHERE 
	A.Active = 1
	AND (
		A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_phase] ph WHERE ph.active = 1 AND ph.phase_code = 'ZZZ' )
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_work_unit] wu WHERE wu.active = 1 AND wu.work_unit_code = 'ZZZ')
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_work_area] wa WHERE wa.active = 1 AND wa.work_area_code = 'ZZZ' )
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_schedule_resource] sr WHERE sr.active = 1 AND sr.schedule_resource_code = 'ZZZ')
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_cwp] cp WHERE cp.active = 1 AND cp.cwp_code = 'ZZZ')
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_activity] ac WHERE ac.active = 1 AND ac.activity_code = 'ZZZ')
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_iwp] wp WHERE wp.active = 1 AND wp.iwp_code = 'ZZZ' )
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_pim] pm WHERE pm.active = 1 AND pm.pim_code = 'ZZZ')
		OR A.dim_entp_project_nk NOT IN 
		(SELECT dim_entp_project_nk FROM [dbo].[dim_entp_roc] rc WHERE rc.active = 1 AND rc.roc_code = 'ZZZ')
	)

select @mx_val = count(*) from #project_temp
select @counter = 0

while @counter <= @mx_val
begin
    set rowcount 1
	select @dim_entp_project_nk = dim_entp_project_nk from #project_temp
	select @count = count(*) from #project_temp
    set rowcount 0
	delete from #project_temp where dim_entp_project_nk = @dim_entp_project_nk

	if isnull(@count,0) = 0 
	begin
	    break
	end

	insert into [dbo].[dim_entp_phase]
	(dim_entp_phase_nk,phase_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,phase_name,dim_entp_project_nk)
	select isnull((select max(dim_entp_phase_nk) from [dbo].[dim_entp_phase]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',dim_entp_project_nk
	from [dbo].[dim_entp_project]
	where dim_entp_project_nk = @dim_entp_project_nk and (select count(*) from [dbo].[dim_entp_phase] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and phase_code = 'ZZZ') = 0

	--Work Unit
	insert into [dbo].[dim_entp_work_unit]
	(dim_entp_work_unit_nk,work_unit_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_unit_name,dim_entp_project_nk)
	select isnull((select max(dim_entp_work_unit_nk) from [dbo].[dim_entp_work_unit]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',dim_entp_project_nk
	from [dbo].[dim_entp_project]
	where dim_entp_project_nk = @dim_entp_project_nk and (select count(*) from [dbo].[dim_entp_work_unit] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and work_unit_code = 'ZZZ') = 0

	--select * from [dbo].[dim_entp_work_area]

	--Work Area
	insert into [dbo].[dim_entp_work_area]
	(dim_entp_work_area_nk,work_area_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,work_area_name,dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk)
	select isnull((select max(dim_entp_work_area_nk) from [dbo].[dim_entp_work_area]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',[dbo].[dim_entp_project].dim_entp_project_nk,dim_entp_phase_nk,dim_entp_work_unit_nk
	from [dbo].[dim_entp_project],[dim_entp_work_unit],dim_entp_phase
	where  [dbo].[dim_entp_project].dim_entp_project_nk = @dim_entp_project_nk and  [dbo].[dim_entp_project].dim_entp_project_nk = [dim_entp_work_unit].dim_entp_project_nk
	and [dim_entp_work_unit].work_unit_code = 'ZZZ'
	and [dim_entp_work_unit].active = 1
	and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_phase.dim_entp_project_nk
	and dim_entp_phase.phase_code = 'ZZZ'
	and dim_entp_phase.active = 1
	and (select count(*) from [dbo].[dim_entp_work_area] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and work_area_code = 'ZZZ') = 0

	--Scheduled Resource
	insert into [dbo].[dim_entp_schedule_resource]
	(dim_entp_schedule_resource_nk,schedule_resource_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,schedule_resource_name,dim_entp_project_nk)
	select isnull((select max(dim_entp_schedule_resource_nk) from [dbo].[dim_entp_schedule_resource]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',dim_entp_project_nk
	from [dbo].[dim_entp_project]
	where dim_entp_project_nk = @dim_entp_project_nk and (select count(*) from [dbo].[dim_entp_schedule_resource] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and schedule_resource_code = 'ZZZ') = 0

	--CWP
	insert into [dbo].dim_entp_cwp
	(dim_entp_cwp_nk,cwp_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,cwp_description,dim_entp_project_nk,cwp_status)
	select isnull((select max(dim_entp_cwp_nk) from [dbo].dim_entp_cwp),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',dim_entp_project_nk,'Not Started'
	from [dbo].[dim_entp_project]
	where dim_entp_project_nk = @dim_entp_project_nk and (select count(*) from [dbo].dim_entp_cwp a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and cwp_code = 'ZZZ') = 0

	--Activity

	insert into [dbo].[dim_entp_activity]
	(dim_entp_activity_nk,activity_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,activity_description,dim_entp_project_nk,dim_entp_work_area_nk,dim_entp_cwp_nk,dim_entp_schedule_resource_nk,activity_status)
	select isnull((select max(dim_entp_activity_nk) from [dbo].[dim_entp_activity]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',[dbo].[dim_entp_project].dim_entp_project_nk,dim_entp_work_area_nk,dim_entp_cwp_nk,dim_entp_schedule_resource_nk,'Not Started'
	from [dbo].[dim_entp_project],dim_entp_work_area,dim_entp_cwp,dim_entp_schedule_resource
	where [dbo].[dim_entp_project].dim_entp_project_nk = @dim_entp_project_nk and  [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_work_area.dim_entp_project_nk
	and dim_entp_work_area.work_area_code = 'ZZZ'
	and dim_entp_work_area.active = 1
	and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_cwp.dim_entp_project_nk
	and dim_entp_cwp.cwp_code = 'ZZZ'
	and dim_entp_cwp.active = 1
	and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_schedule_resource.dim_entp_project_nk
	and dim_entp_schedule_resource.schedule_resource_code = 'ZZZ'
	and dim_entp_schedule_resource.active = 1
	and (select count(*) from [dbo].[dim_entp_activity] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and activity_code = 'ZZZ') = 0

	--iwp

	insert into [dbo].[dim_entp_iwp]
	(dim_entp_iwp_nk,iwp_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,iwp_name,dim_entp_project_nk,dim_entp_activity_nk,dim_entp_schedule_resource_nk)
	select isnull((select max(dim_entp_iwp_nk) from [dbo].[dim_entp_iwp]),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',[dbo].[dim_entp_project].dim_entp_project_nk,dim_entp_activity_nk,dim_entp_schedule_resource.dim_entp_schedule_resource_nk
	from [dbo].[dim_entp_project],dim_entp_activity,dim_entp_schedule_resource
	where  [dbo].[dim_entp_project].dim_entp_project_nk = @dim_entp_project_nk and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_activity.dim_entp_project_nk
	and dim_entp_activity.activity_code = 'ZZZ'
	and dim_entp_activity.active = 1
	and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_schedule_resource.dim_entp_project_nk
	and dim_entp_schedule_resource.schedule_resource_code = 'ZZZ'
	and dim_entp_schedule_resource.active = 1
	and (select count(*) from [dbo].[dim_entp_iwp] a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and iwp_code = 'ZZZ') = 0

	--Select * from [dbo].[dim_entp_pim]
	--pim
	insert into [dbo].dim_entp_pim
	(dim_entp_pim_nk,pim_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,pimid_description,dim_entp_project_nk,dim_entp_iwp_nk)
	select isnull((select max(dim_entp_pim_nk) from [dbo].dim_entp_pim),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',[dbo].[dim_entp_project].dim_entp_project_nk,dim_entp_iwp_nk
	from [dbo].[dim_entp_project],dim_entp_iwp
	where  [dbo].[dim_entp_project].dim_entp_project_nk = @dim_entp_project_nk and [dbo].[dim_entp_project].dim_entp_project_nk = dim_entp_iwp.dim_entp_project_nk
	and dim_entp_iwp.iwp_code = 'ZZZ'
	and dim_entp_iwp.active = 1
	and (select count(*) from [dbo].dim_entp_pim a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and pim_code = 'ZZZ') = 0

	--roc

	insert into [dbo].dim_entp_roc
	(dim_entp_roc_nk,roc_code,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,roc_name,dim_entp_project_nk,rocs_step)
	select isnull((select max(dim_entp_roc_nk) from [dbo].dim_entp_roc),0) + 1,'ZZZ','2000/01/01','2050/12/31',convert(varchar(100),HASHBYTES('MD5', concat('ZZZ','N/A'))),1,
	getdate(),getdate(),'N','N/A',dim_entp_project_nk,1
	from [dbo].[dim_entp_project]
	where [dbo].[dim_entp_project].dim_entp_project_nk = @dim_entp_project_nk and (select count(*) from [dbo].dim_entp_roc a where a.dim_entp_project_nk = [dbo].[dim_entp_project].dim_entp_project_nk and roc_code = 'ZZZ') = 0

	set rowcount 1
		select @counter =  @counter + 1
	set rowcount 0


end

GO


