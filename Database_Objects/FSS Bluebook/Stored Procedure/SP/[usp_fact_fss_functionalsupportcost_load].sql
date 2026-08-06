CREATE PROC [dbo].[usp_fact_fss_functionalsupportcost_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

  declare @reportingperiod_functionalsupportcost date
		if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
			BEGIN
				set @Errormessage='Invalid Month Range'
				select @Errormessage
			End
		set @reportingperiod_functionalsupportcost =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='Functional Support Cost')
		select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_functional_support_cost_v

		if (month(@reportingperiod_functionalsupportcost) between 1 and 3)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'Functional Support Cost' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,[Productline] as [External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_functionalsupportcost AS TransactionDate,'Q1' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jan Curr Qtr Update','Jan Curr Qtr Update HYP','Jan Curr Qtr Update ADJ','Jan MB','Jan F2') THEN 1
		WHEN datasubclass_up IN ('Feb Curr Qtr Update','Feb Curr Qtr Update HYP','Feb Curr Qtr Update ADJ','Feb MB','Feb F2') THEN 2
		WHEN datasubclass_up IN ('Mar Curr Qtr Update','Mar Curr Qtr Update HYP','Mar Curr Qtr Update ADJ','Mar MB','Mar F2') THEN 3 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [HFM Function] as [Productline],[Business Line],[Category],[Sub Title],[Function Name] as [Facility],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jan Curr Qtr Update','Feb Curr Qtr Update','Mar Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Jan Curr Qtr Update HYP','Feb Curr Qtr Update HYP','Mar Curr Qtr Update HYP') then 'Curr Qtr Update HYP'
						 when datasubclass_up in ('Jan Curr Qtr Update ADJ','Feb Curr Qtr Update ADJ','Mar Curr Qtr Update ADJ') then 'Curr Qtr Update ADJ'
						 when datasubclass_up in ('Jan MB','Feb MB','Mar MB') then 'MB Amount'
						 when datasubclass_up in ('Jan F2','Feb F2','Mar F2') then 'F2 Amount'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [HFM Function],
[Business Line],
[Category],
[Sub Title],
[Function Name],
isnull([Jan Curr Qtr Update Hyp],'') as [Jan Curr Qtr Update Hyp],
isnull([Feb Curr Qtr Update Hyp],'') as [Feb Curr Qtr Update Hyp],
isnull([Mar Curr Qtr Update Hyp],'') as [Mar Curr Qtr Update Hyp],
isnull([Total Curr Qtr Update Hyp],'') as [Total Curr Qtr Update Hyp],
isnull([Jan Curr Qtr Update Adj],'') as [Jan Curr Qtr Update Adj],
isnull([Feb Curr Qtr Update Adj],'') as [Feb Curr Qtr Update Adj],
isnull([Mar Curr Qtr Update Adj],'') as [Mar Curr Qtr Update Adj],
isnull([Total Curr Qtr Update Adj],'') as [Total Curr Qtr Update Adj],
isnull([Jan Curr Qtr Update],'') as [Jan Curr Qtr Update],
isnull([Feb Curr Qtr Update],'') as [Feb Curr Qtr Update],
isnull([Mar Curr Qtr Update],'') as [Mar Curr Qtr Update],
isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update],
isnull([Jan MB],'') as [Jan MB],
isnull([Feb MB],'') as [Feb MB],
isnull([Mar MB],'') as [Mar MB],
isnull([Total MB],'') as [Total MB],
isnull([Jan MB Delta],'') as [Jan MB Delta],
isnull([Feb MB Delta],'') as [Feb MB Delta],
isnull([Mar MB Delta],'') as [Mar MB Delta],
isnull([Total MB Delta],'') as [Total MB Delta],
isnull([Jan F2],'') as [Jan F2],
isnull([Feb F2],'') as [Feb F2],
isnull([Mar F2],'') as [Mar F2],
isnull([Total F2],'') as [Total F2],
isnull([Jan F2 Delta],'') as [Jan F2 Delta],
isnull([Feb F2 Delta],'') as [Feb F2 Delta],
isnull([Mar F2 Delta],'') as [Mar F2 Delta],
isnull([Total F2 Delta],'') as [Total F2 Delta],
isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_functional_support_cost_v]
		WHERE  isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Jan Curr Qtr Update Adj],[Feb Curr Qtr Update Adj],[Mar Curr Qtr Update Adj],[Jan Curr Qtr Update],[Feb Curr Qtr Update],[Mar Curr Qtr Update],[Jan MB],[Feb MB],[Mar MB],[Jan MB Delta],[Feb MB Delta],[Mar MB Delta],[Jan F2],[Feb F2],[Mar F2],[Jan F2 Delta],[Feb F2 Delta],[Mar F2 Delta],[Jan Curr Qtr Update Hyp],[Feb Curr Qtr Update Hyp],[Mar Curr Qtr Update Hyp]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update HYP' ,'Curr Qtr Update ADJ' ,'Curr Qtr Update','MB Amount','F2 Amount')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end
 
if (month(@reportingperiod_functionalsupportcost) between 4 and 6)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'Functional Support Cost' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,[Productline] as [External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_functionalsupportcost AS TransactionDate,'Q1' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Apr Curr Qtr Update','Apr Curr Qtr Update HYP','Apr Curr Qtr Update ADJ','Apr MB','Apr F2') THEN 4
		WHEN datasubclass_up IN ('May Curr Qtr Update','May Curr Qtr Update HYP','May Curr Qtr Update ADJ','May MB','May F2') THEN 5
		WHEN datasubclass_up IN ('Jun Curr Qtr Update','Jun Curr Qtr Update HYP','Jun Curr Qtr Update ADJ','Jun MB','Jun F2') THEN 6 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [HFM Function] as [Productline],[Business Line],[Category],[Sub Title],[Function Name] as [Facility],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Apr Curr Qtr Update','May Curr Qtr Update','Jun Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Apr Curr Qtr Update HYP','May Curr Qtr Update HYP','Jun Curr Qtr Update HYP') then 'Curr Qtr Update HYP'
						 when datasubclass_up in ('Apr Curr Qtr Update ADJ','May Curr Qtr Update ADJ','Jun Curr Qtr Update ADJ') then 'Curr Qtr Update ADJ'
						 when datasubclass_up in ('Apr MB','May MB','Jun MB') then 'MB Amount'
						 when datasubclass_up in ('Apr F2','May F2','Jun F2') then 'F2 Amount'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [HFM Function],
[Business Line],
[Category],
[Sub Title],
[Function Name],
isnull([Apr Curr Qtr Update Hyp],'') as [Apr Curr Qtr Update Hyp],
isnull([May Curr Qtr Update Hyp],'') as [May Curr Qtr Update Hyp],
isnull([Jun Curr Qtr Update Hyp],'') as [Jun Curr Qtr Update Hyp],
isnull([Total Curr Qtr Update Hyp],'') as [Total Curr Qtr Update Hyp],
isnull([Apr Curr Qtr Update Adj],'') as [Apr Curr Qtr Update Adj],
isnull([May Curr Qtr Update Adj],'') as [May Curr Qtr Update Adj],
isnull([Jun Curr Qtr Update Adj],'') as [Jun Curr Qtr Update Adj],
isnull([Total Curr Qtr Update Adj],'') as [Total Curr Qtr Update Adj],
isnull([Apr Curr Qtr Update],'') as [Apr Curr Qtr Update],
isnull([May Curr Qtr Update],'') as [May Curr Qtr Update],
isnull([Jun Curr Qtr Update],'') as [Jun Curr Qtr Update],
isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update],
isnull([Apr MB],'') as [Apr MB],
isnull([May MB],'') as [May MB],
isnull([Jun MB],'') as [Jun MB],
isnull([Total MB],'') as [Total MB],
isnull([Apr MB Delta],'') as [Apr MB Delta],
isnull([May MB Delta],'') as [May MB Delta],
isnull([Jun MB Delta],'') as [Jun MB Delta],
isnull([Total MB Delta],'') as [Total MB Delta],
isnull([Apr F2],'') as [Apr F2],
isnull([May F2],'') as [May F2],
isnull([Jun F2],'') as [Jun F2],
isnull([Total F2],'') as [Total F2],
isnull([Apr F2 Delta],'') as [Apr F2 Delta],
isnull([May F2 Delta],'') as [May F2 Delta],
isnull([Jun F2 Delta],'') as [Jun F2 Delta],
isnull([Total F2 Delta],'') as [Total F2 Delta],
isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_functional_support_cost_v]
		WHERE  isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Apr Curr Qtr Update Adj],[May Curr Qtr Update Adj],[Jun Curr Qtr Update Adj],[Apr Curr Qtr Update],[May Curr Qtr Update],[Jun Curr Qtr Update],[Apr MB],[May MB],[Jun MB],[Apr MB Delta],[May MB Delta],[Jun MB Delta],[Apr F2],[May F2],[Jun F2],[Apr F2 Delta],[May F2 Delta],[Jun F2 Delta],[Apr Curr Qtr Update Hyp],[May Curr Qtr Update Hyp],[Jun Curr Qtr Update Hyp]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update HYP' ,'Curr Qtr Update ADJ' ,'Curr Qtr Update','MB Amount','F2 Amount')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end
if (month(@reportingperiod_functionalsupportcost) between 7 and 9)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'Functional Support Cost' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,[Productline] as [External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_functionalsupportcost AS TransactionDate,'Q3' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jul Curr Qtr Update','Jul Curr Qtr Update HYP','Jul Curr Qtr Update ADJ','Jul MB','Jul F2') THEN 7
		WHEN datasubclass_up IN ('Aug Curr Qtr Update','Aug Curr Qtr Update HYP','Aug Curr Qtr Update ADJ','Aug MB','Aug F2') THEN 8
		WHEN datasubclass_up IN ('Sep Curr Qtr Update','Sep Curr Qtr Update HYP','Sep Curr Qtr Update ADJ','Sep MB','Sep F2') THEN 9 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [HFM Function] as [Productline],[Business Line],[Category],[Sub Title],[Function Name] as [Facility],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jul Curr Qtr Update','Aug Curr Qtr Update','Sep Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Jul Curr Qtr Update HYP','Aug Curr Qtr Update HYP','Sep Curr Qtr Update HYP') then 'Curr Qtr Update HYP'
						 when datasubclass_up in ('Jul Curr Qtr Update ADJ','Aug Curr Qtr Update ADJ','Sep Curr Qtr Update ADJ') then 'Curr Qtr Update ADJ'
						 when datasubclass_up in ('Jul MB','Aug MB','Sep MB') then 'MB Amount'
						 when datasubclass_up in ('Jul F2','Aug F2','Sep F2') then 'F2 Amount'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [HFM Function],
[Business Line],
[Category],
[Sub Title],
[Function Name],
isnull([Jul Curr Qtr Update Hyp],'') as [Jul Curr Qtr Update Hyp],
isnull([Aug Curr Qtr Update Hyp],'') as [Aug Curr Qtr Update Hyp],
isnull([Sep Curr Qtr Update Hyp],'') as [Sep Curr Qtr Update Hyp],
isnull([Total Curr Qtr Update Hyp],'') as [Total Curr Qtr Update Hyp],
isnull([Jul Curr Qtr Update Adj],'') as [Jul Curr Qtr Update Adj],
isnull([Aug Curr Qtr Update Adj],'') as [Aug Curr Qtr Update Adj],
isnull([Sep Curr Qtr Update Adj],'') as [Sep Curr Qtr Update Adj],
isnull([Total Curr Qtr Update Adj],'') as [Total Curr Qtr Update Adj],
isnull([Jul Curr Qtr Update],'') as [Jul Curr Qtr Update],
isnull([Aug Curr Qtr Update],'') as [Aug Curr Qtr Update],
isnull([Sep Curr Qtr Update],'') as [Sep Curr Qtr Update],
isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update],
isnull([Jul MB],'') as [Jul MB],
isnull([Aug MB],'') as [Aug MB],
isnull([Sep MB],'') as [Sep MB],
isnull([Total MB],'') as [Total MB],
isnull([Jul MB Delta],'') as [Jul MB Delta],
isnull([Aug MB Delta],'') as [Aug MB Delta],
isnull([Sep MB Delta],'') as [Sep MB Delta],
isnull([Total MB Delta],'') as [Total MB Delta],
isnull([Jul F2],'') as [Jul F2],
isnull([Aug F2],'') as [Aug F2],
isnull([Sep F2],'') as [Sep F2],
isnull([Total F2],'') as [Total F2],
isnull([Jul F2 Delta],'') as [Jul F2 Delta],
isnull([Aug F2 Delta],'') as [Aug F2 Delta],
isnull([Sep F2 Delta],'') as [Sep F2 Delta],
isnull([Total F2 Delta],'') as [Total F2 Delta],
isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_functional_support_cost_v]
		WHERE  isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Jul Curr Qtr Update Adj],[Aug Curr Qtr Update Adj],[Sep Curr Qtr Update Adj],[Jul Curr Qtr Update],[Aug Curr Qtr Update],[Sep Curr Qtr Update],[Jul MB],[Aug MB],[Sep MB],[Jul MB Delta],[Aug MB Delta],[Sep MB Delta],[Jul F2],[Aug F2],[Sep F2],[Jul F2 Delta],[Aug F2 Delta],[Sep F2 Delta],[Jul Curr Qtr Update Hyp],[Aug Curr Qtr Update Hyp],[Sep Curr Qtr Update Hyp]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update HYP' ,'Curr Qtr Update ADJ' ,'Curr Qtr Update','MB Amount','F2 Amount')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end
 
if (month(@reportingperiod_functionalsupportcost) between 10 and 12)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'Functional Support Cost' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,[Productline] as [External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_functionalsupportcost AS TransactionDate,'Q1' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Oct Curr Qtr Update','Oct Curr Qtr Update HYP','Oct Curr Qtr Update ADJ','Oct MB','Oct F2') THEN 10
		WHEN datasubclass_up IN ('Nov Curr Qtr Update','Nov Curr Qtr Update HYP','Nov Curr Qtr Update ADJ','Nov MB','Nov F2') THEN 11
		WHEN datasubclass_up IN ('Dec Curr Qtr Update','Dec Curr Qtr Update HYP','Dec Curr Qtr Update ADJ','Dec MB','Dec F2') THEN 12 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [HFM Function] as [Productline],[Business Line],[Category],[Sub Title],[Function Name] as [Facility],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Oct Curr Qtr Update','Nov Curr Qtr Update','Dec Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Oct Curr Qtr Update HYP','Nov Curr Qtr Update HYP','Dec Curr Qtr Update HYP') then 'Curr Qtr Update HYP'
						 when datasubclass_up in ('Oct Curr Qtr Update ADJ','Nov Curr Qtr Update ADJ','Dec Curr Qtr Update ADJ') then 'Curr Qtr Update ADJ'
						 when datasubclass_up in ('Oct MB','Nov MB','Dec MB') then 'MB Amount'
						 when datasubclass_up in ('Oct F2','Nov F2','Dec F2') then 'F2 Amount'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [HFM Function],
[Business Line],
[Category],
[Sub Title],
[Function Name],
isnull([Oct Curr Qtr Update Hyp],'') as [Oct Curr Qtr Update Hyp],
isnull([Nov Curr Qtr Update Hyp],'') as [Nov Curr Qtr Update Hyp],
isnull([Dec Curr Qtr Update Hyp],'') as [Dec Curr Qtr Update Hyp],
isnull([Total Curr Qtr Update Hyp],'') as [Total Curr Qtr Update Hyp],
isnull([Oct Curr Qtr Update Adj],'') as [Oct Curr Qtr Update Adj],
isnull([Nov Curr Qtr Update Adj],'') as [Nov Curr Qtr Update Adj],
isnull([Dec Curr Qtr Update Adj],'') as [Dec Curr Qtr Update Adj],
isnull([Total Curr Qtr Update Adj],'') as [Total Curr Qtr Update Adj],
isnull([Oct Curr Qtr Update],'') as [Oct Curr Qtr Update],
isnull([Nov Curr Qtr Update],'') as [Nov Curr Qtr Update],
isnull([Dec Curr Qtr Update],'') as [Dec Curr Qtr Update],
isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update],
isnull([Oct MB],'') as [Oct MB],
isnull([Nov MB],'') as [Nov MB],
isnull([Dec MB],'') as [Dec MB],
isnull([Total MB],'') as [Total MB],
isnull([Oct MB Delta],'') as [Oct MB Delta],
isnull([Nov MB Delta],'') as [Nov MB Delta],
isnull([Dec MB Delta],'') as [Dec MB Delta],
isnull([Total MB Delta],'') as [Total MB Delta],
isnull([Oct F2],'') as [Oct F2],
isnull([Nov F2],'') as [Nov F2],
isnull([Dec F2],'') as [Dec F2],
isnull([Total F2],'') as [Total F2],
isnull([Oct F2 Delta],'') as [Oct F2 Delta],
isnull([Nov F2 Delta],'') as [Nov F2 Delta],
isnull([Dec F2 Delta],'') as [Dec F2 Delta],
isnull([Total F2 Delta],'') as [Total F2 Delta],
isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_functional_support_cost_v]
		WHERE  isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Oct Curr Qtr Update Adj],[Nov Curr Qtr Update Adj],[Dec Curr Qtr Update Adj],[Oct Curr Qtr Update],[Nov Curr Qtr Update],[Dec Curr Qtr Update],[Oct MB],[Nov MB],[Dec MB],[Oct MB Delta],[Nov MB Delta],[Dec MB Delta],[Oct F2],[Nov F2],[Dec F2],[Oct F2 Delta],[Nov F2 Delta],[Dec F2 Delta],[Oct Curr Qtr Update Hyp],[Nov Curr Qtr Update Hyp],[Dec Curr Qtr Update Hyp]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update HYP' ,'Curr Qtr Update ADJ' ,'Curr Qtr Update','MB Amount','F2 Amount')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end

 END