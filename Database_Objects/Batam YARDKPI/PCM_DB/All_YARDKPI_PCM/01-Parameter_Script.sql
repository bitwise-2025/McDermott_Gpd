declare @dd datetime
select @dd = getdate()

------------------------------------------------------
--pl_yardkpi_pcm_certification_package_source_to_stage
------------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage','PCM_QFY')

---------------------------------------------------
--pl_yardkpi_pcm_certification_package_stage_to_raw
---------------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_certification_package'
WHERE pipeline_code = 'pl_yardkpi_pcm_certification_package_stage_to_raw' and parameter_code = 'input_file_name_stg'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------
--pl_yardkpi_pcm_certification_package_source_to_stage_del
----------------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_certification_package_source_to_stage_del' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_certification_package_source_to_stage_del', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'ajmal.usman@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'ajmal.usman@mcdermott.com',@dd,'pl_yardkpi_pcm_certification_package_source_to_stage_del','PCM_QFY')

---------------------------------------------------
--pl_yardkpi_pcm_certification_package_stage_to_raw
---------------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_certification_package_del'
WHERE pipeline_code = 'pl_yardkpi_pcm_certification_package_stage_to_raw_del' and parameter_code = 'input_file_name_stg'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------
--pl_yardkpi_pcm_inprocess_inspection_source_to_stage
-----------------------------------------------------
--D6978,-R3695,-R3979,-R4036,-D7068,-D7264,-R3973
UPDATE plp_parameter_value
SET parameter_value = '*'
where pipeline_code = 'pl_yardkpi_pcm_inprocess_inspection_source_to_stage' 
and parameter_code = 'contract'

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_inprocess_inspection_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_inprocess_inspection_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_inprocess_inspection_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_source_to_stage','PCM_QFY')

--------------------------------------------------
--pl_yardkpi_pcm_inprocess_inspection_stage_to_raw
--------------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_inprocess_inspection'
WHERE pipeline_code = 'pl_yardkpi_pcm_inprocess_inspection_stage_to_raw' and parameter_code = 'input_file_name_stg'


--------------------------------------------------
--pl_yardkpi_pcm_inprocess_inspection_raw_to_synapse
--------------------------------------------------
insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_inprocess_inspection_raw_to_synapse', 'PCM', 'input_file_name', 6,'input_file_name','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'input_file_name', 'pcm_inprocess_inspection', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_inprocess_inspection_raw_to_synapse','PCM')
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------
--pl_yardkpi_pcm_ndt_details_source_to_stage
--------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage','PCM_QFY')

-----------------------------------------
--pl_yardkpi_pcm_ndt_details_stage_to_raw
-----------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_ndt_details'
WHERE pipeline_code = 'pl_yardkpi_pcm_ndt_details_stage_to_raw' and parameter_code = 'input_file_name_stg'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------
--pl_yardkpi_pcm_ndt_details_source_to_stage_del
-------------------------------------------------


UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_ndt_details_source_to_stage_del' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_ndt_details_source_to_stage_del', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_ndt_details_source_to_stage_del','PCM_QFY')

------------------------------------------------
--pl_yardkpi_pcm_ndt_details_source_to_stage_del
------------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_ndt_details_del'
WHERE pipeline_code = 'pl_yardkpi_pcm_ndt_details_stage_to_raw_del' and parameter_code = 'input_file_name_stg'
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------
--pl_yardkpi_pcm_paint_details_source_to_stage
----------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage','PCM_QFY')

-------------------------------------------
--pl_yardkpi_pcm_paint_details_stage_to_raw
-------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_paint_details'
WHERE pipeline_code = 'pl_yardkpi_pcm_paint_details_stage_to_raw' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------
--pl_yardkpi_pcm_paint_details_source_to_stage_del
--------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_paint_details_source_to_stage_del' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_paint_details_source_to_stage_del', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_paint_details_source_to_stage_del','PCM_QFY')

-----------------------------------------------
--pl_yardkpi_pcm_paint_details_stage_to_raw_del
-----------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_paint_details_del'
WHERE pipeline_code = 'pl_yardkpi_pcm_paint_details_stage_to_raw_del' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------
--pl_yardkpi_pcm_weld_details_source_to_stage
----------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage','PCM_QFY')

-------------------------------------------
--pl_yardkpi_pcm_weld_details_stage_to_raw
-------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_weld_details'
WHERE pipeline_code = 'pl_yardkpi_pcm_weld_details_stage_to_raw' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------
--pl_yardkpi_pcm_weld_details_source_to_stage_del
-------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_weld_details_source_to_stage_del' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_weld_details_source_to_stage_del', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_weld_details_source_to_stage_del','PCM_QFY')

----------------------------------------------
--pl_yardkpi_pcm_weld_details_stage_to_raw_del
----------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_weld_details_del'
WHERE pipeline_code = 'pl_yardkpi_pcm_weld_details_stage_to_raw_del' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------
--pl_yardkpi_pcm_welder_activity_source_to_stage
------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage','PCM_QFY')

---------------------------------------------
--pl_yardkpi_pcm_welder_activity_stage_to_raw
---------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_welder_activity'
WHERE pipeline_code = 'pl_yardkpi_pcm_welder_activity_stage_to_raw' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------
--pl_yardkpi_pcm_welder_activity_source_to_stage_del
--------------------------------------------------

UPDATE plp_pipeline_parameter 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value 
SET pipeline_sub_code = 'PCM_BTY'
where pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage_del' 
and pipeline_sub_code ='PCM' 
and (parameter_code = 'fab_code' or parameter_code = 'to_date' or parameter_code = 'from_date')

UPDATE plp_parameter_value
SET parameter_value = 'currdate'
WHERE pipeline_code = 'pl_yardkpi_pcm_welder_activity_source_to_stage_del' and parameter_code = 'to_date' and pipeline_sub_code = 'PCM_BTY'

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_JAY', 'fab_code', 11,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'JAY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_JAY', 'to_date', 12,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_JAY', 'from_date', 13,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_JAY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_QFY', 'fab_code', 14,'fab_code','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'fab_code', 'QFY', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_QFY', 'to_date', 15,'to_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'to_date', 'currdate', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_QFY')

insert into plp_pipeline_parameter (
pipeline_code, pipeline_sub_code, parameter_code, display_order, source_column_name, source_operator, active, touched_by, touched_dtm
)values(
'pl_yardkpi_pcm_welder_activity_source_to_stage_del', 'PCM_QFY', 'from_date', 16,'from_date','IN', 1, 'swapnanil.pal@mcdermott.com',@dd)

insert into plp_parameter_value (
parameter_code, parameter_value, active, touched_by, touched_dtm, pipeline_code, pipeline_sub_code
)values(
'from_date', '', 1, 'swapnanil.pal@mcdermott.com',@dd,'pl_yardkpi_pcm_welder_activity_source_to_stage_del','PCM_QFY')

-------------------------------------------------
--pl_yardkpi_pcm_welder_activity_stage_to_raw_del
-------------------------------------------------

UPDATE plp_parameter_value
SET parameter_value = 'pcm_welder_activity'
WHERE pipeline_code = 'pl_yardkpi_pcm_welder_activity_stage_to_raw_del' and parameter_code = 'input_file_name_stg'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
