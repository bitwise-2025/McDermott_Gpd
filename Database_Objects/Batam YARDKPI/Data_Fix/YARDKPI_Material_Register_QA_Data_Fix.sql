--STEP-1: EXECUTE THE BELOW QUERY

insert into generic_load_detail 
values('dim_entp_yardkpi_material_osnd', 'UNIQID', 'VARCHAR(100)', 'TEXT', 'OA', 'UNIQID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2168, 'Y', NULL)
 
insert into generic_load_detail 
values('dim_entp_yardkpi_material_issuing', 'UNIQID', 'VARCHAR(100)',' TEXT', 'OA', 'UNIQID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2068, 'Y', NULL)
 
insert into generic_load_detail 
values('dim_entp_yardkpi_material_receiving','UNIQID','VARCHAR(100)','TEXT','OA','UNIQID',NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL, 1976,	'Y', NULL)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-2: EXECUTE THE BELOW QUERY

Delete from plp_pipeline where pipeline_code = 'pl_yardkpi_material_receiving_stage_to_raw' and touched_by = 'system' and sec_sa_id = '59'
Delete from plp_pipeline where pipeline_code = 'pl_yardkpi_material_osnd_stage_to_raw' and touched_by = 'system' and sec_sa_id = '59'
Delete from plp_pipeline where pipeline_code = 'pl_yardkpi_material_issuing_stage_to_raw' and touched_by = 'system' and sec_sa_id = '59'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-3: EXECUTE THE BELOW QUERY

DECLARE @parm_code VARCHAR(100)
SELECT @parm_code = 'pl_yardkpi_material_receiving_stage_to_raw'
SELECT parameter_code, COUNT(*) dcount
INTO #plp_pipeline_parameter_duplicate
FROM plp_pipeline_parameter
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_pipeline_parameter
WHERE pipeline_parameter_id IN
(
SELECT MAX(a.pipeline_parameter_id)
FROM plp_pipeline_parameter a, #plp_pipeline_parameter_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
SELECT parameter_code, COUNT(*) dcount
INTO #plp_parameter_value_duplicate
FROM plp_parameter_value
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_parameter_value
WHERE parameter_value_id IN
(
SELECT MAX(a.parameter_value_id)
FROM plp_parameter_value a, #plp_parameter_value_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
DROP TABLE #plp_pipeline_parameter_duplicate
DROP TABLE #plp_parameter_value_duplicate
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-4: EXECUTE THE BELOW QUERY

DECLARE @parm_code VARCHAR(100)
SELECT @parm_code = 'pl_yardkpi_material_osnd_stage_to_raw'
SELECT parameter_code, COUNT(*) dcount
INTO #plp_pipeline_parameter_duplicate
FROM plp_pipeline_parameter
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_pipeline_parameter
WHERE pipeline_parameter_id IN
(
SELECT MAX(a.pipeline_parameter_id)
FROM plp_pipeline_parameter a, #plp_pipeline_parameter_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
SELECT parameter_code, COUNT(*) dcount
INTO #plp_parameter_value_duplicate
FROM plp_parameter_value
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_parameter_value
WHERE parameter_value_id IN
(
SELECT MAX(a.parameter_value_id)
FROM plp_parameter_value a, #plp_parameter_value_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
DROP TABLE #plp_pipeline_parameter_duplicate
DROP TABLE #plp_parameter_value_duplicate
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--STEP-5: EXECUTE THE BELOW QUERY

DECLARE @parm_code VARCHAR(100)
SELECT @parm_code = 'pl_yardkpi_material_issuing_stage_to_raw'
SELECT parameter_code, COUNT(*) dcount
INTO #plp_pipeline_parameter_duplicate
FROM plp_pipeline_parameter
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_pipeline_parameter
WHERE pipeline_parameter_id IN
(
SELECT MAX(a.pipeline_parameter_id)
FROM plp_pipeline_parameter a, #plp_pipeline_parameter_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
SELECT parameter_code, COUNT(*) dcount
INTO #plp_parameter_value_duplicate
FROM plp_parameter_value
WHERE pipeline_code = @parm_code and active = 1
GROUP BY parameter_code
HAVING COUNT(*)>1
 
DELETE
FROM plp_parameter_value
WHERE parameter_value_id IN
(
SELECT MAX(a.parameter_value_id)
FROM plp_parameter_value a, #plp_parameter_value_duplicate b
WHERE a.pipeline_code = @parm_code and a.parameter_code = b.parameter_code
GROUP BY a.parameter_code)
and pipeline_code = @parm_code
 
DROP TABLE #plp_pipeline_parameter_duplicate
DROP TABLE #plp_parameter_value_duplicate