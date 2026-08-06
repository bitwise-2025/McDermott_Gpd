ALTER PROC [dbo].[Load_Contract_Parameter_Values] AS
INSERT INTO plp_parameter_value
SELECT DISTINCT 'timeanalytics_contracts', 
contract_no, 
1,
'system',
getdate(),
null,
null
FROM [Stage].[projects_control_table] pct
WHERE
   NOT EXISTS (SELECT * FROM plp_parameter_value prv
              WHERE pct.contract_no = prv.parameter_value
			  and parameter_code = 'timeanalytics_contracts' )
GO


