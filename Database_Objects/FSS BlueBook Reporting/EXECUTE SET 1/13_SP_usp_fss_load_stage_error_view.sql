/****** Object:  StoredProcedure [dbo].[usp_fss_load_stage_error_view]    Script Date: 10/25/2023 1:31:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[usp_fss_load_stage_error_view] @srcviewName [NVARCHAR](max),@tgtviewName [NVARCHAR](max),@datasource [NVARCHAR](max) AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
	
	declare @sourceViewName  NVARCHAR(max),@finalViewName  NVARCHAR(max),@dtsource NVARCHAR(max)

set @sourceViewName =@srcviewName
set @finalViewName =@tgtviewName
set @dtsource=@datasource


declare @createsql NVARCHAR(max),@dropsql NVARCHAR(max),@wheresql NVARCHAR(max)

select @createsql=STRING_AGG(concat('[',cast(name as nvarchar(max)),'] as [',name,']'),', ') from sys.columns where [object_id]= (select object_id(@sourceViewName))
declare @quarterkey int

select @quarterkey=datepart(q,[reporting period]) from [fss].[stage_fss_reportingperiod_v]  where [Data source]=@dtsource

--if exists (select 1 from sys.columns where [object_id]= (select object_id(@sourceViewName)) and name='zCreatedDateTime')
--begin
--set @wheresql=concat(' where zCreatedDateTime=(select max(isnull(zCreatedDateTime,GETDATE())) from ',@sourceViewName,')')
--end 
--else 
--begin 
set @wheresql=' where 1=1'
--end 

if @quarterkey=1
begin 
select @createsql=replace(replace(replace(@createsql,'as [Jan','as [M1'),'as [Feb','as [M2'),'as [Mar','as [M3')
select @createsql=concat('create view ',@finalViewName,' as select ',@createsql,' from ',@sourceViewName,@wheresql,';')
select @dropsql=concat('drop view if exists ',@finalViewName,';')

EXEC sp_executesql @dropsql;
EXEC sp_executesql @createsql;
end

if @quarterkey=2
begin 
select @createsql=replace(replace(replace(@createsql,'as [Apr','as [M1'),'as [May','as [M2'),'as [Jun','as [M3')
select @createsql=concat('create view ',@finalViewName,' as select ',@createsql,' from ',@sourceViewName,@wheresql,';')
select @dropsql=concat('drop view if exists ',@finalViewName,';')

EXEC sp_executesql @dropsql;
EXEC sp_executesql @createsql;
end

if @quarterkey=3
begin 
select @createsql=replace(replace(replace(@createsql,'as [Jul','as [M1'),'as [Aug','as [M2'),'as [Sep','as [M3')
select @createsql=concat('create view ',@finalViewName,' as select ',@createsql,' from ',@sourceViewName,@wheresql,';')
select @dropsql=concat('drop view if exists ',@finalViewName,';')

EXEC sp_executesql @dropsql;
EXEC sp_executesql @createsql;
end


if @quarterkey=4
begin 
select @createsql=replace(replace(replace(@createsql,'as [Oct','as [M1'),'as [Nov','as [M2'),'as [Dec','as [M3')
select @createsql=concat('create view ',@finalViewName,' as select ',@createsql,' from ',@sourceViewName,@wheresql,';')
select @dropsql=concat('drop view if exists ',@finalViewName,';')

EXEC sp_executesql @dropsql;
EXEC sp_executesql @createsql;
end
    
END
GO


