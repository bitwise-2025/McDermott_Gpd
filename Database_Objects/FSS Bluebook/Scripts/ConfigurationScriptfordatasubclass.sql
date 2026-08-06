DECLARE @subclassnk INT
DECLARE @dataclassnk INT 
DECLARE @Datetime DATETIME

 

SET @dataclassnk= (SELECT dim_ent_data_class_nk FROM dim_ent_data_class where data_class_name ='Amount')
SET @Datetime =  GETDATE()
IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Revenue Prev Qtr Backlog')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Revenue Prev Qtr Backlog',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Revenue Prev Qtr Backlog','Revenue Prev Qtr Backlog',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='GP Prev Qtr Backlog')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'GP Prev Qtr Backlog',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'GP Prev Qtr Backlog','GP Prev Qtr Backlog',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Order Intake Curr Qtr Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Order Intake Curr Qtr Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Order Intake Curr Qtr Update','Order Intake Curr Qtr Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Recog Curr Qtr Update')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Recog Curr Qtr Update',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Recog Curr Qtr Update','Recog Curr Qtr Update',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Revenue Curr Qtr Backlog')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Revenue Curr Qtr Backlog',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Revenue Curr Qtr Backlog','Revenue Curr Qtr Backlog',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='GP Curr Qtr Backlog')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'GP Curr Qtr Backlog',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'GP Curr Qtr Backlog','GP Curr Qtr Backlog',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q1 Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q1 Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q1 Backlog Revenue','Q1 Backlog Revenue',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q2 Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q2 Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q2 Backlog Revenue','Q2 Backlog Revenue',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q3 Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q3 Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q3 Backlog Revenue','Q3 Backlog Revenue',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q4 Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q4 Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q4 Backlog Revenue','Q4 Backlog Revenue',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Next CY Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Next CY Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Next CY Backlog Revenue','Next CY Backlog Revenue',NULL)

END
IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Beyond Next CY Backlog Revenue')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Beyond Next CY Backlog Revenue',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Beyond Next CY Backlog Revenue','Beyond Next CY Backlog Revenue',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q1 Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q1 Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q1 Backlog GP','Q1 Backlog GP',NULL)

END
IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q2 Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q2 Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q2 Backlog GP','Q2 Backlog GP',NULL)

END
IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q3 Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q3 Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q3 Backlog GP','Q3 Backlog GP',NULL)

END


IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Q4 Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Q4 Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Q4 Backlog GP','Q4 Backlog GP',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Next CY Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Next CY Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Next CY Backlog GP','Next CY Backlog GP',NULL)

END

IF NOT EXISTS(SELECT * from dim_ent_data_sub_class  WHERE data_sub_class_name ='Beyond Next CY Backlog GP')

BEGIN

SET @subclassnk = (SELECT max(dim_ent_data_sub_class_nk) +1 from dim_ent_data_sub_class)

insert into dim_ent_data_sub_class  (dim_ent_data_sub_class_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,

dim_ent_data_class_nk,data_class_name,data_sub_class_name,alternative_data_sub_Class_name,gpd_level) values

(@subclassnk ,'1900-12-30 00:00:00.000',    '2050-12-30 00:00:00.000',       'Beyond Next CY Backlog GP',

1,     @Datetime,  NULL,  'N',   @dataclassnk,     'Amount',       'Beyond Next CY Backlog GP','Beyond Next CY Backlog GP',NULL)

END
