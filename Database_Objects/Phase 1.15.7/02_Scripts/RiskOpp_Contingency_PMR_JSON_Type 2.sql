Insert into [generic_json_detail]
values('RiskOpp_Contingency_PMR_JSON','Type 2','varchar(max)','V',null,'[Type 2]','Y')

Delete from [generic_json_detail]
where load_name='RiskOpp_Contingency_PMR_JSON'
and gjd_id=627 and json_column_name='Type 2'