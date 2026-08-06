

-- First changing all the Closed Master pipeline source to 'All EXP'
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Update [dbo].[plp_parameter_value] 
set parameter_value='*_IDOCS_DL_ALL_EXP_MASTER_*.CSV'
WHERE PARAMETER_CODE='input_file_name' 
AND  [pipeline_code]='pl_idocs_closed_m_source_to_stage'




--Adjusting the Dimension table table to accomodate Varchar instead of DATE.
GO

/* DB Script - [dbo].[dim_entp_eng_ven_close_task_register]   - 26/08/2022-09/01/2022 */

ALTER TABLE  [dbo].[dim_entp_eng_ven_close_task_register] ALTER COLUMN [expediting_actual] varchar(30) NULL;
ALTER TABLE  [dbo].[dim_entp_eng_ven_close_task_register] ALTER COLUMN [expediting_start] varchar(30) NULL; 
ALTER TABLE  [dbo].[dim_entp_eng_ven_close_task_register] ALTER COLUMN [expediting_due] varchar(30) NULL; 
ALTER TABLE  [dbo].[dim_entp_eng_ven_close_task_register] ALTER COLUMN [expediting_forecast] varchar(30) NULL; 

GO



/* DB Script -  gpd.reprocess_dim_entp_eng_ven_close_task   - 26/08/2022 */

--ALTER TABLE   [gpd].[reprocess_dim_entp_eng_ven_close_task] ALTER COLUMN [expediting_actual] varchar(30) NULL; 

--GO


--Adjusting Load_configuration to take align with the Date to Varchar change.

update [dbo].[generic_load_detail]
set stage_column_data_type_category='TEXT'
, stage_column_data_type='varchar(30)'
where Load_name='dim_entp_eng_ven_close_task'
and stage_column_Name in ('expediting_actual','expediting_start','expediting_due','expediting_forecast')
and target_column_name in ('expediting_actual','expediting_start','expediting_due','expediting_forecast')
and active_flag='Y'
