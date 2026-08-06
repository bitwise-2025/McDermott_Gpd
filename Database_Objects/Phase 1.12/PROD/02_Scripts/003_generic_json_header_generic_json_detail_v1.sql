--[gpd].[ChangeManagement_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('ChangeManagement_PMR_JSON','gpd.ChangeManagement_PMR_JSON','gpd.ChangeManagement_PMR_JSON',
'gpd.ChangeManagement_PMR_JSON_V','gpd.ChangeManagement_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Order','int','NI',null,'[Order]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Variance Type 1','varchar','V',null,'[Variance Type 1]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Variance Name','varchar','V',null,'[Variance Name]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Comments','varchar','V',null,'[Comments]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Cost Expected','money','N',null,'[Cost Expected]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Cost in EAC','money','N',null,'[Cost in EAC]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Date Submitted','date','D',23,'[Date Submitted]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Revenue Expected - High','money','N',null,'[Revenue Expected - High]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Revenue Expected - Low','money','N',null,'[Revenue Expected - Low]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Revenue Expected - Medium','money','N',null,'[Revenue Expected - Medium]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Revenue Submitted / Expected To Be Submitted','money','N',null,'[Revenue Submitted / Expected To Be Submitted]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Revenue in EAC','money','V',null,'[Revenue in EAC]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Change Order Number','varchar','V',null,'[Change Order Number]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','Variance Type 2','varchar','V',null,'[Variance Type 2]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('ChangeManagement_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


--[gpd].[CSS_Rating_QHSES_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('CSS_Rating_QHSES_PMR_JSON','gpd.CSS_Rating_QHSES_PMR_JSON','gpd.CSS_Rating_QHSES_PMR_JSON',
'gpd.CSS_Rating_QHSES_PMR_JSON_V','gpd.CSS_Rating_QHSES_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Order','int','NI',null,'[Order]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Completion','varchar','V',null,'[Completion]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','Value','varchar','V',null,'[Value]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('CSS_Rating_QHSES_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


--[gpd].[Financials_1_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Financials_1_PMR_JSON','gpd.Financials_1_PMR_JSON','gpd.Financials_1_PMR_JSON',
'gpd.Financials_1_PMR_JSON_V','gpd.Financials_1_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','Type 1','varchar','V',null,'[Type 1]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Financials_1_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[Financials_2_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Financials_2_PMR_JSON','gpd.Financials_2_PMR_JSON','gpd.Financials_2_PMR_JSON',
'gpd.Financials_2_PMR_JSON_V','gpd.Financials_2_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','Type 1','varchar','V',null,'[Type 1]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Financials_2_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Financials_3_LDs_Guarantees_PMR_JSON','gpd.Financials_3_LDs_Guarantees_PMR_JSON','gpd.Financials_3_LDs_Guarantees_PMR_JSON',
'gpd.Financials_3_LDs_Guarantees_PMR_JSON_V','gpd.Financials_3_LDs_Guarantees_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Type 1','varchar','V',null,'[Type 1]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','Type 2','varchar','V',null,'[Type 2]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Financials_3_LDs_Guarantees_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


--[gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Net_Cash_Cash_Position_PMR_JSON','gpd.Net_Cash_Cash_Position_PMR_JSON','gpd.Net_Cash_Cash_Position_PMR_JSON',
'gpd.Net_Cash_Cash_Position_PMR_JSON_V','gpd.Net_Cash_Cash_Position_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Accruals','money','N',null,'[Accruals]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Actuals','money','N',null,'[Actuals]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Delta','money','N',null,'[Delta]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Net','money','N',null,'[Net]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Planned','money','N',null,'[Planned]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Cash_Position_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')




--[gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Net_Cash_CashFlow_PMR_JSON','gpd.Net_Cash_CashFlow_PMR_JSON','gpd.Net_Cash_CashFlow_PMR_JSON',
'gpd.Net_Cash_CashFlow_PMR_JSON_V','gpd.Net_Cash_CashFlow_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Date','varchar','V',null,'[Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Amount - Monthly','money','N',null,'[Amount - Monthly]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','Type 1','varchar','V',null,'[Type 1]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Net_Cash_CashFlow_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

--[gpd].[Indicators_QHSES_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Indicators_QHSES_PMR_JSON','gpd.Indicators_QHSES_PMR_JSON','gpd.Indicators_QHSES_PMR_JSON',
'gpd.Indicators_QHSES_PMR_JSON_V','gpd.Indicators_QHSES_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Indicators','varchar','V',null,'[Indicators]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','Value','money','N',null,'[Value]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Indicators_QHSES_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



