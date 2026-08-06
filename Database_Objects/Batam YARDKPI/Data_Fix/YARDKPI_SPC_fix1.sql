ALTER TABLE [yardkpi].[stage_entp_spc_progress]
ALTER COLUMN [FIWPOBID] [varchar](500) NULL
ALTER TABLE [yardkpi].[stage_entp_spc_progress]
ALTER COLUMN [CREWOBID] [varchar](500) NULL
ALTER TABLE [yardkpi].[stage_entp_spc_progress]
ALTER COLUMN [CWPOBID] [varchar](500) NULL;


ALTER TABLE [yardkpi].[reprocess_entp_spc_progress]
ALTER COLUMN [FIWPOBID] [varchar](500) NULL
ALTER TABLE [yardkpi].[reprocess_entp_spc_progress]
ALTER COLUMN [CREWOBID] [varchar](500) NULL
ALTER TABLE [yardkpi].[reprocess_entp_spc_progress]
ALTER COLUMN [CWPOBID] [varchar](500) NULL;


ALTER TABLE [dbo].[dim_entp_spc_progress]
ALTER COLUMN [FIWPOBID] [varchar](500) NULL
ALTER TABLE [dbo].[dim_entp_spc_progress]
ALTER COLUMN [CREWOBID] [varchar](500) NULL
ALTER TABLE [dbo].[dim_entp_spc_progress]
ALTER COLUMN [CWPOBID] [varchar](500) NULL;

UPDATE generic_load_detail
SET stage_column_data_type = 'VARCHAR(500)'
where load_name ='dim_entp_spc_progress' and stage_column_name = 'FIWPOBID'

UPDATE generic_load_detail
SET stage_column_data_type = 'VARCHAR(500)'
where load_name ='dim_entp_spc_progress' and stage_column_name = 'CREWOBID'

UPDATE generic_load_detail
SET stage_column_data_type = 'VARCHAR(500)'
where load_name ='dim_entp_spc_progress' and stage_column_name = 'CWPOBID'
