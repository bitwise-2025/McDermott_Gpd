--[gpd].[Net_Cash_Collections_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Net_Cash_Collections_PMR_JSON','gpd.Net_Cash_Collections_PMR_JSON','gpd.Net_Cash_Collections_PMR_JSON',
'gpd.Net_Cash_Collections_PMR_JSON_V','gpd.Net_Cash_Collections_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Type 1','varchar','V',null,'[Type 1]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','Type 2','varchar','V',null,'[Type 2]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Collections_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[Net_Cash_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Net_Cash_PMR_JSON','gpd.Net_Cash_PMR_JSON','gpd.Net_Cash_PMR_JSON',
'gpd.Net_Cash_PMR_JSON_V','gpd.Net_Cash_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Net_Cash_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[Net_Cash_Status_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Net_Cash_Status_PMR_JSON','gpd.Net_Cash_Status_PMR_JSON','gpd.Net_Cash_Status_PMR_JSON',
'gpd.Net_Cash_Status_PMR_JSON_V','gpd.Net_Cash_Status_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','1-30 Past Due','money','N',null,'[1-30 Past Due]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','31060 Past Due','money','N',null,'[31060 Past Due]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','> 60 Past Due','money','N',null,'[> 60 Past Due]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Balance','money','N',null,'[Balance]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Current / Not Due','money','N',null,'[Current / Not Due]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Net_Cash_Status_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


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


--[gpd].[Major_Subcontract_Cost_Status_JSON_active_v]

Insert into [generic_json_header]
values ('Major_Subcontract_Cost_Status_JSON','gpd.Major_Subcontract_Cost_Status_JSON','gpd.Major_Subcontract_Cost_Status_JSON',
'gpd.Major_Subcontract_Cost_Status_JSON_V','gpd.Major_Subcontract_Cost_Status_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Entity','varchar','V',null,'[Entity]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Job Number','varchar','V',null,'[Job Number]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Cost Code','varchar','V',null,'[Cost Code]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Discipline','varchar','V',null,'[Discipline]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Location','varchar','V',null,'[Location]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Subcontractor (Bid)','varchar','V',null,'[Subcontractor (Bid)]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Subcontract Number','varchar','V',null,'[Subcontract Number]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Scope','varchar','V',null,'[Scope]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Contract Type','varchar','V',null,'[Contract Type]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Planned Award Date','date','D',23,'[Planned Award Date]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Actual Award Date','date','D',23,'[Actual Award Date]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Actual %','money','N',null,'[Actual %]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Approved Change Amount/ Budget Shift','money','N',null,'[Approved Change Amount/ Budget Shift]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Budget Amount','money','N',null,'[Budget Amount]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Committed Amount','money','N',null,'[Committed Amount]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Current Budget','money','N',null,'[Current Budget]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','EAC Amount','money','N',null,'[EAC Amount]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Forecast','money','N',null,'[Forecast]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Original Budget','money','N',null,'[Original Budget]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Plan %','money','N',null,'[Plan %]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Variance to Current Budget','money','N',null,'[Variance to Current Budget]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','Variance to Previous Month','money','N',null,'[Variance to Previous Month]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Major_Subcontract_Cost_Status_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')




--[gpd].[Offshore_Client_Schedule_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Offshore_Client_Schedule_PMR_JSON','gpd.Offshore_Client_Schedule_PMR_JSON','gpd.Offshore_Client_Schedule_PMR_JSON',
'gpd.Offshore_Client_Schedule_PMR_JSON_V','gpd.Offshore_Client_Schedule_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Facility Name','varchar','V',null,'[Facility Name]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Facility Type','varchar','V',null,'[Facility Type]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Client','varchar','V',null,'[Client]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Client Requirement Date','date','D',23,'[Client Requirement Date]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Forecast Date','date','D',23,'[Forecast Date]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','Serial No','int','NI',null,'[Serial No]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Offshore_Client_Schedule_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')




--[gpd].[Offshore_Yard_Layout_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Offshore_Yard_Layout_PMR_JSON','gpd.Offshore_Yard_Layout_PMR_JSON','gpd.Offshore_Yard_Layout_PMR_JSON',
'gpd.Offshore_Yard_Layout_PMR_JSON_V','gpd.Offshore_Yard_Layout_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Component','varchar','V',null,'[Component]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Currently Occupied Project','varchar','V',null,'[Currently Occupied Project]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Currently Occupied Structure','varchar','V',null,'[Currently Occupied Structure]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Facility Name','varchar','V',null,'[Facility Name]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Designated Location as per Yard Layout','varchar','V',null,'[Designated Location as per Yard Layout]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Remarks','varchar','V',null,'[Remarks]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Yard','varchar','V',null,'[Yard]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Required Clearance date as per schedule','varchar','V',null,'[Required Clearance date as per schedule]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Forecast clearance date','date','D',23,'[Forecast clearance date]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','Serial No','int','NI',null,'[Serial No]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Offshore_Yard_Layout_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')




--[gpd].[Period_EAC_Variances_JSON_active_v]

Insert into [generic_json_header]
values ('Period_EAC_Variances_JSON','gpd.Period_EAC_Variances_JSON','gpd.Period_EAC_Variances_JSON',
'gpd.Period_EAC_Variances_JSON_V','gpd.Period_EAC_Variances_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Comments','varchar','V',null,'[Comments]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Cost Impact','money','N',null,'[Cost Impact]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','GP Impact','money','N',null,'[GP Impact]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Revenue Impact','money','N',null,'[Revenue Impact]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Order','int','NI',null,'[Order]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','PSRL1 Code','varchar','V',null,'[PSRL1 Code]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','PSRL1 Code2','varchar','V',null,'[PSRL1 Code2]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','PSRL2 Code','varchar','V',null,'[PSRL2 Code]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Variance Name','varchar','V',null,'[Variance Name]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Period_EAC_Variances_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[procurement_status_report_planning_JSON_active_v]

Insert into [generic_json_header]
values ('procurement_status_report_planning_JSON','gpd.procurement_status_report_planning_JSON','gpd.procurement_status_report_planning_JSON',
'gpd.procurement_status_report_planning_JSON_V','gpd.procurement_status_report_planning_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Scope','varchar','V',null,'[Scope]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Package Manager / Expeditor','varchar','V',null,'[Package Manager / Expeditor]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Location','varchar','V',null,'[Location]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Buyer','varchar','V',null,'[Buyer]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Supplier Name','varchar','V',null,'[Supplier Name]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Is Progressible (Yes/No)','varchar','V',null,'[Is Progressible (Yes/No)]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Category','varchar','V',null,'[Category]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','For Count (Yes/No)','varchar','V',null,'[For Count (Yes/No)]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Critical (Yes/No)','varchar','V',null,'[Critical (Yes/No)]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Cost Code','varchar','V',null,'[Cost Code]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Cost Type','varchar','V',null,'[Cost Type]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','PSRL1Code','varchar','V',null,'[PSRL1Code]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','PSRL2Code','varchar','V',null,'[PSRL2Code]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Discipline','varchar','V',null,'[Discipline]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Engineering MR Number','varchar','V',null,'[Engineering MR Number]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','MR Description','varchar','V',null,'[MR Description]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','PO Number','varchar','V',null,'[PO Number]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Package Description','varchar','V',null,'[Package Description]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','UOM','varchar','V',null,'[UOM]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Contract Weighting','varchar','V',null,'[Contract Weighting]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Plan Type','varchar','V',null,'[Plan Type]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Sub Plan Type','varchar','V',null,'[Sub Plan Type]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Milestone','varchar','V',null,'[Milestone]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Primavera  Activity  Id','varchar','V',null,'[Primavera  Activity  Id]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Weighting Type','varchar','V',null,'[Weighting Type]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Milestone Set','varchar','V',null,'[Milestone Set]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Weighted Progress','int','NI',null,'[Weighted Progress]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Milestone Date','date','D',23,'[Milestone Date]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','Cut off Date','date','D',23,'[Cut off Date]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('procurement_status_report_planning_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



--[gpd].[Vendor_Payment_Forecast_PMR_JSON_active_v]

Insert into [generic_json_header]
values ('Vendor_Payment_Forecast_PMR_JSON','gpd.Vendor_Payment_Forecast_PMR_JSON','gpd.Vendor_Payment_Forecast_PMR_JSON',
'gpd.Vendor_Payment_Forecast_PMR_JSON_V','gpd.Vendor_Payment_Forecast_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Vendor Name','varchar','V',null,'[Vendor Name]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Serial No','int','NI',null,'[Serial No]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Amount $','money','N',null,'[Amount $]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Description','varchar','V',null,'[Description]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Vendor_Payment_Forecast_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


--[gpd].[Work_Pack_Progress_PMR_JSON_active_V]

Insert into [generic_json_header]
values ('Work_Pack_Progress_PMR_JSON','gpd.Work_Pack_Progress_PMR_JSON','gpd.Work_Pack_Progress_PMR_JSON',
'gpd.Work_Pack_Progress_PMR_JSON_V','gpd.Work_Pack_Progress_PMR_JSON_active_error_v','Y','Y')


Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','PROJECT','varchar','V',null,'[PROJECT]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','CONTRACT','varchar','V',null,'[CONTRACT]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','DISCIPLINE','varchar','V',null,'[DISCIPLINE]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','WPNO','varchar','V',null,'[WPNO]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','WP DESCRIPTION','varchar','V',null,'[WP DESCRIPTION]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','AREA','varchar','V',null,'[AREA]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','STATUS','varchar','V',null,'[STATUS]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','JOB NUMBER','varchar','V',null,'[JOB NUMBER]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','ACTIVITY CODE','varchar','V',null,'[ACTIVITY CODE]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','Cost Code','varchar','V',null,'[Cost Code]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','Cost Type','varchar','V',null,'[Cost Type]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','AFC HRS','money','N',null,'[AFC HRS]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','WP HRS','money','N',null,'[WP HRS]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','CUMEARNED','money','N',null,'[CUMEARNED]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','Cutoff','date','D',23,'[Cutoff]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Work_Pack_Progress_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

Insert into [generic_json_header]
values ('Fabrication_Construction_Schedule_Milestone_SCM_JSON','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON',
'gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_V','gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail] values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Month End Date','date','D',23,'[Month End Date]','Y')



Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Type','varchar','V',null,'[Type]','Y')


Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Facilities','varchar','V',null,'[Facilities]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Facility Type','varchar','V',null,'[Facility Type]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Description','varchar','V',null,'[Description]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Baseline Finish Date','date','D',23,'[Baseline Finish Date]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Actual / Fcst Finish Date','date','D',23,'[Actual / Fcst Finish Date]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','MDR Baseline Start','date','D',23,'[MDR Baseline Start]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','MDR Baseline Finish','date','D',23,'[MDR Baseline Finish]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','MDR Fcst Start','date','D',23,'[MDR Fcst Start]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','MDR Fcst Finish','date','D',23,'[MDR Fcst Finish]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Client Baseline Start','date','D',23,'[Client Baseline Start]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Client Baseline Finish','date','D',23,'[Client Baseline Finish]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Client Fcst Start','date','D',23,'[Client Fcst Start]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Client Fcst Finish','date','D',23,'[Client Fcst Finish]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Plan %','money','N',null,'[Plan %]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Forecast %','money','N',null,'[Forecast %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Actual %','money','N',null,'[Actual %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Committed %','money','N',null,'[Committed %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Expended %','money','N',null,'[Expended %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Variance to Plan %','money','N',null,'[Variance to Plan %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Variance to Forecast %','money','N',null,'[Variance to Forecast %]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Period Forecast PF','money','N',null,'[Period Forecast PF]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','Period Actual PF','money','N',null,'[Period Actual PF]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','ITD PF','money','N',null,'[ITD PF]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','ETC PF','money','N',null,'[ETC PF]','Y')
Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','EAC PF','money','N',null,'[EAC PF]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Fabrication_Construction_Schedule_Milestone_SCM_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

Insert into [generic_json_header]
values ('Global_Template_Engineering_Key_Quantities_JSON','gpd.Global_Template_Engineering_Key_Quantities_JSON','gpd.Global_Template_Engineering_Key_Quantities_JSON',
'gpd.Global_Template_Engineering_Key_Quantities_JSON_v','gpd.Global_Template_Engineering_Key_Quantities_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Month End Date','date','D',23,'[Month End Date]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Key Quantities','varchar','V',null,'[Key Quantities]','Y')



Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','UOM','varchar','N',null,'[UOM]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Original Budget Qty','money','N',null,'[Original Budget Qty]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Current Budget Qty','money','N',null,'[Current Budget Qty]','Y')
Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Forecast Qty','money','N',null,'[Forecast Qty]','Y')
Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','Progress Budget Qty','money','N',null,'[Progress Budget Qty]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Global_Template_Engineering_Key_Quantities_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


Insert into [generic_json_header]
values ('Key_Completion_Metrics_HUC_PMR_JSON','gpd.Key_Completion_Metrics_HUC_PMR_JSON','gpd.Key_Completion_Metrics_HUC_PMR_JSON',
'gpd.Key_Completion_Metrics_HUC_PMR_JSON_V','gpd.Key_Completion_Metrics_HUC_PMR_JSON_Error_V','Y','Y')



Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Key Completion Metrics','varchar','V',null,'[Key Completion Metrics]','Y')



Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Cumulative Plan','money','N',null,'[Cumulative Plan]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Cumulative Actual','money','N',null,'[Cumulative Actual]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','Total','money','N',null,'[Total]','Y')



Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Key_Completion_Metrics_HUC_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


Insert into [generic_json_header]
values ('Marine_campaign_readiness_PMR_JSON','gpd.Marine_campaign_readiness_PMR_JSON','gpd.Marine_campaign_readiness_PMR_JSON',
'gpd.Marine_campaign_readiness_PMR_JSON_V','gpd.Marine_campaign_readiness_PMR_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Campaign Description','varchar','V',null,'[Campaign Description]','Y')



Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Main Vessel','varchar','V',null,'[Main Vessel]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Original Start','date','D',23,'[Original Start]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Original Finish','date','D',23,'[Original Finish]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Forecast Start','date','D',23,'[Forecast Start]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Forecast Finish','date','D',23,'[Forecast Finish]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Readiness Review - Plan %','money','N',null,'[Readiness Review - Plan %]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','Readiness Review - Actual %','money','N',null,'[Readiness Review - Actual %]','Y')



Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Marine_campaign_readiness_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


Insert into [generic_json_header]
values ('Marine_Progress_PMR_JSON','gpd.Marine_Progress_PMR_JSON','gpd.Marine_Progress_PMR_JSON',
'gpd.Marine_Progress_PMR_JSON_V','gpd.Marine_Progress_PMR_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Vessel Name','varchar','V',null,'[Vessel Name]','Y')



Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Activity','varchar','V',null,'[Activity]','Y')



Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Current Budget Duration - Days','money','N',null,'[Current Budget Duration - Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Actual Duration - Days','money','N',null,'[Actual Duration - Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','To-Go Days','money','N',null,'[To-Go Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','EAC - Days','money','N',null,'[EAC - Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','EAC Previous Month Days','money','N',null,'[EAC Previous Month Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','EAC Variance Days','money','N',null,'[EAC Variance Days]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','PF To Date','money','N',null,'[PF To Date]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','ETC PF','money','N',null,'[ETC PF]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','Working Spread Rate','money','N',null,'[Working Spread Rate]','Y')



Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Marine_Progress_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


Insert into [generic_json_header]
values ('Marine_SpreadRate_PMR_JSON','gpd.Marine_SpreadRate_PMR_JSON','gpd.Marine_SpreadRate_PMR_JSON',
'gpd.Marine_SpreadRate_PMR_JSON_v','gpd.Marine_SpreadRate_PMR_JSON_active_error_v','Y','Y')





Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Vessel Name','varchar','V',null,'[Vessel Name]','Y')



Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Spread','varchar','V',null,'[Spread]','Y')



Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','Current Budget','money','N',null,'[Current Budget]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','EAC CurrentMonth','money','N',null,'[EAC CurrentMonth]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','EAC Previous Month','money','N',null,'[EAC Previous Month]','Y')


Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Marine_SpreadRate_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('ModelMat_Liquidation_Curve_PMR_JSON','gpd.ModelMat_Liquidation_Curve_PMR_JSON','gpd.ModelMat_Liquidation_Curve_PMR_JSON',
'gpd.ModelMat_Liquidation_Curve_PMR_JSON_V','gpd.ModelMat_Liquidation_Curve_PMR_JSON_active_error_v','Y','Y')





Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','Model Type','varchar','V',null,'[Model Type]','Y')
Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','Value','money','N',null,'[Value]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('ModelMat_Liquidation_Curve_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('Narratives_SCM_JSON','gpd.Narratives_SCM_JSON','gpd.Narratives_SCM_JSON',
'gpd.Narratives_SCM_JSON_V','gpd.Narratives_SCM_JSON_active_error_v','Y','Y')





Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Phase','varchar','V',null,'[Phase]','Y')



Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Narrative Type','varchar','V',null,'[Narrative Type]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','PMR Slide Type','varchar','V',null,'[PMR Slide Type]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','Narrative','varchar','V',null,'[Narrative]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Narratives_SCM_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('PSR_Cost_Summary_PMR_JSON','gpd.PSR_Cost_Summary_PMR_JSON','gpd.PSR_Cost_Summary_PMR_JSON',
'gpd.PSR_Cost_Summary_PMR_JSON_V','gpd.PSR_Cost_Summary_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail] values('PSR_Cost_Summary_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')



Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','Event','varchar','V',null,'[Event]','Y')

Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','Order','varchar','V',null,'[Event]','Y')




Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','Amount','money','N',null,'[Amount]','Y')

Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','Date','date','D',23,'[Date]','Y')
Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('PSR_Cost_Summary_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('PSRP_Milestone_JSON','gpd.Milestone_PSRP_SCM_JSON','gpd.Milestone_PSRP_SCM_JSON',
'gpd.Milestone_PSRP_SCM_JSON_v','gpd.Milestone_PSRP_SCM_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail] values('PSRP_Milestone_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')
Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Order','int','NI',null,'[Event]','Y')


Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Standard Milestones','varchar','V',null,'[Standard Milestones]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Project Milestones','varchar','V',null,'[Project Milestones]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Category','varchar','V',null,'[Category]','Y')


Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Weighting Type','varchar','V',null,'[Weighting Type]','Y')


Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Milestone Set','varchar','V',null,'[Milestone Set]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','Weighting','money','N',null,'[Weighting]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('PSRP_Milestone_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('RiskOpp_Opportunity_PMR_JSON','gpd.RiskOpp_Opportunity_PMR_JSON','gpd.RiskOpp_Opportunity_PMR_JSON',
'gpd.RiskOpp_Opportunity_PMR_JSON_v','gpd.RiskOpp_Opportunity_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail] values('RiskOpp_Opportunity_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Opportunity ID','varchar','V',null,'[Opportunity ID]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Opportunity Description','varchar','V',null,'[Opportunity Description]','Y')



Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Probability','money','N',null,'[Probability]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Low','money','N',null,'[Low]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','High','money','N',null,'[High]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Most Likely','money','N',null,'[Most Likely]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','Better Same Worse','money','N',null,'[Better Same Worse]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Opportunity_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')


Insert into [generic_json_header]
values ('RiskOpp_Risks_PMR_JSON','gpd.RiskOpp_Risks_PMR_JSON','gpd.RiskOpp_Risks_PMR_JSON',
'gpd.RiskOpp_Risks_PMR_JSON_V','gpd.RiskOpp_Risks_PMR_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Risk ID','varchar','V',null,'[Risk ID]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Risk Event','varchar','V',null,'[Risk Event]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Mitigation By Date','date','D',23,'[Mitigation By Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Probability','money','N',null,'[Probability]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Low','money','N',null,'[Low]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Most Likely','money','N',null,'[Most Likely]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','High','money','N',null,'[High]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','Better Same Worse','money','N',null,'[Better Same Worse]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Risks_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

Insert into [generic_json_header]
values ('RiskOpp_Romap_Status_PMR_JSON','gpd.RiskOpp_Romap_Status_PMR_JSON','gpd.RiskOpp_Romap_Status_PMR_JSON',
'gpd.RiskOpp_Romap_Status_PMR_JSON_V','gpd.RiskOpp_Romap_Status_PMR_JSON_active_error_v','Y','Y')





Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','R_O','varchar','V',null,'[R_O]','Y')



Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','Required','money','N',null,'[Required]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','In Progress','money','N',null,'[In Progress]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','Closed','money','N',null,'[Closed]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Romap_Status_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

Insert into [generic_json_header]
values ('Standard_Milestone_PSRP_SCM_JSON','gpd.Standard_Milestone_PSRP_SCM_JSON','gpd.Standard_Milestone_PSRP_SCM_JSON',
'gpd.Standard_Milestone_PSRP_SCM_JSON_V','gpd.Standard_Milestone_PSRP_SCM_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail] values('Standard_Milestone_PSRP_SCM_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')
Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','Order','int','NI',null,'[Event]','Y')


Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','Standard Milestones','varchar','V',null,'[Standard Milestones]','Y')



Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Standard_Milestone_PSRP_SCM_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')

Insert into [generic_json_header]
values ('Status_QHSES_PMR_JSON','gpd.Status_QHSES_PMR_JSON','gpd.Status_QHSES_PMR_JSON',
'gpd.Status_QHSES_PMR_JSON_V','gpd.Status_QHSES_PMR_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail] values('Status_QHSES_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','Date','date','D',23,'[Date]','Y')



Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','Function','varchar','V',null,'[Function]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','Value','money','N',null,'[Value]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','RAG','varchar','V',null,'[RAG]','Y')


Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('Status_QHSES_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('WorkHours_QHSES_PMR_JSON','gpd.WorkHours_QHSES_PMR_JSON','gpd.WorkHours_QHSES_PMR_JSON',
'gpd.WorkHours_QHSES_PMR_JSON_V','gpd.WorkHours_QHSES_PMR_JSON_active_error_v','Y','Y')




Insert into [generic_json_detail] values('WorkHours_QHSES_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Project to Date','money','N',null,'[Project to Date]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Year to Date','money','N',null,'[Year to Date]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Month to Date','money','N',null,'[Month to Date]','Y')




Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','Type','varchar','V',null,'[Type]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('WorkHours_QHSES_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
Insert into [generic_json_header]
values ('ScheduleAnalytics_PMR_JSON','gpd.ScheduleAnalytics_PMR_JSON','gpd.ScheduleAnalytics_PMR_JSON',
'gpd.ScheduleAnalytics_PMR_JSON_V','gpd.ScheduleAnalytics_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail] values('ScheduleAnalytics_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')



Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Id','varchar','V',null,'[Id]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Description','varchar','V',null,'[Description]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Original Duration','money','N',null,'[Original Duration]','Y')


Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Remaining Duration','money','N',null,'[Remaining Duration]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Start','date','D',23,'[Start]','Y')


Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Finish','date','D',23,'[Finish]','Y')


Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Total Float','money','N',null,'[Total Float]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Free Float','money','N',null,'[Free Float]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Actual Start','date','D',23,'[Actual Start]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Actual Finish','date','D',23,'[Actual Finish]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Late Finish','date','D',23,'[Late Finish]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Late Start','date','D',23,'[Late Start]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number Of Discrete Successors','money','N',null,'[Number Of Discrete Successors]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Is Out Of Sequence','varchar','V',null,'[Is Out Of Sequence]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Activity Type Ex','varchar','V',null,'[Activity Type Ex]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Critical','varchar','V',null,'[Critical]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Baseline Start','date','D',23,'[Baseline Start]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Baseline Finish','date','D',23,'[Baseline Finish]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Baseline Project Time Now','date','D',23,'[Baseline Project Time Now]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Previous Actual Start','date','D',23,'[Previous Actual Start]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Project Time Now','date','D',23,'[Project Time Now]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Previous Actual Finish','date','D',23,'[Previous Actual Finish]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Longest Path','varchar','V',null,'[Longest Path]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Primary Constraint','varchar','V',null,'[Primary Constraint]','Y')



Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Secondary Constraint','varchar','V',null,'[Secondary Constraint]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Primary Constraint Date','date','D',23,'[Primary Constraint Date]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Secondary Constraint Date','date','D',23,'[Secondary Constraint Date]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Expected Finish','date','D',23,'[Expected Finish]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Suspend Date','date','D',23,'[Suspend Date]','Y')


Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Resume Date','date','D',23,'[Resume Date]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Predecessors','money','N',null,'[Number of Predecessors]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of FS Predecessors','money','N',null,'[Number of FS Predecessors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of SS Predecessors','money','N',null,'[Number of SS Predecessors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of SF Predecessors','money','N',null,'[Number of SF Predecessors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of FF Predecessors','money','N',null,'[Number of FF Predecessors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Successors','money','N',null,'[Number of Successors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of FS Successors','money','N',null,'[Number of FS Successors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of SS Successors','money','N',null,'[Number of SS Successors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of SF Successors','money','N',null,'[Number of SF Successors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of FF Successors','money','N',null,'[Number of FF Successors]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Lags','money','N',null,'[Number of Lags]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Successor Lags','money','N',null,'[Number of Successor Lags]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Successor Leads','money','N',null,'[Number of Successor Leads]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Number of Leads','money','N',null,'[Number of Leads]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Minimum Lag','money','N',null,'[Minimum Lag]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Maximum Lag','money','N',null,'[Maximum Lag]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','WBS Level','money','N',null,'[WBS Level]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Baseline Duration','money','N',null,'[Baseline Duration]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Actual Duration','money','N',null,'[Actual Duration]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Calendar','varchar','V',null,'[Calendar]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Activity Status','varchar','V',null,'[Activity Status]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Physical % Complete','money','N',null,'[Physical % Complete]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Baseline Work','money','N',null,'[Baseline Work]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Actual Work','money','N',null,'[Actual Work]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Remaining Work','money','N',null,'[Remaining Work]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Total Work','money','N',null,'[Total Work]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','WBS Code','varchar','V',null,'[WBS Code]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','WBS Name','varchar','V',null,'[WBS Name]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Earned Value Work','money','N',null,'[Earned Value Work]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Planned Value Work','money','N',null,'[Planned Value Work]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','Earned Value Technique','varchar','V',null,'[Earned Value Technique]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - PHASE','varchar','V',null,'[GLOBAL - PHASE]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - EXECUTED BY TYPE','varchar','V',null,'[GLOBAL - EXECUTED BY TYPE]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - CHANGE MANAGEMENT','varchar','V',null,'[GLOBAL - CHANGE MANAGEMENT]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - PRIME','varchar','V',null,'[GLOBAL - PRIME]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - SUBPRIME','varchar','V',null,'[GLOBAL - SUBPRIME]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - FUNCTION','varchar','V',null,'[GLOBAL - FUNCTION]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - OFFICE','varchar','V',null,'[GLOBAL - OFFICE]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - SUPPLY CHAIN','varchar','V',null,'[GLOBAL - SUPPLY CHAIN]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - PRIME (GCOA V11)','varchar','V',null,'[GLOBAL - PRIME (GCOA V11)]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - PRIME (GCOA V13)','varchar','V',null,'[GLOBAL - PRIME (GCOA V13)]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - SUBPRIME (GCOA V11)','varchar','V',null,'[GLOBAL - SUBPRIME (GCOA V11)]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - PRIME (GCOA V13)_1','varchar','V',null,'[GLOBAL - PRIME (GCOA V13)_1]','Y')
Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','GLOBAL - MILESTONES','varchar','V',null,'[GLOBAL - MILESTONES]','Y')


Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('ScheduleAnalytics_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')



Insert into [generic_json_header]
values ('RiskOpp_Deferral_Risks_PMR_JSON','gpd.RiskOpp_Deferral_Risks_PMR_JSON','gpd.RiskOpp_Deferral_Risks_PMR_JSON',
'gpd.RiskOpp_Deferral_Risks_PMR_JSON_V','gpd.RiskOpp_Deferral_Risks_PMR_JSON_active_error_v','Y','Y')



Insert into [generic_json_detail] values('RiskOpp_Deferral_Risks_PMR_JSON','Project Number','varchar','V',null,'[Project Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Contract Number','varchar','V',null,'[Contract Number]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Date','date','D',23,'[Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Mitigation by Date','date','D',23,'[Mitigation by Date]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Risk ID','varchar','V',null,'[Risk ID]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Risk Event','varchar','V',null,'[Risk Event]','Y')



Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Probability','money','N',null,'[Probability]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Low','money','N',null,'[Low]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','High','money','N',null,'[High]','Y')


Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Most Likely','money','N',null,'[Most Likely]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','Better Same Worse','money','N',null,'[Better Same Worse]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','zSourceFileName','varchar','V',null,'[zSourceFileName]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','zCreatedDateTime','date','D',23,'[zCreatedDateTime]','Y')

Insert into [generic_json_detail]
values('RiskOpp_Deferral_Risks_PMR_JSON','zVersionNo','int','NI',null,'[zVersionNo]','Y')
