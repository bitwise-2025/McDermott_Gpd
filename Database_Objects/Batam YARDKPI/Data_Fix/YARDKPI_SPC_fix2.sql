--QA--
--=====
--UPDATE plp_parameter_value
--SET parameter_value = 'battor01.mcdcorp.net|1521|spfc1bat|QA3695BTM_DATA.SPCRPT_FIWP'
--WHERE pipeline_code = 'pl_yardkpi_spc_source_to_stage' and parameter_code = 'schema_table'
--=======
--PROD
--=======
UPDATE plp_parameter_value
SET parameter_value = 'batpor02.mcdcorp.net|1521|spfc3bap|PR4036BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PR3695BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PD7264BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc2bap|PD7068BTM_DATA.SPCRPT_FIWP,batpor02.mcdcorp.net|1521|spfc3bap|PR3973BTM_DATA.SPCRPT_FIWP'
WHERE pipeline_code = 'pl_yardkpi_spc_source_to_stage' and parameter_code = 'schema_table'