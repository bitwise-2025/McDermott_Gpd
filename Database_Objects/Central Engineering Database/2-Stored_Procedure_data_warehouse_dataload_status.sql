/****** Object:  StoredProcedure [edw].[data_warehouse_dataload_status]    Script Date: 11/26/2025 1:04:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [edw].[data_warehouse_dataload_status] @project_number [varchar](20),@table_name [varchar](250),@description [varchar](250),@datasource [varchar](250),@load_date_time [datetime] AS
begin
begin try
   declare @record_count int
   select @record_count = count(*) from edw.dim_entp_data_warehouse_dataload_status
    where project_number = @project_number
      and table_name = @table_name
    if @record_count = 0
      begin
        insert edw.dim_entp_data_warehouse_dataload_status
         select   @project_number,
                  @table_name,
                  @description,
                  @datasource,
                  @load_date_time
      end
    else
      begin
        update edw.dim_entp_data_warehouse_dataload_status
           set [description] = @description,
               datasource = @datasource,
               load_date_time = @load_date_time
         where project_number = @project_number
           and table_name = @table_name
      end   
end try
begin catch
	begin
		select 'Failed', error_message()
	end
end catch
end

GO
