Alter table [yardkpi].[stage_intelex_injury_illness]
Alter Column [number_of_people_impacted] [varchar](100) NULL

Alter table [yardkpi].[reprocess_intelex_injury_illness]
Alter Column [number_of_people_impacted] [varchar](100) NULL

Alter table [dbo].[dim_entp_yardkpi_intelex_injury_illness]
Alter Column [number_of_people_impacted] [varchar](100) NULL


Update generic_load_detail
set stage_column_data_type = 'varchar (100)', stage_column_data_type_category = 'TEXT'
where load_name = 'dim_entp_yardkpi_intelex_injury_illness' and stage_column_name = 'number_of_people_impacted'