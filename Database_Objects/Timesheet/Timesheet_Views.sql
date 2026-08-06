alter VIEW [epr].[D7317 - Zuluf - Weekly Actual Hours] AS
select TS_CUTOFF,
TS_CONTRACT_NO,
TS_ENTTIY,
TS_JOB_OR_CC as TS_JOB_NUMBER,
TS_ACTIVITY_CODE,
TS_COSTCODE as "Cost Code",
TS_COST_TYPE as "Cost Type",
sum (cast(TS_HOURS as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Mytime_All_Projects]
where TS_CONTRACT_NO='D7317'
group by TS_ENTTIY,TS_JOB_OR_CC,TS_ACTIVITY_CODE,TS_CUTOFF,TS_CONTRACT_NO,TS_COSTCODE,TS_COST_TYPE
union all 
select 
PROCESS_DATE,
CONTRACTNUM,
COMPANY_CODE,
JOB_PROJECT,
SUBACCT_COSTCTR,
LL4WORKED,
LL6WORKED,
sum (cast(HOURSAMT as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Kronos_All_Projects]
where CONTRACTNUM='D7317'
group by COMPANY_CODE,JOB_PROJECT,SUBACCT_COSTCTR,PROCESS_DATE,CONTRACTNUM,LL4WORKED,LL6WORKED





create VIEW [epr].[E0703 - Borwin Deck - Weekly Actual Hours] AS
select TS_CUTOFF,
TS_CONTRACT_NO,
TS_ENTTIY,
TS_JOB_OR_CC as TS_JOB_NUMBER,
TS_ACTIVITY_CODE,
sum (cast(TS_HOURS as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Mytime_All_Projects]
where TS_CONTRACT_NO='E0703'
group by TS_ENTTIY,TS_JOB_OR_CC,TS_ACTIVITY_CODE,TS_CUTOFF,TS_CONTRACT_NO
union all 
select 
PROCESS_DATE,
CONTRACTNUM,
COMPANY_CODE,
JOB_PROJECT,
SUBACCT_COSTCTR,
sum (cast(HOURSAMT as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Kronos_All_Projects]
where CONTRACTNUM='E0703'
group by COMPANY_CODE,JOB_PROJECT,SUBACCT_COSTCTR,PROCESS_DATE,CONTRACTNUM


create VIEW [epr].[D7650 - Umm Shaif - Weekly Actual Hours] AS
select TS_CUTOFF,
TS_CONTRACT_NO,
TS_ENTTIY,
TS_JOB_OR_CC as TS_JOB_NUMBER,
TS_ACTIVITY_CODE,
sum (cast(TS_HOURS as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Mytime_All_Projects]
where TS_CONTRACT_NO='D7650'
group by TS_ENTTIY,TS_JOB_OR_CC,TS_ACTIVITY_CODE,TS_CUTOFF,TS_CONTRACT_NO
union all 
select 
PROCESS_DATE,
CONTRACTNUM,
COMPANY_CODE,
JOB_PROJECT,
SUBACCT_COSTCTR,
sum (cast(HOURSAMT as float)) as Weekly_Actual_Hours
from [epr].[Weekly_Timesheet_Kronos_All_Projects]
where CONTRACTNUM='D7650'
group by COMPANY_CODE,JOB_PROJECT,SUBACCT_COSTCTR,PROCESS_DATE,CONTRACTNUM
 