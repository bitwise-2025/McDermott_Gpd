
--pcm_ndt_details
UPDATE generic_load_detail
SET stage_column_data_type = 'varchar(50)',stage_column_data_type_category = 'TEXT'
where load_name ='Dim_entp_pcm_ndt_details_load'
and stage_column_name in ('sign_date','test_date','jrm_approver_sign_date','jrm_sign_date','trans_date')

UPDATE generic_load_detail
SET stage_column_data_type = 'varchar(20)',stage_column_data_type_category = 'TEXT'
where load_name ='Dim_entp_pcm_ndt_details_load'
and stage_column_name in ('defect_length','ndt_percent')

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN jrm_approver_sign_date varchar (50);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN sign_date varchar (50);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN jrm_sign_date varchar (50);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN test_date varchar (50);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN trans_date varchar (50);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN jrm_approver_sign_date varchar (50);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN sign_date varchar (50);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN jrm_sign_date varchar (50);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN test_date varchar (50);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN trans_date varchar (50);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN [defect_length] varchar (20);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN [defect_length] varchar (20);

ALTER TABLE [yardkpi].[reprocess_entp_pcm_ndt_details]
ALTER COLUMN [ndt_percent] varchar (20);

ALTER TABLE [dbo].[dim_entp_pcm_ndt_details]
ALTER COLUMN [ndt_percent] varchar (20);

--pcm_paint_detail

UPDATE generic_load_detail
SET stage_column_data_type = 'varchar(50)', stage_column_data_type_category = 'TEXT'
where load_name ='Dim_entp_pcm_paint_details_load'
and stage_column_name in ('sign_date','report_num')

UPDATE generic_load_detail
SET stage_column_data_type = 'varchar(30)', stage_column_data_type_category = 'TEXT'
where load_name ='Dim_entp_pcm_paint_details_load'
and stage_column_name = 'pnt_report'

UPDATE generic_load_detail
SET stage_column_data_type = 'varchar(10)', stage_column_data_type_category = 'TEXT'
where load_name ='Dim_entp_pcm_paint_details_load'
and stage_column_name = 'inspector'

ALTER TABLE dbo.dim_entp_pcm_paint_detail
ALTER COLUMN sign_date varchar(50);

ALTER TABLE yardkpi.reprocess_entp_pcm_Paint_detail
ALTER COLUMN sign_date varchar(50);

ALTER TABLE dbo.dim_entp_pcm_paint_detail
ALTER COLUMN pnt_report varchar(30) NULL;

ALTER TABLE yardkpi.reprocess_entp_pcm_Paint_detail
ALTER COLUMN pnt_report varchar(30) NULL;

ALTER TABLE dbo.dim_entp_pcm_paint_detail
ALTER COLUMN report_num varchar(50) NULL;

ALTER TABLE yardkpi.reprocess_entp_pcm_Paint_detail
ALTER COLUMN report_num varchar(50) NULL;

ALTER TABLE dbo.dim_entp_pcm_paint_detail
ALTER COLUMN inspector varchar(10) NULL;

ALTER TABLE yardkpi.reprocess_entp_pcm_Paint_detail
ALTER COLUMN inspector varchar(10) NULL;

