
DECLARE @subclassnk INT
DECLARE @dataclassnk INT 
DECLARE @Datetime DATETIME

SET @dataclassnk= (SELECT dim_ent_data_class_nk FROM dim_ent_data_class where data_class_name ='Amount')
SET @Datetime =  GETDATE()

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Curr Qtr Update HYP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Curr Qtr Update HYP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Curr Qtr Update HYP','Curr Qtr Update HYP',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Curr Qtr Update ADJ')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Curr Qtr Update ADJ',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Curr Qtr Update ADJ',
'Curr Qtr Update ADJ',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Curr Qtr Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Curr Qtr Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Curr Qtr Update',
'Curr Qtr Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='MB Amount')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'MB Amount',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'MB Amount',
'MB Amount',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='F2 Amount')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'F2 Amount',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'F2 Amount',
'F2 Amount',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Total  Prev Qtr')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Total  Prev Qtr',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Total  Prev Qtr',
'Total  Prev Qtr',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Total  Current Qtr')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Total  Current Qtr',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Total  Current Qtr',
'Total  Current Qtr',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='YTD Hyp')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'YTD Hyp',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'YTD Hyp',
'YTD Hyp',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='YTD ADJ')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'YTD ADJ',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'YTD ADJ',
'YTD ADJ',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='YTD Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'YTD Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'YTD Update',
'YTD Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='To-Go Latest Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'To-Go Latest Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'To-Go Latest Update',
'To-Go Latest Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Total MB')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Total MB',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Total MB',
'Total MB',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Total F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Total F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Total F2',
'Total F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Gross DOE Latest Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Gross DOE Latest Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Gross DOE Latest Update',
'Gross DOE Latest Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Recovery Latest Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Recovery Latest Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Recovery Latest Update',
'Recovery Latest Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Gross DOE MB')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Gross DOE MB',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Gross DOE MB',
'Gross DOE MB',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Recovery MB')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Recovery MB',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Recovery MB',
'Recovery MB',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Gross DOE F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Gross DOE F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Gross DOE F2',
'Gross DOE F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Recovery F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Recovery F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Recovery F2',
'Recovery F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Latest Update Total Activity')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Latest Update Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Latest Update Total Activity',
'Latest Update Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Std Latest Update Total Activity')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Std Latest Update Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Std Latest Update Total Activity',
'Std Latest Update Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Actual Productivity (PF) QTD')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Actual Productivity (PF) QTD',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Actual Productivity (PF) QTD',
'Actual Productivity (PF) QTD',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='MB Total Activity')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'MB Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'MB Total Activity',
'MB Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Std MB Total Activity')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Std MB Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Std MB Total Activity',
'Std MB Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='F2 Total Activity')
BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'F2 Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'F2 Total Activity',
'F2 Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Std F2 Total Activity')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Std F2 Total Activity',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Std F2 Total Activity',
'Std F2 Total Activity',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Activity Driven Costs')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Activity Driven Costs',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Activity Driven Costs',
'Activity Driven Costs',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Stock Comp / Bonus')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Stock Comp / Bonus',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Stock Comp / Bonus',
'Stock Comp / Bonus',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Corp Allocation')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Corp Allocation',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Corp Allocation',
'Corp Allocation',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Other Cost Changes')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Other Cost Changes',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Other Cost Changes',
'Other Cost Changes',NULL)

END


IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Cost Reduction Program')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Cost Reduction Program',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Cost Reduction Program',
'Cost Reduction Program',NULL)

END


IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Business Interuption on IT outage')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Business Interuption on IT outage',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Business Interuption on IT outage',
'Business Interuption on IT outage',NULL)

END


IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Timing')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Timing',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Timing',
'Timing',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q1F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q1F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q1F2','Q1F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q2F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q2F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q2F2','Q2F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q3F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q3F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q3F2','Q3F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q4F2')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q4F2',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q4F2','Q4F2',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q1 MB Prev')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q1 MB Prev',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q1 MB Prev','Q1 MB Prev',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q2 MB Prev')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q2 MB Prev',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q2 MB Prev','Q2 MB Prev',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q3 MB Prev')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q3 MB Prev',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q3 MB Prev','Q3 MB Prev',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q4 MB Prev')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q4 MB Prev',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q4 MB Prev','Q4 MB Prev',NULL)

END