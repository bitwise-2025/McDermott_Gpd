declare @count int				
declare @next_val int				

select @count = count(*) from [dbo].[dim_ent_function] Where function_code = 'HUC'
	if isnull(@count,0) = 0
begin
	select @next_val = isnull(max(dim_ent_function_nk),0) + 1 from [dbo].[dim_ent_function]
	insert into [dbo].[dim_ent_function](dim_ent_function_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,function_code,function_name,alternative_function_name)
	 values (@next_val,'2000-01-01 00:00:00.000','2050-12-31 00:00:00.000','HUC','1','2021-07-27 00:00:00.000',NULL,'N','HUC','Hook Up','HUC')
end

go


DECLARE @SUB_SOURCE_NK INT;
DECLARE @SOURCE_NK INT;
DECLARE @SUB_SOURCE_NAME varchar(100);

SET @SUB_SOURCE_NK=(SELECT max(dim_ent_sub_source_nk) + 1 FROM [dbo].[dim_ent_sub_source] );
SET @SOURCE_NK=(SELECT dim_ent_source_nk from dim_ent_source   where source_name='SYSTEM');
SET @SUB_SOURCE_NAME=(SELECT source_name from dim_ent_source   where source_name='SYSTEM');


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
     SELECT
           @SUB_SOURCE_NK
           ,'2000-01-01 00:00:00.000'
           ,'2050-12-30 00:00:00.000'
           ,N'HDMS'
           ,1
           ,getdate()
           ,NULL
           ,'N'
           ,@SOURCE_NK
           ,@SUB_SOURCE_NAME
           ,'HDMS'
		   
go