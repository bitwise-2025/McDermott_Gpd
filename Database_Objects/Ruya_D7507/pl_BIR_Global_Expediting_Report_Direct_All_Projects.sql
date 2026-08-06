create  view [epr].[BIR_Global_Expediting_Report_Direct_CYJEA_V] as select 
[Project],
[Discipline],
[Requisition No],
[Purchase Order No],
[Purchase Order Revision No],
[Podate],
[Po Issue Date],
[Po Status],
[Supplier Name],
[Supplier Location],
[Manufacturing Location],
[Package Description],
[Item Description],
[Ident Number],
[Tag Number],
[Po Line Item Number],
[Po Item Sub],
[Quantity Ordered],
[Uom],
[Expediting Criticality Level],
[Inspection Criticality Level],
[Item Shipment Position],
[Item Shipment Sub],
[Item Shipment Quantity],
[ISH Weight],
[Total ISH Weight],
[Weight Unit],
[Contractual/Promise Dd],
[Incoterm],
[Incoterm Delivery Place],
[Routing Method],
[Transit / Clearence Days],
[Forecasted Delivery Date],
[Pred On Site Date],
[Arvl On Site Forecasted Date],
[Actual Rpt Date At Whs/Site],
[Delivery Designation],
[Ros Date],
[Float],
[Irc No],
[Irc Qty],
[Irc Approved Date],
[Release Note No],
[Release Note Qty],
[Release Approved Date],
[Balance Irc Qty],
[Sli No],
[Bl# Or Awb#],
[Voy Or Flt #],
[Etd Date],
[Atd Date],
[Eta Date],
[Ata Date],
[Mrr Number],
[Mrr Created Date],
[Mrr Posted Date],
[Mrr Quantity],
[Osd Number],
[Osd Created Date],
[Osd Qty],
[Osd Type],
[Osd Request Action],
[Osd Action Taken],
[Osd Closed Date],
[Balance Rn Qty],
[Balance Mrr Qty],
[Buyer],
[Expeditor],
[Package Manager],
[Item Comments],
[Header Comment],
[Agent 1 Ltc Comments],
[Agent 2 Ltc Comments],
[Color],
[Is_Master_Tag],
[CreatedDateTime],
[week_end_date]

from [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
where Project IN (select value from STRING_SPLIT((select parameter_value from plp_parameter_value where pipeline_code ='pl_Master_pipeline_Whc_Daily_Runs'),','))



CREATE VIEW [epr].[BIR_Global_Expediting_Report_Direct_NFS_PL_V] AS
SELECT
    Project,
    Discipline,
    [Requisition No],
    [Purchase Order No],
    [Purchase Order Revision No],
    Podate,
    [Po Issue Date],
    [Po Status],
    [Supplier Name],
    [Supplier Location],
    [Manufacturing Location],
    [Package Description],
    [Item Description],
    [Ident Number],
    [Tag Number],
    [Po Line Item Number],
    [Po Item Sub],
    [Quantity Ordered],
    Uom,
    [Expediting Criticality Level],
    [Inspection Criticality Level],
    [Item Shipment Position],
    [Item Shipment Sub],
    [Item Shipment Quantity],
    [ISH Weight],
    [Total ISH Weight],
    [Weight Unit],
    [Contractual/Promise Dd],
    Incoterm,
    [Incoterm Delivery Place],
    [Routing Method],
    [Transit / Clearence Days],
    [Forecasted Delivery Date],
    [Pred On Site Date],
    [Arvl On Site Forecasted Date],
    [Actual Rpt Date At Whs/Site],
    [Delivery Designation],
    [Ros Date],
    Float,
    [Irc No],
    [Irc Qty],
    [Irc Approved Date],
    [Release Note No],
    [Release Note Qty],
    [Release Approved Date],
    [Balance Irc Qty],
    [Sli No],
    [Bl# Or Awb#],
    [Voy Or Flt #],
    [Etd Date],
    [Atd Date],
    [Eta Date],
    [Ata Date],
    [Mrr Number],
    [Mrr Created Date],
    [Mrr Posted Date],
    [Mrr Quantity],
    [Osd Number],
    [Osd Created Date],
    [Osd Qty],
    [Osd Type],
    [Osd Request Action],
    [Osd Action Taken],
    [Osd Closed Date],
    [Balance Rn Qty],
    [Balance Mrr Qty],
    Buyer,
    Expeditor,
    [Package Manager],
    [Item Comments],
    [Header Comment],
    [Agent 1 Ltc Comments],
    [Agent 2 Ltc Comments],
    Color,
    Is_Master_Tag,
    CreatedDateTime,
    week_end_date
FROM [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
WHERE Project = 'D7440'
  AND week_end_date = (
        SELECT MAX(week_end_date)
        FROM [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
        WHERE Project = 'D7440'
    )

    
update [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
set week_end_date ='2025-03-27 00:00:00.000' 
where week_end_date ='2025-03-26 00:00:00.000'

update [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
set week_end_date ='2025-04-03 00:00:00.000' 
where week_end_date ='2025-04-02 00:00:00.000'



delete from [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
where week_end_date ='2025-03-20 00:00:00.000' or week_end_date ='2025-03-19 00:00:00.000'
 

alter table [epr].[BIR_Global_Expediting_Report_Direct_All_projects] add week_end_date datetime
alter table [epr].[BIR_Global_Expediting_Report_Direct_All_projects] drop column month_end_date



update plp_parameter_value
set parameter_value='BIR_Global_Expediting_Report_Direct_All_Projects' where parameter_code='table_name' and pipeline_code='pl_BIR_Global_Expediting_Report_Direct_Ruya11_D7507'

update plp_parameter_value
set pipeline_code='pl_BIR_Global_Expediting_Report_Direct_All_Projects' where pipeline_code='pl_BIR_Global_Expediting_Report_Direct_Ruya11_D7507'

update plp_pipeline_parameter
set pipeline_code='pl_BIR_Global_Expediting_Report_Direct_All_Projects' where pipeline_code='pl_BIR_Global_Expediting_Report_Direct_Ruya11_D7507'

update plp_pipeline
set pipeline_code='pl_BIR_Global_Expediting_Report_Direct_All_Projects' where pipeline_code='pl_BIR_Global_Expediting_Report_Direct_Ruya11_D7507'

select * into [epr].[BIR_Global_Expediting_Report_Direct_All_Projects]
from [epr].[BIR_Global_Expediting_Report_Direct_Ruya11_D7507]

drop table [epr].[BIR_Global_Expediting_Report_Direct_Ruya11_D7507]