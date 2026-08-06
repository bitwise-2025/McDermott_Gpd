
--- One time entry for Dim_ent_unit_of_Measure

DECLARE @NK_v INT;
SELECT @NK_v= MAX(dim_ent_unit_of_measure_nk)+1  from dbo.dim_ent_unit_of_measure;

insert into dim_ent_unit_of_measure (dim_ent_unit_of_measure_nk,start_date,end_date,hash_code,active,created_date_time,modified_date_time,late_arrival_flag,unit_of_measure_code,unit_of_measure_name) 
values (@NK_v,'1900-01-01 00:00:00.000','2050-01-01 00:00:00.000','HR',1,'2022-05-26 06:42:19.043',NULL,'N','HR','HR')

