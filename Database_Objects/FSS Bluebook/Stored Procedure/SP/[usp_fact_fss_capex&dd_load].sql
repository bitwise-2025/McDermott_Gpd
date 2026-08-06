CREATE PROC [dbo].[usp_fact_fss_capex&dd_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

   declare @reportingperiod_capexdd date
		if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
			BEGIN
				set @Errormessage='Invalid Month Range'
				select @Errormessage
			End
		set @reportingperiod_capexdd =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='CapEx & DD')
		select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_capex_and_dd_v

		
if (month(@reportingperiod_capexdd) between 1 and 3)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'CapEx & DD' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,NULL as[External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category], [Facility],[Commentary],@reportingperiod_capexdd AS TransactionDate,'Q1' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jan Curr Qtr Update') THEN 1
		WHEN datasubclass_up IN ('Feb Curr Qtr Update') THEN 2
		WHEN datasubclass_up IN ('Mar Curr Qtr Update') THEN 3 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [Sub Title],[Facility],[Business Line],[Category],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jan Curr Qtr Update','Feb Curr Qtr Update','Mar Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('MB') then 'Total MB'
						 when datasubclass_up in ('F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT 
 isnull([Sub Title],'') as [Sub Title]
,isnull([Facility],'') as [Facility]
,isnull([Category],'') as [Category]
,isnull([Business Line],'') as [Business Line]
,isnull([Jan Curr Qtr Update],'') as [Jan Curr Qtr Update]
,isnull([Feb Curr Qtr Update],'') as [Feb Curr Qtr Update]
,isnull([Mar Curr Qtr Update],'') as [Mar Curr Qtr Update]
,isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update]
,isnull([MB],'') as [MB]
,isnull([Delta MB],'') as [Delta MB]
,isnull([F2],'') as [F2]
,isnull([Delta F2],'') as [Delta F2]
,isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_capex_and_dd_v]
		WHERE  isnull([Sub Title],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Jan Curr Qtr Update],[Feb Curr Qtr Update],[Mar Curr Qtr Update],[Total Curr Qtr Update] ,[MB],[Delta MB],[F2],[Delta F2]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update' ,'Total MB' ,'Total F2')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end

 
if (month(@reportingperiod_capexdd) between 4 and 6)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'CapEx & DD' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,NULL as[External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_capexdd AS TransactionDate,'Q2' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Apr Curr Qtr Update') THEN 4
		WHEN datasubclass_up IN ('May Curr Qtr Update') THEN 5
		WHEN datasubclass_up IN ('Jun Curr Qtr Update') THEN 6 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [Sub Title],[Facility],[Business Line],[Category],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Apr Curr Qtr Update','May Curr Qtr Update','Jun Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('MB') then 'Total MB'
						 when datasubclass_up in ('F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT 
 isnull([Sub Title],'') as [Sub Title]
 ,isnull([Facility],'') as [Facility]
,isnull([Category],'') as [Category]
,isnull([Business Line],'') as [Business Line]
,isnull([Apr Curr Qtr Update],'') as [Apr Curr Qtr Update]
,isnull([May Curr Qtr Update],'') as [May Curr Qtr Update]
,isnull([Jun Curr Qtr Update],'') as [Jun Curr Qtr Update]
,isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update]
,isnull([MB],'') as [MB]
,isnull([Delta MB],'') as [Delta MB]
,isnull([F2],'') as [F2]
,isnull([Delta F2],'') as [Delta F2]
,isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_capex_and_dd_v]
		WHERE  isnull([Sub Title],'')<>'' AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Apr Curr Qtr Update],[May Curr Qtr Update],[Jun Curr Qtr Update],[Total Curr Qtr Update] ,[MB],[Delta MB],[F2],[Delta F2]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update' ,'Total MB' ,'Total F2')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end
 
 
if (month(@reportingperiod_capexdd) between 7 and 9)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'CapEx & DD' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,NULL as[External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category], [Facility],[Commentary],@reportingperiod_capexdd AS TransactionDate,'Q3' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jul Curr Qtr Update') THEN 7
		WHEN datasubclass_up IN ('Aug Curr Qtr Update') THEN 8
		WHEN datasubclass_up IN ('Sep Curr Qtr Update') THEN 9 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [Sub Title],[Facility],[Business Line],[Category],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jul Curr Qtr Update','Aug Curr Qtr Update','Sep Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('MB') then 'Total MB'
						 when datasubclass_up in ('F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT 
 isnull([Sub Title],'') as [Sub Title]
 ,isnull([Facility],'') as [Facility]
,isnull([Category],'') as [Category]
,isnull([Business Line],'') as [Business Line]
,isnull([Jul Curr Qtr Update],'') as [Jul Curr Qtr Update]
,isnull([Aug Curr Qtr Update],'') as [Aug Curr Qtr Update]
,isnull([Sep Curr Qtr Update],'') as [Sep Curr Qtr Update]
,isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update]
,isnull([MB],'') as [MB]
,isnull([Delta MB],'') as [Delta MB]
,isnull([F2],'') as [F2]
,isnull([Delta F2],'') as [Delta F2]
,isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_capex_and_dd_v]
		WHERE  isnull([Sub Title],'')<>'' AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Jul Curr Qtr Update],[Aug Curr Qtr Update],[Sep Curr Qtr Update],[Total Curr Qtr Update] ,[MB],[Delta MB],[F2],[Delta F2]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update' ,'Total MB' ,'Total F2')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end

 
if (month(@reportingperiod_capexdd) between 10 and 12)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,NULL AS dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'CapEx & DD' AS [Data Source],
	NULL AS [New/ CO],NULL AS[JV/Non-JV],NULL AS BLPW,NULL as[External Product Line],NULL as[Customer],NULL AS [Seq No],[Sub Title],NULL AS [Calculation],
	[Category],[Facility],[Commentary],@reportingperiod_capexdd AS TransactionDate,'Q4' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Oct Curr Qtr Update') THEN 10
		WHEN datasubclass_up IN ('Nov Curr Qtr Update') THEN 11
		WHEN datasubclass_up IN ('Dec Curr Qtr Update') THEN 12 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM ( 
		SELECT [Sub Title],[Facility],[Business Line],[Category],[Commentary],amount,datasubclass_up
				   ,case when datasubclass_up in ('Oct Curr Qtr Update','Nov Curr Qtr Update','Dec Curr Qtr Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('MB') then 'Total MB'
						 when datasubclass_up in ('F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT 
 isnull([Sub Title],'') as [Sub Title]
  ,isnull([Facility],'') as [Facility]
,isnull([Category],'') as [Category]
,isnull([Business Line],'') as [Business Line]
,isnull([Oct Curr Qtr Update],'') as [Oct Curr Qtr Update]
,isnull([Nov Curr Qtr Update],'') as [Nov Curr Qtr Update]
,isnull([Dec Curr Qtr Update],'') as [Dec Curr Qtr Update]
,isnull([Total Curr Qtr Update],'') as [Total Curr Qtr Update]
,isnull([MB],'') as [MB]
,isnull([Delta MB],'') as [Delta MB]
,isnull([F2],'') as [F2]
,isnull([Delta F2],'') as [Delta F2]
,isnull([Commentary],'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_capex_and_dd_v]
		WHERE  isnull([Sub Title],'')<>'' AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
[Oct Curr Qtr Update],[Nov Curr Qtr Update],[Dec Curr Qtr Update],[Total Curr Qtr Update] ,[MB],[Delta MB],[F2],[Delta F2]
		)
		) AS unpvt
	) b
--INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Curr Qtr Update' ,'Total MB' ,'Total F2')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 end
 

 END