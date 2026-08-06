CREATE PROC [dbo].[usp_fact_fss_grossprofit_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime


	declare @reportingperiod_grossprofit date
        

if exists (select 1 from fss.Stage_fss_reportingperiod_V where  [Data source]='Gross Profit' and month([Reporting Period]) not between 0 and 12)
    BEGIN
        set @Errormessage='Invalid Month Range'
        select @Errormessage
    End

set @reportingperiod_grossprofit =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='Gross Profit')
select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_gross_profit_v

if (month(@reportingperiod_grossprofit) between 1 and 3)

    begin 
          insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
 
select 
c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'Gross Profit' as [Data Source]
,null as [New/ CO],null as [JV/Non-JV],[BL/PW],[External Product Line],[Customer],null as [Seq No],null as [Sub Title],null as [Caclulation],
null as [Category],null as [Facility],null as [Commentary],@reportingperiod_grossprofit as TransactionDate,'Q1' as [Quarter],
case when datasubclass_up in ( 'Jan Q Latest Update HYP','Jan Q Latest Update ADJ','Jan Q Latest Update','Jan MB','Jan F2') then 1
     when datasubclass_up in ( 'Feb Q Latest Update HYP','Feb Q Latest Update ADJ','Feb Q Latest Update','Feb MB','Feb F2')then 2
	 when datasubclass_up in ( 'Mar Q Latest Update HYP','Mar Q Latest Update ADJ','Mar Q Latest Update','Mar MB','Mar F2') then 3 else 0 end as month
,amount,getdate() as created_date_time 
from
(
select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer],amount,datasubclass_up,
case when datasubclass_up in ('Jan Q Latest Update HYP','Feb Q Latest Update HYP','Mar Q Latest Update HYP') then 'Curr Qtr Update HYP'
	 when datasubclass_up in ('Jan Q Latest Update ADJ','Feb Q Latest Update ADJ','Mar Q Latest Update ADJ') then 'Curr Qtr Update ADJ'
	 when datasubclass_up in ('Jan Q Latest Update','Feb Q Latest Update','Mar Q Latest Update') then 'Curr Qtr Update'
	 when datasubclass_up in ('Jan MB','Feb MB','Mar MB') then 'MB Amount'
	 when datasubclass_up in ('Total  MB') then 'Total MB'
	 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
     when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
     when datasubclass_up in ('Jan F2','Feb F2','Mar F2') then 'F2 Amount'
     when datasubclass_up in ('Total  F2') then 'Total F2'	 
	else datasubclass_up end as datasubclass
from 
(select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer]
,isnull([Jan Q Latest Update HYP],'')  as [Jan Q Latest Update HYP]
,isnull([Feb Q Latest Update HYP],'')  as [Feb Q Latest Update HYP]
,isnull([Mar Q Latest Update HYP],'')  as [Mar Q Latest Update HYP]
,isnull([Total  Q Latest Update HYP],'')  as [Total  Q Latest Update HYP]
,isnull([Jan Q Latest Update ADJ],'')  as [Jan Q Latest Update ADJ]
,isnull([Feb Q Latest Update ADJ],'')  as [Feb Q Latest Update ADJ]
,isnull([Mar Q Latest Update ADJ],'')  as [Mar Q Latest Update ADJ]
,isnull([Total  Q Latest Update ADJ],'')  as [Total  Q Latest Update ADJ]
,isnull([Jan Q Latest Update],'')  as [Jan Q Latest Update]
,isnull([Feb Q Latest Update],'')  as [Feb Q Latest Update]
,isnull([Mar Q Latest Update],'')  as [Mar Q Latest Update]
,isnull([Total  Q Latest Update],'')  as [Total  Q Latest Update]
,isnull([Jan MB],'')  as [Jan MB]
,isnull([Feb MB],'')  as [Feb MB]
,isnull([Mar MB],'')  as [Mar MB]
,isnull([Total  MB],'')  as [Total  MB]
,isnull([Jan Delta MB],'')  as [Jan Delta MB]
,isnull([Feb Delta MB],'')  as [Feb Delta MB]
,isnull([Mar Delta MB],'')  as [Mar Delta MB]
,isnull([Delta Delta MB],'')  as [Delta Delta MB]
,isnull([Total  Prev Qtr],'')  as [Total  Prev Qtr]
,isnull([Total  Delta Prev Qtr],'')  as [Total  Delta Prev Qtr]
,isnull([Total  Current Qtr],'')  as [Total  Current Qtr]
,isnull([Delta Current Qtr],'')  as [Delta Current Qtr]
,isnull([Jan F2],'')  as [Jan F2]
,isnull([Feb F2],'')  as [Feb F2]
,isnull([Mar F2],'')  as [Mar F2]
,isnull([Total  F2],'')  as [Total  F2]
,isnull([Jan Delta F2],'')  as [Jan Delta F2]
,isnull([Feb Delta F2],'')  as [Feb Delta F2]
,isnull([Mar Delta F2],'')  as [Mar Delta F2]
,isnull([Delta F2],'')  as [Delta F2]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_gross_profit_v]
WHERE isnull([Project Title],'')<>'' and-- isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
)a
unpivot(
amount for datasubclass_up in 
(
[Jan Q Latest Update HYP] ,[Feb Q Latest Update HYP] ,[Mar Q Latest Update HYP] ,[Total  Q Latest Update HYP] ,[Jan Q Latest Update ADJ] 
,[Feb Q Latest Update ADJ] ,[Mar Q Latest Update ADJ] ,[Total  Q Latest Update ADJ] ,[Jan Q Latest Update] ,[Feb Q Latest Update] ,[Mar Q Latest Update] 
,[Total  Q Latest Update] ,[Jan MB] ,[Feb MB] ,[Mar MB] ,[Total  MB] ,[Jan Delta MB] ,[Feb Delta MB] ,[Mar Delta MB] ,[Delta Delta MB] 
,[Total  Prev Qtr] ,[Total  Delta Prev Qtr] ,[Total  Current Qtr] ,[Delta Current Qtr] ,[Jan F2] ,[Feb F2] ,[Mar F2] ,[Total  F2] ,[Jan Delta F2] ,[Feb Delta F2] ,[Mar Delta F2] ,[Delta F2] 
)
) as unpvt
)b  inner join  dbo.dim_entp_fss_project_v c
                on --b.[Project No.]=c.[Project_No] and 
                trim(b.[Project Title])=trim(c.[Project_Title])
	inner join dbo. dim_ent_data_sub_class_v d on b.datasubclass=d.data_sub_class_name and d.data_class_name='Amount'	
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

end

if (month(@reportingperiod_grossprofit) between 4 and 6)

begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
 
select 
c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'Gross Profit' as [Data Source],
null as [New/ CO],null as [JV/Non-JV],[BL/PW],[External Product Line],[Customer],null as [Seq No],null as [Sub Title],null as [Caclulation],
null as [Category],null as [Facility],null as [Commentary],@reportingperiod_grossprofit as TransactionDate,'Q2' as [Quarter],
case when datasubclass_up in ( 'Apr Q Latest Update HYP','Apr Q Latest Update ADJ','Apr Q Latest Update','Apr MB','Apr F2') then 4
     when datasubclass_up in ( 'May Q Latest Update HYP','May Q Latest Update ADJ','May Q Latest Update','May MB','May F2')then 5
	 when datasubclass_up in ( 'Jun Q Latest Update HYP','Jun Q Latest Update ADJ','Jun Q Latest Update','Jun MB','Jun F2') then 6 else 0 end as month
,amount,getdate() as created_date_time 
from
(
select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer],amount,datasubclass_up,
case when datasubclass_up in ('Apr Q Latest Update HYP','May Q Latest Update HYP','Jun Q Latest Update HYP') then 'Curr Qtr Update HYP'
	 when datasubclass_up in ('Apr Q Latest Update ADJ','May Q Latest Update ADJ','Jun Q Latest Update ADJ') then 'Curr Qtr Update ADJ'
	 when datasubclass_up in ('Apr Q Latest Update','May Q Latest Update','Jun Q Latest Update') then 'Curr Qtr Update'
	 when datasubclass_up in ('Apr MB','May MB','Jun MB') then 'MB Amount'
	 when datasubclass_up in ('Total  MB') then 'Total MB'
	 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
     when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
     when datasubclass_up in ('Apr F2','May F2','Jun F2') then 'F2 Amount'
     when datasubclass_up in ('Total  F2') then 'Total F2'	 
	else datasubclass_up end as datasubclass
from 
(select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer]
,isnull([Apr Q Latest Update HYP],'')  as [Apr Q Latest Update HYP]
,isnull([May Q Latest Update HYP],'')  as [May Q Latest Update HYP]
,isnull([Jun Q Latest Update HYP],'')  as [Jun Q Latest Update HYP]
,isnull([Total  Q Latest Update HYP],'')  as [Total  Q Latest Update HYP]
,isnull([Apr Q Latest Update ADJ],'')  as [Apr Q Latest Update ADJ]
,isnull([May Q Latest Update ADJ],'')  as [May Q Latest Update ADJ]
,isnull([Jun Q Latest Update ADJ],'')  as [Jun Q Latest Update ADJ]
,isnull([Total  Q Latest Update ADJ],'')  as [Total  Q Latest Update ADJ]
,isnull([Apr Q Latest Update],'')  as [Apr Q Latest Update]
,isnull([May Q Latest Update],'')  as [May Q Latest Update]
,isnull([Jun Q Latest Update],'')  as [Jun Q Latest Update]
,isnull([Total  Q Latest Update],'')  as [Total  Q Latest Update]
,isnull([Apr MB],'')  as [Apr MB]
,isnull([May MB],'')  as [May MB]
,isnull([Jun MB],'')  as [Jun MB]
,isnull([Total  MB],'')  as [Total  MB]
,isnull([Apr Delta MB],'')  as [Apr Delta MB]
,isnull([May Delta MB],'')  as [May Delta MB]
,isnull([Jun Delta MB],'')  as [Jun Delta MB]
,isnull([Delta Delta MB],'')  as [Delta Delta MB]
,isnull([Total  Prev Qtr],'')  as [Total  Prev Qtr]
,isnull([Total  Delta Prev Qtr],'')  as [Total  Delta Prev Qtr]
,isnull([Total  Current Qtr],'')  as [Total  Current Qtr]
,isnull([Delta Current Qtr],'')  as [Delta Current Qtr]
,isnull([Apr F2],'')  as [Apr F2]
,isnull([May F2],'')  as [May F2]
,isnull([Jun F2],'')  as [Jun F2]
,isnull([Total  F2],'')  as [Total  F2]
,isnull([Apr Delta F2],'')  as [Apr Delta F2]
,isnull([May Delta F2],'')  as [May Delta F2]
,isnull([Jun Delta F2],'')  as [Jun Delta F2]
,isnull([Delta F2],'')  as [Delta F2]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_gross_profit_v]
WHERE isnull([Project Title],'')<>'' and --isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
)a
unpivot(
amount for datasubclass_up in 
(
[Apr Q Latest Update HYP] ,[May Q Latest Update HYP] ,[Jun Q Latest Update HYP] ,[Total  Q Latest Update HYP] ,[Apr Q Latest Update ADJ] 
,[May Q Latest Update ADJ] ,[Jun Q Latest Update ADJ] ,[Total  Q Latest Update ADJ] ,[Apr Q Latest Update] ,[May Q Latest Update] ,[Jun Q Latest Update] 
,[Total  Q Latest Update] ,[Apr MB] ,[May MB] ,[Jun MB] ,[Total  MB] ,[Apr Delta MB] ,[May Delta MB] ,[Jun Delta MB] ,[Delta Delta MB] 
,[Total  Prev Qtr] ,[Total  Delta Prev Qtr] ,[Total  Current Qtr] ,[Delta Current Qtr] ,[Apr F2] ,[May F2] ,[Jun F2] ,[Total  F2] ,[Apr Delta F2] ,[May Delta F2] ,[Jun Delta F2] ,[Delta F2] 
)
) as unpvt
)b  inner join  dbo.dim_entp_fss_project_v c
                on --b.[Project No.]=c.[Project_No] and 
                trim(b.[Project Title])=trim(c.[Project_Title])
	inner join dbo. dim_ent_data_sub_class_v d on b.datasubclass=d.data_sub_class_name and d.data_class_name='Amount'	   
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

end

if (month(@reportingperiod_grossprofit) between 7 and 9)

begin 
        insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
 
select 
c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'Gross Profit' as [Data Source],
null as [New/ CO],null as [JV/Non-JV],[BL/PW],[External Product Line],[Customer],null as [Seq No],null as [Sub Title],null as [Caclulation],
null as [Category],null as [Facility],null as [Commentary],@reportingperiod_grossprofit as TransactionDate,'Q3' as [Quarter],
case when datasubclass_up in ( 'Jul Q Latest Update HYP','Jul Q Latest Update ADJ','Jul Q Latest Update','Jul MB','Jul F2') then 7
     when datasubclass_up in ( 'Aug Q Latest Update HYP','Aug Q Latest Update ADJ','Aug Q Latest Update','Aug MB','Aug F2')then 8
	 when datasubclass_up in ( 'Sep Q Latest Update HYP','Sep Q Latest Update ADJ','Sep Q Latest Update','Sep MB','Sep F2') then 9 else 0 end as month
,amount,getdate() as created_date_time 
from
(
select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer],amount,datasubclass_up,
case when datasubclass_up in ('Jul Q Latest Update HYP','Aug Q Latest Update HYP','Sep Q Latest Update HYP') then 'Curr Qtr Update HYP'
	 when datasubclass_up in ('Jul Q Latest Update ADJ','Aug Q Latest Update ADJ','Sep Q Latest Update ADJ') then 'Curr Qtr Update ADJ'
	 when datasubclass_up in ('Jul Q Latest Update','Aug Q Latest Update','Sep Q Latest Update') then 'Curr Qtr Update'
	 when datasubclass_up in ('Jul MB','Aug MB','Sep MB') then 'MB Amount'
	 when datasubclass_up in ('Total  MB') then 'Total MB'
	 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
     when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
     when datasubclass_up in ('Jul F2','Aug F2','Sep F2') then 'F2 Amount'
     when datasubclass_up in ('Total  F2') then 'Total F2'	 
	else datasubclass_up end as datasubclass
from 
(select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer]
,isnull([Jul Q Latest Update HYP],'')  as [Jul Q Latest Update HYP]
,isnull([Aug Q Latest Update HYP],'')  as [Aug Q Latest Update HYP]
,isnull([Sep Q Latest Update HYP],'')  as [Sep Q Latest Update HYP]
,isnull([Total  Q Latest Update HYP],'')  as [Total  Q Latest Update HYP]
,isnull([Jul Q Latest Update ADJ],'')  as [Jul Q Latest Update ADJ]
,isnull([Aug Q Latest Update ADJ],'')  as [Aug Q Latest Update ADJ]
,isnull([Sep Q Latest Update ADJ],'')  as [Sep Q Latest Update ADJ]
,isnull([Total  Q Latest Update ADJ],'')  as [Total  Q Latest Update ADJ]
,isnull([Jul Q Latest Update],'')  as [Jul Q Latest Update]
,isnull([Aug Q Latest Update],'')  as [Aug Q Latest Update]
,isnull([Sep Q Latest Update],'')  as [Sep Q Latest Update]
,isnull([Total  Q Latest Update],'')  as [Total  Q Latest Update]
,isnull([Jul MB],'')  as [Jul MB]
,isnull([Aug MB],'')  as [Aug MB]
,isnull([Sep MB],'')  as [Sep MB]
,isnull([Total  MB],'')  as [Total  MB]
,isnull([Jul Delta MB],'')  as [Jul Delta MB]
,isnull([Aug Delta MB],'')  as [Aug Delta MB]
,isnull([Sep Delta MB],'')  as [Sep Delta MB]
,isnull([Delta Delta MB],'')  as [Delta Delta MB]
,isnull([Total  Prev Qtr],'')  as [Total  Prev Qtr]
,isnull([Total  Delta Prev Qtr],'')  as [Total  Delta Prev Qtr]
,isnull([Total  Current Qtr],'')  as [Total  Current Qtr]
,isnull([Delta Current Qtr],'')  as [Delta Current Qtr]
,isnull([Jul F2],'')  as [Jul F2]
,isnull([Aug F2],'')  as [Aug F2]
,isnull([Sep F2],'')  as [Sep F2]
,isnull([Total  F2],'')  as [Total  F2]
,isnull([Jul Delta F2],'')  as [Jul Delta F2]
,isnull([Aug Delta F2],'')  as [Aug Delta F2]
,isnull([Sep Delta F2],'')  as [Sep Delta F2]
,isnull([Delta F2],'')  as [Delta F2]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from[fss].[stage_fss_gross_profit_v]
WHERE isnull([Project Title],'')<>'' and-- isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
)a
unpivot(
amount for datasubclass_up in 
(
[Jul Q Latest Update HYP] ,[Aug Q Latest Update HYP] ,[Sep Q Latest Update HYP] ,[Total  Q Latest Update HYP] ,[Jul Q Latest Update ADJ] 
,[Aug Q Latest Update ADJ] ,[Sep Q Latest Update ADJ] ,[Total  Q Latest Update ADJ] ,[Jul Q Latest Update] ,[Aug Q Latest Update] ,[Sep Q Latest Update] 
,[Total  Q Latest Update] ,[Jul MB] ,[Aug MB] ,[Sep MB] ,[Total  MB] ,[Jul Delta MB] ,[Aug Delta MB] ,[Sep Delta MB] ,[Delta Delta MB] 
,[Total  Prev Qtr] ,[Total  Delta Prev Qtr] ,[Total  Current Qtr] ,[Delta Current Qtr] ,[Jul F2] ,[Aug F2] ,[Sep F2] ,[Total  F2] ,[Jul Delta F2] ,[Aug Delta F2] ,[Sep Delta F2] ,[Delta F2] 
)
) as unpvt
)b  inner join  dbo.dim_entp_fss_project_v c
                on -- b.[Project No.]=c.[Project_No] and
                 trim(b.[Project Title])=trim(c.[Project_Title])
	inner join dbo. dim_ent_data_sub_class_v d on b.datasubclass=d.data_sub_class_name and d.data_class_name='Amount'		
 	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

	end

if (month(@reportingperiod_grossprofit) between 10 and 12)

begin 
       
   insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
 
select 
c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'Gross Profit' as [Data Source],
null as [New/ CO],null as [JV/Non-JV],[BL/PW],[External Product Line],[Customer],null as [Seq No],null as [Sub Title],null as [Caclulation],
null as [Category],null as [Facility],null as [Commentary],@reportingperiod_grossprofit as TransactionDate,'Q4' as [Quarter],
case when datasubclass_up in ( 'Oct Q Latest Update HYP','Oct Q Latest Update ADJ','Oct Q Latest Update','Oct MB','Oct F2') then 10
     when datasubclass_up in ( 'Nov Q Latest Update HYP','Nov Q Latest Update ADJ','Nov Q Latest Update','Nov MB','Nov F2')then 11
	 when datasubclass_up in ( 'Dec Q Latest Update HYP','Dec Q Latest Update ADJ','Dec Q Latest Update','Dec MB','Dec F2') then 12 else 0 end as month
,amount,getdate() as created_date_time 
from
(
select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer],amount,datasubclass_up,
case when datasubclass_up in ('Oct Q Latest Update HYP','Nov Q Latest Update HYP','Dec Q Latest Update HYP') then 'Curr Qtr Update HYP'
	 when datasubclass_up in ('Oct Q Latest Update ADJ','Nov Q Latest Update ADJ','Dec Q Latest Update ADJ') then 'Curr Qtr Update ADJ'
	 when datasubclass_up in ('Oct Q Latest Update','Nov Q Latest Update','Dec Q Latest Update') then 'Curr Qtr Update'
	 when datasubclass_up in ('Oct MB','Nov MB','Dec MB') then 'MB Amount'
	 when datasubclass_up in ('Total  MB') then 'Total MB'
	 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
     when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
     when datasubclass_up in ('Oct F2','Nov F2','Dec F2') then 'F2 Amount'
     when datasubclass_up in ('Total  F2') then 'Total F2'	 
	else datasubclass_up end as datasubclass
from 
(select [#],[Business Line],[External Product Line_duplicate],[Project No.],[BL/PW],[External Product Line],[Project Title],[Customer]
,isnull([Oct Q Latest Update HYP],'')  as [Oct Q Latest Update HYP]
,isnull([Nov Q Latest Update HYP],'')  as [Nov Q Latest Update HYP]
,isnull([Dec Q Latest Update HYP],'')  as [Dec Q Latest Update HYP]
,isnull([Total  Q Latest Update HYP],'')  as [Total  Q Latest Update HYP]
,isnull([Oct Q Latest Update ADJ],'')  as [Oct Q Latest Update ADJ]
,isnull([Nov Q Latest Update ADJ],'')  as [Nov Q Latest Update ADJ]
,isnull([Dec Q Latest Update ADJ],'')  as [Dec Q Latest Update ADJ]
,isnull([Total  Q Latest Update ADJ],'')  as [Total  Q Latest Update ADJ]
,isnull([Oct Q Latest Update],'')  as [Oct Q Latest Update]
,isnull([Nov Q Latest Update],'')  as [Nov Q Latest Update]
,isnull([Dec Q Latest Update],'')  as [Dec Q Latest Update]
,isnull([Total  Q Latest Update],'')  as [Total  Q Latest Update]
,isnull([Oct MB],'')  as [Oct MB]
,isnull([Nov MB],'')  as [Nov MB]
,isnull([Dec MB],'')  as [Dec MB]
,isnull([Total  MB],'')  as [Total  MB]
,isnull([Oct Delta MB],'')  as [Oct Delta MB]
,isnull([Nov Delta MB],'')  as [Nov Delta MB]
,isnull([Dec Delta MB],'')  as [Dec Delta MB]
,isnull([Delta Delta MB],'')  as [Delta Delta MB]
,isnull([Total  Prev Qtr],'')  as [Total  Prev Qtr]
,isnull([Total  Delta Prev Qtr],'')  as [Total  Delta Prev Qtr]
,isnull([Total  Current Qtr],'')  as [Total  Current Qtr]
,isnull([Delta Current Qtr],'')  as [Delta Current Qtr]
,isnull([Oct F2],'')  as [Oct F2]
,isnull([Nov F2],'')  as [Nov F2]
,isnull([Dec F2],'')  as [Dec F2]
,isnull([Total  F2],'')  as [Total  F2]
,isnull([Oct Delta F2],'')  as [Oct Delta F2]
,isnull([Nov Delta F2],'')  as [Nov Delta F2]
,isnull([Dec Delta F2],'')  as [Dec Delta F2]
,isnull([Delta F2],'')  as [Delta F2]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_gross_profit_v]
WHERE isnull([Project Title],'')<>'' and --isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
)a
unpivot(
amount for datasubclass_up in 
(
[Oct Q Latest Update HYP] ,[Nov Q Latest Update HYP] ,[Dec Q Latest Update HYP] ,[Total  Q Latest Update HYP] ,[Oct Q Latest Update ADJ] 
,[Nov Q Latest Update ADJ] ,[Dec Q Latest Update ADJ] ,[Total  Q Latest Update ADJ] ,[Oct Q Latest Update] ,[Nov Q Latest Update] ,[Dec Q Latest Update] 
,[Total  Q Latest Update] ,[Oct MB] ,[Nov MB] ,[Dec MB] ,[Total  MB] ,[Oct Delta MB] ,[Nov Delta MB] ,[Dec Delta MB] ,[Delta Delta MB] 
,[Total  Prev Qtr] ,[Total  Delta Prev Qtr] ,[Total  Current Qtr] ,[Delta Current Qtr] ,[Oct F2] ,[Nov F2] ,[Dec F2] ,[Total  F2] ,[Oct Delta F2] ,[Nov Delta F2] ,[Dec Delta F2] ,[Delta F2] 
)
) as unpvt
)b  inner join  dbo.dim_entp_fss_project_v c
                on --b.[Project No.]=c.[Project_No] and 
                trim(b.[Project Title])=trim(c.[Project_Title])
	inner join dbo. dim_ent_data_sub_class_v d  on b.datasubclass=d.data_sub_class_name and d.data_class_name='Amount'	
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

end


 END