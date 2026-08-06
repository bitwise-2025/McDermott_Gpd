CREATE PROC [dbo].[usp_fact_fss_doebreakdown_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

  declare @reportingperiod_DOE_Breakdown date
		if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
			BEGIN
				set @Errormessage='Invalid Month Range'
				select @Errormessage
			End
		set @reportingperiod_DOE_Breakdown =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='DOE Breakdown')
		select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_DOE_Breakdown_v

if (month(@reportingperiod_DOE_Breakdown) between 1 and 3)

 begin

 insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
	'DOE Breakdown' AS [Data Source],null as [New/ CO],null as [JV/Non-JV],NULL AS BLPW,null as [External Product Line],null as [Customer],
	[Seq No],[Sub Title],NULL AS [Calculation],[Bl Category] AS [Category],[Facility],NULL AS [Commentary],
	@reportingperiod_DOE_Breakdown AS TransactionDate,
	'Q1' AS [Quarter],
	
	CASE 

	WHEN datasubclass_up IN ('Jan Gross DOE Latest Update','Jan Recovery Latest Update','Jan Gross DOE MB','Jan Recovery MB','Jan Gross DOE F2','Jan Recovery F2',
	'Jan Latest Update Total Activity','Jan MB Total Activity','Jan F2 Total Activity') THEN 1

	WHEN datasubclass_up IN ('Feb Gross DOE Latest Update','Feb Recovery Latest Update','Feb Gross DOE MB','Feb Recovery MB','Feb Gross DOE F2','Feb Recovery F2',
	'Feb Latest Update Total Activity','Feb MB Total Activity','Feb F2 Total Activity') THEN 2

	WHEN datasubclass_up IN ('Mar Gross DOE Latest Update','Mar Recovery Latest Update','Mar Gross DOE MB','Mar Recovery MB','Mar Gross DOE F2','Mar Recovery F2',
	'Mar Latest Update Total Activity','Mar MB Total Activity','Mar F2 Total Activity') THEN 3 

	ELSE 0 END AS month,--data_sub_class_name,
	amount,getdate() AS create_date_time
FROM (
SELECT [Business Line],[Seq No],[Sub Title],[Bl Category],[Facility],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jan Gross DOE Latest Update','Feb Gross DOE Latest Update','Mar Gross DOE Latest Update') then 'Gross DOE Latest Update'
						 when datasubclass_up in ('Jan Recovery Latest Update','Feb Recovery Latest Update','Mar Recovery Latest Update') then 'Recovery Latest Update'
						 when datasubclass_up in ('Jan Gross DOE MB','Feb Gross DOE MB','Mar Gross DOE MB') then 'Gross DOE MB'
						 when datasubclass_up in ('Jan Recovery MB','Feb Recovery MB','Mar Recovery MB') then 'Recovery MB'
						 when datasubclass_up in ('Jan Gross DOE F2','Feb Gross DOE F2','Mar Gross DOE F2') then 'Gross DOE F2'
						 when datasubclass_up in ('Jan Recovery F2','Feb Recovery F2','Mar Recovery F2') then 'Recovery F2'
						 when datasubclass_up in ('Jan Latest Update Total Activity','Feb Latest Update Total Activity','Mar Latest Update Total Activity') then 'Latest Update Total Activity'
						 when datasubclass_up in ('Std Latest Update Total Activity') then 'Std Latest Update Total Activity'
						 when datasubclass_up in ('Actual Productivity (PF) QTD') then 'Actual Productivity (PF) QTD'
						 when datasubclass_up in ('Jan MB Total Activity','Feb MB Total Activity','Mar MB Total Activity') then 'MB Total Activity'
						 when datasubclass_up in ('Std MB Total Activity') then 'Std MB Total Activity'
						 when datasubclass_up in ('Jan F2 Total Activity','Feb F2 Total Activity','Mar F2 Total Activity') then 'F2 Total Activity'
						 when datasubclass_up in ('Std F2 Total Activity') then 'Std F2 Total Activity'
						 else datasubclass_up 
						 end as datasubclass

	
	FROM (
select 
[Business Line]
,[Seq No]
,[Sub Title]
,[Bl Category]
,[Facility]
,isnull([Jan Gross DOE Latest Update],'') as [Jan Gross DOE Latest Update]
,isnull([Feb Gross DOE Latest Update],'') as [Feb Gross DOE Latest Update]
,isnull([Mar Gross DOE Latest Update],'') as [Mar Gross DOE Latest Update]
,isnull([Total  Gross DOE Latest Update],'') as [Total  Gross DOE Latest Update]
,isnull([Jan Recovery Latest Update],'') as [Jan Recovery Latest Update]
,isnull([Feb Recovery Latest Update],'') as [Feb Recovery Latest Update]
,isnull([Mar Recovery Latest Update],'') as [Mar Recovery Latest Update]
,isnull([Total  Recovery Latest Update],'') as [Total  Recovery Latest Update]
,isnull([Jan Net DOE  Latest Update],'') as [Jan Net DOE  Latest Update]
,isnull([Feb Net DOE  Latest Update],'') as [Feb Net DOE  Latest Update]
,isnull([Mar Net DOE  Latest Update],'') as [Mar Net DOE  Latest Update]
,isnull([Total Net DOE  Latest Update],'') as [Total Net DOE  Latest Update]
,isnull([Jan Gross DOE MB],'') as [Jan Gross DOE MB]
,isnull([Feb Gross DOE MB],'') as [Feb Gross DOE MB]
,isnull([Mar Gross DOE MB],'') as [Mar Gross DOE MB]
,isnull([Gross Gross DOE MB],'') as [Gross Gross DOE MB]
,isnull([Jan Recovery MB],'') as [Jan Recovery MB]
,isnull([Feb Recovery MB],'') as [Feb Recovery MB]
,isnull([Mar Recovery MB],'') as [Mar Recovery MB]
,isnull([Recovery Recovery MB],'') as [Recovery Recovery MB]
,isnull([Jan Net DOE  MB],'') as [Jan Net DOE  MB]
,isnull([Feb Net DOE  MB],'') as [Feb Net DOE  MB]
,isnull([Mar Net DOE  MB],'') as [Mar Net DOE  MB]
,isnull([Total Net DOE  MB],'') as [Total Net DOE  MB]
,isnull([Jan Gross DOE Delta MB],'') as [Jan Gross DOE Delta MB]
,isnull([Feb Gross DOE Delta MB],'') as [Feb Gross DOE Delta MB]
,isnull([Mar Gross DOE Delta MB],'') as [Mar Gross DOE Delta MB]
,isnull([Total Gross DOE Delta MB],'') as [Total Gross DOE Delta MB]
,isnull([Jan Recovery Delta MB],'') as [Jan Recovery Delta MB]
,isnull([Feb Recovery Delta MB],'') as [Feb Recovery Delta MB]
,isnull([Mar Recovery Delta MB],'') as [Mar Recovery Delta MB]
,isnull([Total Recovery Delta MB],'') as [Total Recovery Delta MB]
,isnull([Jan Net DOE  Delta MB],'') as [Jan Net DOE  Delta MB]
,isnull([Feb Net DOE  Delta MB],'') as [Feb Net DOE  Delta MB]
,isnull([Mar Net DOE  Delta MB],'') as [Mar Net DOE  Delta MB]
,isnull([Total Net DOE  Delta MB],'') as [Total Net DOE  Delta MB]
,isnull([Jan Gross DOE F2],'') as [Jan Gross DOE F2]
,isnull([Feb Gross DOE F2],'') as [Feb Gross DOE F2]
,isnull([Mar Gross DOE F2],'') as [Mar Gross DOE F2]
,isnull([Gross Gross DOE F2],'') as [Gross Gross DOE F2]
,isnull([Jan Recovery F2],'') as [Jan Recovery F2]
,isnull([Feb Recovery F2],'') as [Feb Recovery F2]
,isnull([Mar Recovery F2],'') as [Mar Recovery F2]
,isnull([Recovery Recovery F2],'') as [Recovery Recovery F2]
,isnull([Jan Net DOE  F2],'') as [Jan Net DOE  F2]
,isnull([Feb Net DOE  F2],'') as [Feb Net DOE  F2]
,isnull([Mar Net DOE  F2],'') as [Mar Net DOE  F2]
,isnull([Total Net DOE  F2],'') as [Total Net DOE  F2]
,isnull([Jan Gross DOE Delta F2],'') as [Jan Gross DOE Delta F2]
,isnull([Feb Gross DOE Delta F2],'') as [Feb Gross DOE Delta F2]
,isnull([Mar Gross DOE Delta F2],'') as [Mar Gross DOE Delta F2]
,isnull([Total Gross DOE Delta F2],'') as [Total Gross DOE Delta F2]
,isnull([Jan Recovery Delta F2],'') as [Jan Recovery Delta F2]
,isnull([Feb Recovery Delta F2],'') as [Feb Recovery Delta F2]
,isnull([Mar Recovery Delta F2],'') as [Mar Recovery Delta F2]
,isnull([Total Recovery Delta F2],'') as [Total Recovery Delta F2]
,isnull([Jan Net DOE  Delta F2],'') as [Jan Net DOE  Delta F2]
,isnull([Feb Net DOE  Delta F2],'') as [Feb Net DOE  Delta F2]
,isnull([Mar Net DOE  Delta F2],'') as [Mar Net DOE  Delta F2]
,isnull([Total Net DOE  Delta F2],'') as [Total Net DOE  Delta F2]
,isnull([Jan Latest Update Total Activity],'') as [Jan Latest Update Total Activity]
,isnull([Feb Latest Update Total Activity],'') as [Feb Latest Update Total Activity]
,isnull([Mar Latest Update Total Activity],'') as [Mar Latest Update Total Activity]
,isnull([Total Latest Update Total Activity],'') as [Total Latest Update Total Activity]
,isnull([Std Latest Update Total Activity],'') as [Std Latest Update Total Activity]
,isnull([%Utlz Latest Update Total Activity],'') as [%Utlz Latest Update Total Activity]
,isnull([Actual Productivity (PF) QTD],'') as [Actual Productivity (PF) QTD]
,isnull([Jan MB Total Activity],'') as [Jan MB Total Activity]
,isnull([Feb MB Total Activity],'') as [Feb MB Total Activity]
,isnull([Mar MB Total Activity],'') as [Mar MB Total Activity]
,isnull([Total MB Total Activity],'') as [Total MB Total Activity]
,isnull([Std MB Total Activity],'') as [Std MB Total Activity]
,isnull([%Utlz MB Total Activity],'') as [%Utlz MB Total Activity]
,isnull([Jan Delta MB Total Activity],'') as [Jan Delta MB Total Activity]
,isnull([Feb Delta MB Total Activity],'') as [Feb Delta MB Total Activity]
,isnull([Mar Delta MB Total Activity],'') as [Mar Delta MB Total Activity]
,isnull([Total Delta MB Total Activity],'') as [Total Delta MB Total Activity]
,isnull([Std Delta MB Total Activity],'') as [Std Delta MB Total Activity]
,isnull([%Utlz Delta MB Total Activity],'') as [%Utlz Delta MB Total Activity]
,isnull([Jan F2 Total Activity],'') as [Jan F2 Total Activity]
,isnull([Feb F2 Total Activity],'') as [Feb F2 Total Activity]
,isnull([Mar F2 Total Activity],'') as [Mar F2 Total Activity]
,isnull([Total F2 Total Activity],'') as [Total F2 Total Activity]
,isnull([Std F2 Total Activity],'') as [Std F2 Total Activity]
,isnull([%Utlz F2 Total Activity],'') as [%Utlz F2 Total Activity]
,isnull([JanDelta F2 Total Activity],'') as [JanDelta F2 Total Activity]
,isnull([FebDelta F2 Total Activity],'') as [FebDelta F2 Total Activity]
,isnull([MarDelta F2 Total Activity],'') as [MarDelta F2 Total Activity]
,isnull([Total Delta F2 Total Activity],'') as [Total Delta F2 Total Activity]
,isnull([StdDelta F2 Total Activity],'') as [StdDelta F2 Total Activity]
,isnull([%UtlzDelta F2 Total Activity],'') as [%UtlzDelta F2 Total Activity]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from  fss.stage_fss_DOE_Breakdown_v where --facility like '%Altamira%' and 
isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Jan Gross DOE Latest Update],[Feb Gross DOE Latest Update],[Mar Gross DOE Latest Update],[Total  Gross DOE Latest Update],[Jan Recovery Latest Update],[Feb Recovery Latest Update],	
[Mar Recovery Latest Update],[Total  Recovery Latest Update],[Jan Net DOE  Latest Update],[Feb Net DOE  Latest Update],	[Mar Net DOE  Latest Update],[Total Net DOE  Latest Update],
[Jan Gross DOE MB],[Feb Gross DOE MB],[Mar Gross DOE MB],[Gross Gross DOE MB],[Jan Recovery MB],[Feb Recovery MB],[Mar Recovery MB],[Recovery Recovery MB],
[Jan Net DOE  MB],[Feb Net DOE  MB],[Mar Net DOE  MB],[Total Net DOE  MB],[Jan Gross DOE Delta MB],[Feb Gross DOE Delta MB],[Mar Gross DOE Delta MB],[Total Gross DOE Delta MB],
[Jan Recovery Delta MB],[Feb Recovery Delta MB],[Mar Recovery Delta MB],[Total Recovery Delta MB],[Jan Net DOE  Delta MB],[Feb Net DOE  Delta MB],[Mar Net DOE  Delta MB],[Total Net DOE  Delta MB],
[Jan Gross DOE F2],[Feb Gross DOE F2],[Mar Gross DOE F2],[Gross Gross DOE F2],[Jan Recovery F2],[Feb Recovery F2],[Mar Recovery F2],[Recovery Recovery F2],[Jan Net DOE  F2],[Feb Net DOE  F2],
[Mar Net DOE  F2],[Total Net DOE  F2],[Jan Gross DOE Delta F2],[Feb Gross DOE Delta F2],[Mar Gross DOE Delta F2],[Total Gross DOE Delta F2],[Jan Recovery Delta F2],[Feb Recovery Delta F2],
[Mar Recovery Delta F2],[Total Recovery Delta F2],[Jan Net DOE  Delta F2],[Feb Net DOE  Delta F2],[Mar Net DOE  Delta F2],[Total Net DOE  Delta F2],[Jan Latest Update Total Activity],[Feb Latest Update Total Activity],	
[Mar Latest Update Total Activity],[Total Latest Update Total Activity],[Std Latest Update Total Activity],[%Utlz Latest Update Total Activity],[Actual Productivity (PF) QTD],[Jan MB Total Activity],
[Feb MB Total Activity],[Mar MB Total Activity],[Total MB Total Activity],[Std MB Total Activity],[%Utlz MB Total Activity],[Jan Delta MB Total Activity],[Feb Delta MB Total Activity],[Mar Delta MB Total Activity],	
[Total Delta MB Total Activity],[Std Delta MB Total Activity],[%Utlz Delta MB Total Activity],[Jan F2 Total Activity],[Feb F2 Total Activity],[Mar F2 Total Activity],
[Total F2 Total Activity],[Std F2 Total Activity],[%Utlz F2 Total Activity],[JanDelta F2 Total Activity],[FebDelta F2 Total Activity],[MarDelta F2 Total Activity],	
[Total Delta F2 Total Activity],[StdDelta F2 Total Activity],[%UtlzDelta F2 Total Activity])
		) AS unpvt
		) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Gross DOE Latest Update','Recovery Latest Update','Gross DOE MB','Recovery MB',
'Gross DOE F2','Recovery F2','Latest Update Total Activity','Std Latest Update Total Activity','Actual Productivity (PF) QTD','MB Total Activity',
'Std MB Total Activity','F2 Total Activity','Std F2 Total Activity')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'
	  
 end 

 if (month(@reportingperiod_DOE_Breakdown) between 4 and 6)

 begin
 
 insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
	'DOE Breakdown' AS [Data Source],null as [New/ CO],null as [JV/Non-JV],NULL AS BLPW,null as [External Product Line],null as [Customer],
	[Seq No],[Sub Title],NULL AS [Calculation],[Bl Category] AS [Category],[Facility],NULL AS [Commentary],
	@reportingperiod_DOE_Breakdown AS TransactionDate,
	'Q2' AS [Quarter],
	
	CASE 

	WHEN datasubclass_up IN ('Apr Gross DOE Latest Update','Apr Recovery Latest Update','Apr Gross DOE MB','Apr Recovery MB','Apr Gross DOE F2','Apr Recovery F2',
	'Apr Latest Update Total Activity','Apr MB Total Activity','Apr F2 Total Activity') THEN 4

	WHEN datasubclass_up IN ('May Gross DOE Latest Update','May Recovery Latest Update','May Gross DOE MB','May Recovery MB','May Gross DOE F2','May Recovery F2',
	'May Latest Update Total Activity','May MB Total Activity','May F2 Total Activity') THEN 5

	WHEN datasubclass_up IN ('Jun Gross DOE Latest Update','Jun Recovery Latest Update','Jun Gross DOE MB','Jun Recovery MB','Jun Gross DOE F2','Jun Recovery F2',
	'Jun Latest Update Total Activity','Jun MB Total Activity','Jun F2 Total Activity') THEN 6 

	ELSE 0 END AS month,--data_sub_class_name,
	amount,getdate() AS create_date_time
FROM (
SELECT [Business Line],[Seq No],[Sub Title],[Bl Category],[Facility],amount,datasubclass_up
				   ,case when datasubclass_up in ('Apr Gross DOE Latest Update','May Gross DOE Latest Update','Jun Gross DOE Latest Update') then 'Gross DOE Latest Update'
						 when datasubclass_up in ('Apr Recovery Latest Update','May Recovery Latest Update','Jun Recovery Latest Update') then 'Recovery Latest Update'
						 when datasubclass_up in ('Apr Gross DOE MB','May Gross DOE MB','Jun Gross DOE MB') then 'Gross DOE MB'
						 when datasubclass_up in ('Apr Recovery MB','May Recovery MB','Jun Recovery MB') then 'Recovery MB'
						 when datasubclass_up in ('Apr Gross DOE F2','May Gross DOE F2','Jun Gross DOE F2') then 'Gross DOE F2'
						 when datasubclass_up in ('Apr Recovery F2','May Recovery F2','Jun Recovery F2') then 'Recovery F2'
						 when datasubclass_up in ('Apr Latest Update Total Activity','May Latest Update Total Activity','Jun Latest Update Total Activity') then 'Latest Update Total Activity'
						 when datasubclass_up in ('Std Latest Update Total Activity') then 'Std Latest Update Total Activity'
						 when datasubclass_up in ('Actual Productivity (PF) QTD') then 'Actual Productivity (PF) QTD'
						 when datasubclass_up in ('Apr MB Total Activity','May MB Total Activity','Jun MB Total Activity') then 'MB Total Activity'
						 when datasubclass_up in ('Std MB Total Activity') then 'Std MB Total Activity'
						 when datasubclass_up in ('Apr F2 Total Activity','May F2 Total Activity','Jun F2 Total Activity') then 'F2 Total Activity'
						 when datasubclass_up in ('Std F2 Total Activity') then 'Std F2 Total Activity'
						 else datasubclass_up 
						 end as datasubclass

	
	FROM (
select 
[Business Line]
,[Seq No]
,[Sub Title]
,[Bl Category]
,[Facility]
,isnull([Apr Gross DOE Latest Update],'') as [Apr Gross DOE Latest Update]
,isnull([May Gross DOE Latest Update],'') as [May Gross DOE Latest Update]
,isnull([Jun Gross DOE Latest Update],'') as [Jun Gross DOE Latest Update]
,isnull([Total  Gross DOE Latest Update],'') as [Total  Gross DOE Latest Update]
,isnull([Apr Recovery Latest Update],'') as [Apr Recovery Latest Update]
,isnull([May Recovery Latest Update],'') as [May Recovery Latest Update]
,isnull([Jun Recovery Latest Update],'') as [Jun Recovery Latest Update]
,isnull([Total  Recovery Latest Update],'') as [Total  Recovery Latest Update]
,isnull([Apr Net DOE  Latest Update],'') as [Apr Net DOE  Latest Update]
,isnull([May Net DOE  Latest Update],'') as [May Net DOE  Latest Update]
,isnull([Jun Net DOE  Latest Update],'') as [Jun Net DOE  Latest Update]
,isnull([Total Net DOE  Latest Update],'') as [Total Net DOE  Latest Update]
,isnull([Apr Gross DOE MB],'') as [Apr Gross DOE MB]
,isnull([May Gross DOE MB],'') as [May Gross DOE MB]
,isnull([Jun Gross DOE MB],'') as [Jun Gross DOE MB]
,isnull([Gross Gross DOE MB],'') as [Gross Gross DOE MB]
,isnull([Apr Recovery MB],'') as [Apr Recovery MB]
,isnull([May Recovery MB],'') as [May Recovery MB]
,isnull([Jun Recovery MB],'') as [Jun Recovery MB]
,isnull([Recovery Recovery MB],'') as [Recovery Recovery MB]
,isnull([Apr Net DOE  MB],'') as [Apr Net DOE  MB]
,isnull([May Net DOE  MB],'') as [May Net DOE  MB]
,isnull([Jun Net DOE  MB],'') as [Jun Net DOE  MB]
,isnull([Total Net DOE  MB],'') as [Total Net DOE  MB]
,isnull([Apr Gross DOE Delta MB],'') as [Apr Gross DOE Delta MB]
,isnull([May Gross DOE Delta MB],'') as [May Gross DOE Delta MB]
,isnull([Jun Gross DOE Delta MB],'') as [Jun Gross DOE Delta MB]
,isnull([Total Gross DOE Delta MB],'') as [Total Gross DOE Delta MB]
,isnull([Apr Recovery Delta MB],'') as [Apr Recovery Delta MB]
,isnull([May Recovery Delta MB],'') as [May Recovery Delta MB]
,isnull([Jun Recovery Delta MB],'') as [Jun Recovery Delta MB]
,isnull([Total Recovery Delta MB],'') as [Total Recovery Delta MB]
,isnull([Apr Net DOE  Delta MB],'') as [Apr Net DOE  Delta MB]
,isnull([May Net DOE  Delta MB],'') as [May Net DOE  Delta MB]
,isnull([Jun Net DOE  Delta MB],'') as [Jun Net DOE  Delta MB]
,isnull([Total Net DOE  Delta MB],'') as [Total Net DOE  Delta MB]
,isnull([Apr Gross DOE F2],'') as [Apr Gross DOE F2]
,isnull([May Gross DOE F2],'') as [May Gross DOE F2]
,isnull([Jun Gross DOE F2],'') as [Jun Gross DOE F2]
,isnull([Gross Gross DOE F2],'') as [Gross Gross DOE F2]
,isnull([Apr Recovery F2],'') as [Apr Recovery F2]
,isnull([May Recovery F2],'') as [May Recovery F2]
,isnull([Jun Recovery F2],'') as [Jun Recovery F2]
,isnull([Recovery Recovery F2],'') as [Recovery Recovery F2]
,isnull([Apr Net DOE  F2],'') as [Apr Net DOE  F2]
,isnull([May Net DOE  F2],'') as [May Net DOE  F2]
,isnull([Jun Net DOE  F2],'') as [Jun Net DOE  F2]
,isnull([Total Net DOE  F2],'') as [Total Net DOE  F2]
,isnull([Apr Gross DOE Delta F2],'') as [Apr Gross DOE Delta F2]
,isnull([May Gross DOE Delta F2],'') as [May Gross DOE Delta F2]
,isnull([Jun Gross DOE Delta F2],'') as [Jun Gross DOE Delta F2]
,isnull([Total Gross DOE Delta F2],'') as [Total Gross DOE Delta F2]
,isnull([Apr Recovery Delta F2],'') as [Apr Recovery Delta F2]
,isnull([May Recovery Delta F2],'') as [May Recovery Delta F2]
,isnull([Jun Recovery Delta F2],'') as [Jun Recovery Delta F2]
,isnull([Total Recovery Delta F2],'') as [Total Recovery Delta F2]
,isnull([Apr Net DOE  Delta F2],'') as [Apr Net DOE  Delta F2]
,isnull([May Net DOE  Delta F2],'') as [May Net DOE  Delta F2]
,isnull([Jun Net DOE  Delta F2],'') as [Jun Net DOE  Delta F2]
,isnull([Total Net DOE  Delta F2],'') as [Total Net DOE  Delta F2]
,isnull([Apr Latest Update Total Activity],'') as [Apr Latest Update Total Activity]
,isnull([May Latest Update Total Activity],'') as [May Latest Update Total Activity]
,isnull([Jun Latest Update Total Activity],'') as [Jun Latest Update Total Activity]
,isnull([Total Latest Update Total Activity],'') as [Total Latest Update Total Activity]
,isnull([Std Latest Update Total Activity],'') as [Std Latest Update Total Activity]
,isnull([%Utlz Latest Update Total Activity],'') as [%Utlz Latest Update Total Activity]
,isnull([Actual Productivity (PF) QTD],'') as [Actual Productivity (PF) QTD]
,isnull([Apr MB Total Activity],'') as [Apr MB Total Activity]
,isnull([May MB Total Activity],'') as [May MB Total Activity]
,isnull([Jun MB Total Activity],'') as [Jun MB Total Activity]
,isnull([Total MB Total Activity],'') as [Total MB Total Activity]
,isnull([Std MB Total Activity],'') as [Std MB Total Activity]
,isnull([%Utlz MB Total Activity],'') as [%Utlz MB Total Activity]
,isnull([Apr Delta MB Total Activity],'') as [Apr Delta MB Total Activity]
,isnull([May Delta MB Total Activity],'') as [May Delta MB Total Activity]
,isnull([Jun Delta MB Total Activity],'') as [Jun Delta MB Total Activity]
,isnull([Total Delta MB Total Activity],'') as [Total Delta MB Total Activity]
,isnull([Std Delta MB Total Activity],'') as [Std Delta MB Total Activity]
,isnull([%Utlz Delta MB Total Activity],'') as [%Utlz Delta MB Total Activity]
,isnull([Apr F2 Total Activity],'') as [Apr F2 Total Activity]
,isnull([May F2 Total Activity],'') as [May F2 Total Activity]
,isnull([Jun F2 Total Activity],'') as [Jun F2 Total Activity]
,isnull([Total F2 Total Activity],'') as [Total F2 Total Activity]
,isnull([Std F2 Total Activity],'') as [Std F2 Total Activity]
,isnull([%Utlz F2 Total Activity],'') as [%Utlz F2 Total Activity]
,isnull([AprDelta F2 Total Activity],'') as [AprDelta F2 Total Activity]
,isnull([MayDelta F2 Total Activity],'') as [MayDelta F2 Total Activity]
,isnull([JunDelta F2 Total Activity],'') as [JunDelta F2 Total Activity]
,isnull([Total Delta F2 Total Activity],'') as [Total Delta F2 Total Activity]
,isnull([StdDelta F2 Total Activity],'') as [StdDelta F2 Total Activity]
,isnull([%UtlzDelta F2 Total Activity],'') as [%UtlzDelta F2 Total Activity]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from  fss.stage_fss_DOE_Breakdown_v where --facility like '%Altamira%' and 
isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Apr Gross DOE Latest Update],[May Gross DOE Latest Update],[Jun Gross DOE Latest Update],[Total  Gross DOE Latest Update],[Apr Recovery Latest Update],[May Recovery Latest Update],	
[Jun Recovery Latest Update],[Total  Recovery Latest Update],[Apr Net DOE  Latest Update],[May Net DOE  Latest Update],	[Jun Net DOE  Latest Update],[Total Net DOE  Latest Update],
[Apr Gross DOE MB],[May Gross DOE MB],[Jun Gross DOE MB],[Gross Gross DOE MB],[Apr Recovery MB],[May Recovery MB],[Jun Recovery MB],[Recovery Recovery MB],
[Apr Net DOE  MB],[May Net DOE  MB],[Jun Net DOE  MB],[Total Net DOE  MB],[Apr Gross DOE Delta MB],[May Gross DOE Delta MB],[Jun Gross DOE Delta MB],[Total Gross DOE Delta MB],
[Apr Recovery Delta MB],[May Recovery Delta MB],[Jun Recovery Delta MB],[Total Recovery Delta MB],[Apr Net DOE  Delta MB],[May Net DOE  Delta MB],[Jun Net DOE  Delta MB],[Total Net DOE  Delta MB],
[Apr Gross DOE F2],[May Gross DOE F2],[Jun Gross DOE F2],[Gross Gross DOE F2],[Apr Recovery F2],[May Recovery F2],[Jun Recovery F2],[Recovery Recovery F2],[Apr Net DOE  F2],[May Net DOE  F2],
[Jun Net DOE  F2],[Total Net DOE  F2],[Apr Gross DOE Delta F2],[May Gross DOE Delta F2],[Jun Gross DOE Delta F2],[Total Gross DOE Delta F2],[Apr Recovery Delta F2],[May Recovery Delta F2],
[Jun Recovery Delta F2],[Total Recovery Delta F2],[Apr Net DOE  Delta F2],[May Net DOE  Delta F2],[Jun Net DOE  Delta F2],[Total Net DOE  Delta F2],[Apr Latest Update Total Activity],[May Latest Update Total Activity],	
[Jun Latest Update Total Activity],[Total Latest Update Total Activity],[Std Latest Update Total Activity],[%Utlz Latest Update Total Activity],[Actual Productivity (PF) QTD],[Apr MB Total Activity],
[May MB Total Activity],[Jun MB Total Activity],[Total MB Total Activity],[Std MB Total Activity],[%Utlz MB Total Activity],[Apr Delta MB Total Activity],[May Delta MB Total Activity],[Jun Delta MB Total Activity],	
[Total Delta MB Total Activity],[Std Delta MB Total Activity],[%Utlz Delta MB Total Activity],[Apr F2 Total Activity],[May F2 Total Activity],[Jun F2 Total Activity],
[Total F2 Total Activity],[Std F2 Total Activity],[%Utlz F2 Total Activity],[AprDelta F2 Total Activity],[MayDelta F2 Total Activity],[JunDelta F2 Total Activity],	
[Total Delta F2 Total Activity],[StdDelta F2 Total Activity],[%UtlzDelta F2 Total Activity])
		) AS unpvt
		) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Gross DOE Latest Update','Recovery Latest Update','Gross DOE MB','Recovery MB',
'Gross DOE F2','Recovery F2','Latest Update Total Activity','Std Latest Update Total Activity','Actual Productivity (PF) QTD','MB Total Activity',
'Std MB Total Activity','F2 Total Activity','Std F2 Total Activity')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'
	  
 end 

if (month(@reportingperiod_DOE_Breakdown) between 7 and 9)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
	'DOE Breakdown' AS [Data Source],null as [New/ CO],null as [JV/Non-JV],NULL AS BLPW,null as [External Product Line],null as [Customer],
	[Seq No],[Sub Title],NULL AS [Calculation],[Bl Category] AS [Category],[Facility],NULL AS [Commentary],
	@reportingperiod_DOE_Breakdown AS TransactionDate,
	'Q3' AS [Quarter],
	
	CASE 

	WHEN datasubclass_up IN ('Jul Gross DOE Latest Update','Jul Recovery Latest Update','Jul Gross DOE MB','Jul Recovery MB','Jul Gross DOE F2','Jul Recovery F2',
	'Jul Latest Update Total Activity','Jul MB Total Activity','Jul F2 Total Activity') THEN 7

	WHEN datasubclass_up IN ('Aug Gross DOE Latest Update','Aug Recovery Latest Update','Aug Gross DOE MB','Aug Recovery MB','Aug Gross DOE F2','Aug Recovery F2',
	'Aug Latest Update Total Activity','Aug MB Total Activity','Aug F2 Total Activity') THEN 8

	WHEN datasubclass_up IN ('Sep Gross DOE Latest Update','Sep Recovery Latest Update','Sep Gross DOE MB','Sep Recovery MB','Sep Gross DOE F2','Sep Recovery F2',
	'Sep Latest Update Total Activity','Sep MB Total Activity','Sep F2 Total Activity') THEN 9 

	ELSE 0 END AS month,--data_sub_class_name,
	amount,getdate() AS create_date_time
FROM (
SELECT [Business Line],[Seq No],[Sub Title],[Bl Category],[Facility],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jul Gross DOE Latest Update','Aug Gross DOE Latest Update','Sep Gross DOE Latest Update') then 'Gross DOE Latest Update'
						 when datasubclass_up in ('Jul Recovery Latest Update','Aug Recovery Latest Update','Sep Recovery Latest Update') then 'Recovery Latest Update'
						 when datasubclass_up in ('Jul Gross DOE MB','Aug Gross DOE MB','Sep Gross DOE MB') then 'Gross DOE MB'
						 when datasubclass_up in ('Jul Recovery MB','Aug Recovery MB','Sep Recovery MB') then 'Recovery MB'
						 when datasubclass_up in ('Jul Gross DOE F2','Aug Gross DOE F2','Sep Gross DOE F2') then 'Gross DOE F2'
						 when datasubclass_up in ('Jul Recovery F2','Aug Recovery F2','Sep Recovery F2') then 'Recovery F2'
						 when datasubclass_up in ('Jul Latest Update Total Activity','Aug Latest Update Total Activity','Sep Latest Update Total Activity') then 'Latest Update Total Activity'
						 when datasubclass_up in ('Std Latest Update Total Activity') then 'Std Latest Update Total Activity'
						 when datasubclass_up in ('Actual Productivity (PF) QTD') then 'Actual Productivity (PF) QTD'
						 when datasubclass_up in ('Jul MB Total Activity','Aug MB Total Activity','Sep MB Total Activity') then 'MB Total Activity'
						 when datasubclass_up in ('Std MB Total Activity') then 'Std MB Total Activity'
						 when datasubclass_up in ('Jul F2 Total Activity','Aug F2 Total Activity','Sep F2 Total Activity') then 'F2 Total Activity'
						 when datasubclass_up in ('Std F2 Total Activity') then 'Std F2 Total Activity'
						 else datasubclass_up 
						 end as datasubclass

	
	FROM (
select 
[Business Line]
,[Seq No]
,[Sub Title]
,[Bl Category]
,[Facility]
,isnull([Jul Gross DOE Latest Update],'') as [Jul Gross DOE Latest Update]
,isnull([Aug Gross DOE Latest Update],'') as [Aug Gross DOE Latest Update]
,isnull([Sep Gross DOE Latest Update],'') as [Sep Gross DOE Latest Update]
,isnull([Total  Gross DOE Latest Update],'') as [Total  Gross DOE Latest Update]
,isnull([Jul Recovery Latest Update],'') as [Jul Recovery Latest Update]
,isnull([Aug Recovery Latest Update],'') as [Aug Recovery Latest Update]
,isnull([Sep Recovery Latest Update],'') as [Sep Recovery Latest Update]
,isnull([Total  Recovery Latest Update],'') as [Total  Recovery Latest Update]
,isnull([Jul Net DOE  Latest Update],'') as [Jul Net DOE  Latest Update]
,isnull([Aug Net DOE  Latest Update],'') as [Aug Net DOE  Latest Update]
,isnull([Sep Net DOE  Latest Update],'') as [Sep Net DOE  Latest Update]
,isnull([Total Net DOE  Latest Update],'') as [Total Net DOE  Latest Update]
,isnull([Jul Gross DOE MB],'') as [Jul Gross DOE MB]
,isnull([Aug Gross DOE MB],'') as [Aug Gross DOE MB]
,isnull([Sep Gross DOE MB],'') as [Sep Gross DOE MB]
,isnull([Gross Gross DOE MB],'') as [Gross Gross DOE MB]
,isnull([Jul Recovery MB],'') as [Jul Recovery MB]
,isnull([Aug Recovery MB],'') as [Aug Recovery MB]
,isnull([Sep Recovery MB],'') as [Sep Recovery MB]
,isnull([Recovery Recovery MB],'') as [Recovery Recovery MB]
,isnull([Jul Net DOE  MB],'') as [Jul Net DOE  MB]
,isnull([Aug Net DOE  MB],'') as [Aug Net DOE  MB]
,isnull([Sep Net DOE  MB],'') as [Sep Net DOE  MB]
,isnull([Total Net DOE  MB],'') as [Total Net DOE  MB]
,isnull([Jul Gross DOE Delta MB],'') as [Jul Gross DOE Delta MB]
,isnull([Aug Gross DOE Delta MB],'') as [Aug Gross DOE Delta MB]
,isnull([Sep Gross DOE Delta MB],'') as [Sep Gross DOE Delta MB]
,isnull([Total Gross DOE Delta MB],'') as [Total Gross DOE Delta MB]
,isnull([Jul Recovery Delta MB],'') as [Jul Recovery Delta MB]
,isnull([Aug Recovery Delta MB],'') as [Aug Recovery Delta MB]
,isnull([Sep Recovery Delta MB],'') as [Sep Recovery Delta MB]
,isnull([Total Recovery Delta MB],'') as [Total Recovery Delta MB]
,isnull([Jul Net DOE  Delta MB],'') as [Jul Net DOE  Delta MB]
,isnull([Aug Net DOE  Delta MB],'') as [Aug Net DOE  Delta MB]
,isnull([Sep Net DOE  Delta MB],'') as [Sep Net DOE  Delta MB]
,isnull([Total Net DOE  Delta MB],'') as [Total Net DOE  Delta MB]
,isnull([Jul Gross DOE F2],'') as [Jul Gross DOE F2]
,isnull([Aug Gross DOE F2],'') as [Aug Gross DOE F2]
,isnull([Sep Gross DOE F2],'') as [Sep Gross DOE F2]
,isnull([Gross Gross DOE F2],'') as [Gross Gross DOE F2]
,isnull([Jul Recovery F2],'') as [Jul Recovery F2]
,isnull([Aug Recovery F2],'') as [Aug Recovery F2]
,isnull([Sep Recovery F2],'') as [Sep Recovery F2]
,isnull([Recovery Recovery F2],'') as [Recovery Recovery F2]
,isnull([Jul Net DOE  F2],'') as [Jul Net DOE  F2]
,isnull([Aug Net DOE  F2],'') as [Aug Net DOE  F2]
,isnull([Sep Net DOE  F2],'') as [Sep Net DOE  F2]
,isnull([Total Net DOE  F2],'') as [Total Net DOE  F2]
,isnull([Jul Gross DOE Delta F2],'') as [Jul Gross DOE Delta F2]
,isnull([Aug Gross DOE Delta F2],'') as [Aug Gross DOE Delta F2]
,isnull([Sep Gross DOE Delta F2],'') as [Sep Gross DOE Delta F2]
,isnull([Total Gross DOE Delta F2],'') as [Total Gross DOE Delta F2]
,isnull([Jul Recovery Delta F2],'') as [Jul Recovery Delta F2]
,isnull([Aug Recovery Delta F2],'') as [Aug Recovery Delta F2]
,isnull([Sep Recovery Delta F2],'') as [Sep Recovery Delta F2]
,isnull([Total Recovery Delta F2],'') as [Total Recovery Delta F2]
,isnull([Jul Net DOE  Delta F2],'') as [Jul Net DOE  Delta F2]
,isnull([Aug Net DOE  Delta F2],'') as [Aug Net DOE  Delta F2]
,isnull([Sep Net DOE  Delta F2],'') as [Sep Net DOE  Delta F2]
,isnull([Total Net DOE  Delta F2],'') as [Total Net DOE  Delta F2]
,isnull([Jul Latest Update Total Activity],'') as [Jul Latest Update Total Activity]
,isnull([Aug Latest Update Total Activity],'') as [Aug Latest Update Total Activity]
,isnull([Sep Latest Update Total Activity],'') as [Sep Latest Update Total Activity]
,isnull([Total Latest Update Total Activity],'') as [Total Latest Update Total Activity]
,isnull([Std Latest Update Total Activity],'') as [Std Latest Update Total Activity]
,isnull([%Utlz Latest Update Total Activity],'') as [%Utlz Latest Update Total Activity]
,isnull([Actual Productivity (PF) QTD],'') as [Actual Productivity (PF) QTD]
,isnull([Jul MB Total Activity],'') as [Jul MB Total Activity]
,isnull([Aug MB Total Activity],'') as [Aug MB Total Activity]
,isnull([Sep MB Total Activity],'') as [Sep MB Total Activity]
,isnull([Total MB Total Activity],'') as [Total MB Total Activity]
,isnull([Std MB Total Activity],'') as [Std MB Total Activity]
,isnull([%Utlz MB Total Activity],'') as [%Utlz MB Total Activity]
,isnull([Jul Delta MB Total Activity],'') as [Jul Delta MB Total Activity]
,isnull([Aug Delta MB Total Activity],'') as [Aug Delta MB Total Activity]
,isnull([Sep Delta MB Total Activity],'') as [Sep Delta MB Total Activity]
,isnull([Total Delta MB Total Activity],'') as [Total Delta MB Total Activity]
,isnull([Std Delta MB Total Activity],'') as [Std Delta MB Total Activity]
,isnull([%Utlz Delta MB Total Activity],'') as [%Utlz Delta MB Total Activity]
,isnull([Jul F2 Total Activity],'') as [Jul F2 Total Activity]
,isnull([Aug F2 Total Activity],'') as [Aug F2 Total Activity]
,isnull([Sep F2 Total Activity],'') as [Sep F2 Total Activity]
,isnull([Total F2 Total Activity],'') as [Total F2 Total Activity]
,isnull([Std F2 Total Activity],'') as [Std F2 Total Activity]
,isnull([%Utlz F2 Total Activity],'') as [%Utlz F2 Total Activity]
,isnull([JulDelta F2 Total Activity],'') as [JulDelta F2 Total Activity]
,isnull([AugDelta F2 Total Activity],'') as [AugDelta F2 Total Activity]
,isnull([SepDelta F2 Total Activity],'') as [SepDelta F2 Total Activity]
,isnull([Total Delta F2 Total Activity],'') as [Total Delta F2 Total Activity]
,isnull([StdDelta F2 Total Activity],'') as [StdDelta F2 Total Activity]
,isnull([%UtlzDelta F2 Total Activity],'') as [%UtlzDelta F2 Total Activity]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from  fss.stage_fss_DOE_Breakdown_v where --facility like '%Altamira%' and 
isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Jul Gross DOE Latest Update],[Aug Gross DOE Latest Update],[Sep Gross DOE Latest Update],[Total  Gross DOE Latest Update],[Jul Recovery Latest Update],[Aug Recovery Latest Update],	
[Sep Recovery Latest Update],[Total  Recovery Latest Update],[Jul Net DOE  Latest Update],[Aug Net DOE  Latest Update],	[Sep Net DOE  Latest Update],[Total Net DOE  Latest Update],
[Jul Gross DOE MB],[Aug Gross DOE MB],[Sep Gross DOE MB],[Gross Gross DOE MB],[Jul Recovery MB],[Aug Recovery MB],[Sep Recovery MB],[Recovery Recovery MB],
[Jul Net DOE  MB],[Aug Net DOE  MB],[Sep Net DOE  MB],[Total Net DOE  MB],[Jul Gross DOE Delta MB],[Aug Gross DOE Delta MB],[Sep Gross DOE Delta MB],[Total Gross DOE Delta MB],
[Jul Recovery Delta MB],[Aug Recovery Delta MB],[Sep Recovery Delta MB],[Total Recovery Delta MB],[Jul Net DOE  Delta MB],[Aug Net DOE  Delta MB],[Sep Net DOE  Delta MB],[Total Net DOE  Delta MB],
[Jul Gross DOE F2],[Aug Gross DOE F2],[Sep Gross DOE F2],[Gross Gross DOE F2],[Jul Recovery F2],[Aug Recovery F2],[Sep Recovery F2],[Recovery Recovery F2],[Jul Net DOE  F2],[Aug Net DOE  F2],
[Sep Net DOE  F2],[Total Net DOE  F2],[Jul Gross DOE Delta F2],[Aug Gross DOE Delta F2],[Sep Gross DOE Delta F2],[Total Gross DOE Delta F2],[Jul Recovery Delta F2],[Aug Recovery Delta F2],
[Sep Recovery Delta F2],[Total Recovery Delta F2],[Jul Net DOE  Delta F2],[Aug Net DOE  Delta F2],[Sep Net DOE  Delta F2],[Total Net DOE  Delta F2],[Jul Latest Update Total Activity],[Aug Latest Update Total Activity],	
[Sep Latest Update Total Activity],[Total Latest Update Total Activity],[Std Latest Update Total Activity],[%Utlz Latest Update Total Activity],[Actual Productivity (PF) QTD],[Jul MB Total Activity],
[Aug MB Total Activity],[Sep MB Total Activity],[Total MB Total Activity],[Std MB Total Activity],[%Utlz MB Total Activity],[Jul Delta MB Total Activity],[Aug Delta MB Total Activity],[Sep Delta MB Total Activity],	
[Total Delta MB Total Activity],[Std Delta MB Total Activity],[%Utlz Delta MB Total Activity],[Jul F2 Total Activity],[Aug F2 Total Activity],[Sep F2 Total Activity],
[Total F2 Total Activity],[Std F2 Total Activity],[%Utlz F2 Total Activity],[JulDelta F2 Total Activity],[AugDelta F2 Total Activity],[SepDelta F2 Total Activity],	
[Total Delta F2 Total Activity],[StdDelta F2 Total Activity],[%UtlzDelta F2 Total Activity])
		) AS unpvt
		) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Gross DOE Latest Update','Recovery Latest Update','Gross DOE MB','Recovery MB',
'Gross DOE F2','Recovery F2','Latest Update Total Activity','Std Latest Update Total Activity','Actual Productivity (PF) QTD','MB Total Activity',
'Std MB Total Activity','F2 Total Activity','Std F2 Total Activity')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'
	   
end

 if (month(@reportingperiod_DOE_Breakdown) between 10 and 12)

 begin

  insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
	'DOE Breakdown' AS [Data Source],null as [New/ CO],null as [JV/Non-JV],NULL AS BLPW,null as [External Product Line],null as [Customer],
	[Seq No],[Sub Title],NULL AS [Calculation],[Bl Category] AS [Category],[Facility],NULL AS [Commentary],
	@reportingperiod_DOE_Breakdown AS TransactionDate,
	'Q4' AS [Quarter],
	
	CASE 

	WHEN datasubclass_up IN ('Oct Gross DOE Latest Update','Oct Recovery Latest Update','Oct Gross DOE MB','Oct Recovery MB','Oct Gross DOE F2','Oct Recovery F2',
	'Oct Latest Update Total Activity','Oct MB Total Activity','Oct F2 Total Activity') THEN 10

	WHEN datasubclass_up IN ('Nov Gross DOE Latest Update','Nov Recovery Latest Update','Nov Gross DOE MB','Nov Recovery MB','Nov Gross DOE F2','Nov Recovery F2',
	'Nov Latest Update Total Activity','Nov MB Total Activity','Nov F2 Total Activity') THEN 11

	WHEN datasubclass_up IN ('Dec Gross DOE Latest Update','Dec Recovery Latest Update','Dec Gross DOE MB','Dec Recovery MB','Dec Gross DOE F2','Dec Recovery F2',
	'Dec Latest Update Total Activity','Dec MB Total Activity','Dec F2 Total Activity') THEN 12

	ELSE 0 END AS month,--data_sub_class_name,
	amount,getdate() AS create_date_time
FROM (
SELECT [Business Line],[Seq No],[Sub Title],[Bl Category],[Facility],amount,datasubclass_up
				   ,case when datasubclass_up in ('Oct Gross DOE Latest Update','Nov Gross DOE Latest Update','Dec Gross DOE Latest Update') then 'Gross DOE Latest Update'
						 when datasubclass_up in ('Oct Recovery Latest Update','Nov Recovery Latest Update','Dec Recovery Latest Update') then 'Recovery Latest Update'
						 when datasubclass_up in ('Oct Gross DOE MB','Nov Gross DOE MB','Dec Gross DOE MB') then 'Gross DOE MB'
						 when datasubclass_up in ('Oct Recovery MB','Nov Recovery MB','Dec Recovery MB') then 'Recovery MB'
						 when datasubclass_up in ('Oct Gross DOE F2','Nov Gross DOE F2','Dec Gross DOE F2') then 'Gross DOE F2'
						 when datasubclass_up in ('Oct Recovery F2','Nov Recovery F2','Dec Recovery F2') then 'Recovery F2'
						 when datasubclass_up in ('Oct Latest Update Total Activity','Nov Latest Update Total Activity','Dec Latest Update Total Activity') then 'Latest Update Total Activity'
						 when datasubclass_up in ('Std Latest Update Total Activity') then 'Std Latest Update Total Activity'
						 when datasubclass_up in ('Actual Productivity (PF) QTD') then 'Actual Productivity (PF) QTD'
						 when datasubclass_up in ('Oct MB Total Activity','Nov MB Total Activity','Dec MB Total Activity') then 'MB Total Activity'
						 when datasubclass_up in ('Std MB Total Activity') then 'Std MB Total Activity'
						 when datasubclass_up in ('Oct F2 Total Activity','Nov F2 Total Activity','Dec F2 Total Activity') then 'F2 Total Activity'
						 when datasubclass_up in ('Std F2 Total Activity') then 'Std F2 Total Activity'
						 else datasubclass_up 
						 end as datasubclass

	
	FROM (
select 
[Business Line]
,[Seq No]
,[Sub Title]
,[Bl Category]
,[Facility]
,isnull([Oct Gross DOE Latest Update],'') as [Oct Gross DOE Latest Update]
,isnull([Nov Gross DOE Latest Update],'') as [Nov Gross DOE Latest Update]
,isnull([Dec Gross DOE Latest Update],'') as [Dec Gross DOE Latest Update]
,isnull([Total  Gross DOE Latest Update],'') as [Total  Gross DOE Latest Update]
,isnull([Oct Recovery Latest Update],'') as [Oct Recovery Latest Update]
,isnull([Nov Recovery Latest Update],'') as [Nov Recovery Latest Update]
,isnull([Dec Recovery Latest Update],'') as [Dec Recovery Latest Update]
,isnull([Total  Recovery Latest Update],'') as [Total  Recovery Latest Update]
,isnull([Oct Net DOE  Latest Update],'') as [Oct Net DOE  Latest Update]
,isnull([Nov Net DOE  Latest Update],'') as [Nov Net DOE  Latest Update]
,isnull([Dec Net DOE  Latest Update],'') as [Dec Net DOE  Latest Update]
,isnull([Total Net DOE  Latest Update],'') as [Total Net DOE  Latest Update]
,isnull([Oct Gross DOE MB],'') as [Oct Gross DOE MB]
,isnull([Nov Gross DOE MB],'') as [Nov Gross DOE MB]
,isnull([Dec Gross DOE MB],'') as [Dec Gross DOE MB]
,isnull([Gross Gross DOE MB],'') as [Gross Gross DOE MB]
,isnull([Oct Recovery MB],'') as [Oct Recovery MB]
,isnull([Nov Recovery MB],'') as [Nov Recovery MB]
,isnull([Dec Recovery MB],'') as [Dec Recovery MB]
,isnull([Recovery Recovery MB],'') as [Recovery Recovery MB]
,isnull([Oct Net DOE  MB],'') as [Oct Net DOE  MB]
,isnull([Nov Net DOE  MB],'') as [Nov Net DOE  MB]
,isnull([Dec Net DOE  MB],'') as [Dec Net DOE  MB]
,isnull([Total Net DOE  MB],'') as [Total Net DOE  MB]
,isnull([Oct Gross DOE Delta MB],'') as [Oct Gross DOE Delta MB]
,isnull([Nov Gross DOE Delta MB],'') as [Nov Gross DOE Delta MB]
,isnull([Dec Gross DOE Delta MB],'') as [Dec Gross DOE Delta MB]
,isnull([Total Gross DOE Delta MB],'') as [Total Gross DOE Delta MB]
,isnull([Oct Recovery Delta MB],'') as [Oct Recovery Delta MB]
,isnull([Nov Recovery Delta MB],'') as [Nov Recovery Delta MB]
,isnull([Dec Recovery Delta MB],'') as [Dec Recovery Delta MB]
,isnull([Total Recovery Delta MB],'') as [Total Recovery Delta MB]
,isnull([Oct Net DOE  Delta MB],'') as [Oct Net DOE  Delta MB]
,isnull([Nov Net DOE  Delta MB],'') as [Nov Net DOE  Delta MB]
,isnull([Dec Net DOE  Delta MB],'') as [Dec Net DOE  Delta MB]
,isnull([Total Net DOE  Delta MB],'') as [Total Net DOE  Delta MB]
,isnull([Oct Gross DOE F2],'') as [Oct Gross DOE F2]
,isnull([Nov Gross DOE F2],'') as [Nov Gross DOE F2]
,isnull([Dec Gross DOE F2],'') as [Dec Gross DOE F2]
,isnull([Gross Gross DOE F2],'') as [Gross Gross DOE F2]
,isnull([Oct Recovery F2],'') as [Oct Recovery F2]
,isnull([Nov Recovery F2],'') as [Nov Recovery F2]
,isnull([Dec Recovery F2],'') as [Dec Recovery F2]
,isnull([Recovery Recovery F2],'') as [Recovery Recovery F2]
,isnull([Oct Net DOE  F2],'') as [Oct Net DOE  F2]
,isnull([Nov Net DOE  F2],'') as [Nov Net DOE  F2]
,isnull([Dec Net DOE  F2],'') as [Dec Net DOE  F2]
,isnull([Total Net DOE  F2],'') as [Total Net DOE  F2]
,isnull([Oct Gross DOE Delta F2],'') as [Oct Gross DOE Delta F2]
,isnull([Nov Gross DOE Delta F2],'') as [Nov Gross DOE Delta F2]
,isnull([Dec Gross DOE Delta F2],'') as [Dec Gross DOE Delta F2]
,isnull([Total Gross DOE Delta F2],'') as [Total Gross DOE Delta F2]
,isnull([Oct Recovery Delta F2],'') as [Oct Recovery Delta F2]
,isnull([Nov Recovery Delta F2],'') as [Nov Recovery Delta F2]
,isnull([Dec Recovery Delta F2],'') as [Dec Recovery Delta F2]
,isnull([Total Recovery Delta F2],'') as [Total Recovery Delta F2]
,isnull([Oct Net DOE  Delta F2],'') as [Oct Net DOE  Delta F2]
,isnull([Nov Net DOE  Delta F2],'') as [Nov Net DOE  Delta F2]
,isnull([Dec Net DOE  Delta F2],'') as [Dec Net DOE  Delta F2]
,isnull([Total Net DOE  Delta F2],'') as [Total Net DOE  Delta F2]
,isnull([Oct Latest Update Total Activity],'') as [Oct Latest Update Total Activity]
,isnull([Nov Latest Update Total Activity],'') as [Nov Latest Update Total Activity]
,isnull([Dec Latest Update Total Activity],'') as [Dec Latest Update Total Activity]
,isnull([Total Latest Update Total Activity],'') as [Total Latest Update Total Activity]
,isnull([Std Latest Update Total Activity],'') as [Std Latest Update Total Activity]
,isnull([%Utlz Latest Update Total Activity],'') as [%Utlz Latest Update Total Activity]
,isnull([Actual Productivity (PF) QTD],'') as [Actual Productivity (PF) QTD]
,isnull([Oct MB Total Activity],'') as [Oct MB Total Activity]
,isnull([Nov MB Total Activity],'') as [Nov MB Total Activity]
,isnull([Dec MB Total Activity],'') as [Dec MB Total Activity]
,isnull([Total MB Total Activity],'') as [Total MB Total Activity]
,isnull([Std MB Total Activity],'') as [Std MB Total Activity]
,isnull([%Utlz MB Total Activity],'') as [%Utlz MB Total Activity]
,isnull([Oct Delta MB Total Activity],'') as [Oct Delta MB Total Activity]
,isnull([Nov Delta MB Total Activity],'') as [Nov Delta MB Total Activity]
,isnull([Dec Delta MB Total Activity],'') as [Dec Delta MB Total Activity]
,isnull([Total Delta MB Total Activity],'') as [Total Delta MB Total Activity]
,isnull([Std Delta MB Total Activity],'') as [Std Delta MB Total Activity]
,isnull([%Utlz Delta MB Total Activity],'') as [%Utlz Delta MB Total Activity]
,isnull([Oct F2 Total Activity],'') as [Oct F2 Total Activity]
,isnull([Nov F2 Total Activity],'') as [Nov F2 Total Activity]
,isnull([Dec F2 Total Activity],'') as [Dec F2 Total Activity]
,isnull([Total F2 Total Activity],'') as [Total F2 Total Activity]
,isnull([Std F2 Total Activity],'') as [Std F2 Total Activity]
,isnull([%Utlz F2 Total Activity],'') as [%Utlz F2 Total Activity]
,isnull([OctDelta F2 Total Activity],'') as [OctDelta F2 Total Activity]
,isnull([NovDelta F2 Total Activity],'') as [NovDelta F2 Total Activity]
,isnull([DecDelta F2 Total Activity],'') as [DecDelta F2 Total Activity]
,isnull([Total Delta F2 Total Activity],'') as [Total Delta F2 Total Activity]
,isnull([StdDelta F2 Total Activity],'') as [StdDelta F2 Total Activity]
,isnull([%UtlzDelta F2 Total Activity],'') as [%UtlzDelta F2 Total Activity]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from  fss.stage_fss_DOE_Breakdown_v where --facility like '%Altamira%' and 
isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Oct Gross DOE Latest Update],[Nov Gross DOE Latest Update],[Dec Gross DOE Latest Update],[Total  Gross DOE Latest Update],[Oct Recovery Latest Update],[Nov Recovery Latest Update],	
[Dec Recovery Latest Update],[Total  Recovery Latest Update],[Oct Net DOE  Latest Update],[Nov Net DOE  Latest Update],	[Dec Net DOE  Latest Update],[Total Net DOE  Latest Update],
[Oct Gross DOE MB],[Nov Gross DOE MB],[Dec Gross DOE MB],[Gross Gross DOE MB],[Oct Recovery MB],[Nov Recovery MB],[Dec Recovery MB],[Recovery Recovery MB],
[Oct Net DOE  MB],[Nov Net DOE  MB],[Dec Net DOE  MB],[Total Net DOE  MB],[Oct Gross DOE Delta MB],[Nov Gross DOE Delta MB],[Dec Gross DOE Delta MB],[Total Gross DOE Delta MB],
[Oct Recovery Delta MB],[Nov Recovery Delta MB],[Dec Recovery Delta MB],[Total Recovery Delta MB],[Oct Net DOE  Delta MB],[Nov Net DOE  Delta MB],[Dec Net DOE  Delta MB],[Total Net DOE  Delta MB],
[Oct Gross DOE F2],[Nov Gross DOE F2],[Dec Gross DOE F2],[Gross Gross DOE F2],[Oct Recovery F2],[Nov Recovery F2],[Dec Recovery F2],[Recovery Recovery F2],[Oct Net DOE  F2],[Nov Net DOE  F2],
[Dec Net DOE  F2],[Total Net DOE  F2],[Oct Gross DOE Delta F2],[Nov Gross DOE Delta F2],[Dec Gross DOE Delta F2],[Total Gross DOE Delta F2],[Oct Recovery Delta F2],[Nov Recovery Delta F2],
[Dec Recovery Delta F2],[Total Recovery Delta F2],[Oct Net DOE  Delta F2],[Nov Net DOE  Delta F2],[Dec Net DOE  Delta F2],[Total Net DOE  Delta F2],[Oct Latest Update Total Activity],[Nov Latest Update Total Activity],	
[Dec Latest Update Total Activity],[Total Latest Update Total Activity],[Std Latest Update Total Activity],[%Utlz Latest Update Total Activity],[Actual Productivity (PF) QTD],[Oct MB Total Activity],
[Nov MB Total Activity],[Dec MB Total Activity],[Total MB Total Activity],[Std MB Total Activity],[%Utlz MB Total Activity],[Oct Delta MB Total Activity],[Nov Delta MB Total Activity],[Dec Delta MB Total Activity],	
[Total Delta MB Total Activity],[Std Delta MB Total Activity],[%Utlz Delta MB Total Activity],[Oct F2 Total Activity],[Nov F2 Total Activity],[Dec F2 Total Activity],
[Total F2 Total Activity],[Std F2 Total Activity],[%Utlz F2 Total Activity],[OctDelta F2 Total Activity],[NovDelta F2 Total Activity],[DecDelta F2 Total Activity],	
[Total Delta F2 Total Activity],[StdDelta F2 Total Activity],[%UtlzDelta F2 Total Activity])
		) AS unpvt
		) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Gross DOE Latest Update','Recovery Latest Update','Gross DOE MB','Recovery MB',
'Gross DOE F2','Recovery F2','Latest Update Total Activity','Std Latest Update Total Activity','Actual Productivity (PF) QTD','MB Total Activity',
'Std MB Total Activity','F2 Total Activity','Std F2 Total Activity')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'
	  
 end 

 END