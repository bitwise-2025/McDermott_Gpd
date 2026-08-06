CREATE PROC [dbo].[usp_fact_fss_neworders_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

declare @reportingperiod_neworders date
		select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_neworders_v

		if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
			BEGIN
				set @Errormessage='Invalid Month Range'
				select @Errormessage
			End
		set @reportingperiod_neworders =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='New Orders')

 

if (month(@reportingperiod_neworders) between 1 and 3)

 /*[dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk] these 3 columns data required*/

   begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'New Orders' AS [Data Source],
	[New/ CO],[JV/Non-JV],NULL AS BLPW,[External Product Line],[Customer],NULL AS [Seq No],NULL AS [Sub Title],NULL AS [Calculation],
	NULL AS [Category],NULL AS [Facility],NULL AS [Commentary],@reportingperiod_neworders AS TransactionDate,'Q1' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jan Q Latest Update','Jan MB','Jan F2') THEN 1
		WHEN datasubclass_up IN ('Feb Q Latest Update','Feb MB','Feb F2') THEN 2
		WHEN datasubclass_up IN ('Mar Q Latest Update','Mar MB','Mar F2') THEN 3 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jan Q Latest Update','Feb Q Latest Update','Mar Q Latest Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Jan MB','Feb MB','Mar MB') then 'MB Amount'
						 when datasubclass_up in ('Total  MB') then 'Total MB'
						 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
						 when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
						 when datasubclass_up in ('Jan F2','Feb F2','Mar F2') then 'F2 Amount'
						 when datasubclass_up in ('Total  F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [#],[Business Line] ,[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer]
			,isnull([Jan Q Latest Update], '') AS [Jan Q Latest Update]
			,isnull([Feb Q Latest Update], '') AS [Feb Q Latest Update]
			,isnull([Mar Q Latest Update], '') AS [Mar Q Latest Update]
			,isnull([Total  Q Latest Update], '') AS [Total  Q Latest Update]
			,isnull([As booked $GP  Q Latest Update], '') AS [As booked $GP  Q Latest Update]
			,isnull([GP% Q Latest Update], '') AS [GP% Q Latest Update]
			,isnull([Jan MB], '') AS [Jan MB]
			,isnull([Feb MB], '') AS [Feb MB]
			,isnull([Mar MB], '') AS [Mar MB]
			,isnull([Total  MB], '') AS [Total  MB]
			,isnull([Jan Delta MB], '') AS [Jan Delta MB]
			,isnull([Feb Delta MB], '') AS [Feb Delta MB]
			,isnull([Mar Delta MB], '') AS [Mar Delta MB]
			,isnull([Delta MB], '') AS [Delta MB]
			,isnull([Total  Prev Qtr], '') AS [Total  Prev Qtr]
			,isnull([Total  Delta Prev Qtr], '') AS [Total  Delta Prev Qtr]
			,isnull([Total  Current Qtr], '') AS [Total  Current Qtr]
			,isnull([Delta Current Qtr], '') AS [Delta Current Qtr]
			,isnull([Jan F2], '') AS [Jan F2]
			,isnull([Feb F2], '') AS [Feb F2]
			,isnull([Mar F2], '') AS [Mar F2]
			,isnull([Total  F2], '') AS [Total  F2]
			,isnull([Jan Delta F2], '') AS [Jan Delta F2]
			,isnull([Feb Delta F2], '') AS [Feb Delta F2]
			,isnull([Mar Delta F2], '') AS [Mar Delta F2]
			,isnull([Delta F2], '') AS [Delta F2]
			,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
		 FROM [fss].[stage_fss_neworders_v]
		WHERE isnull([Project Title],'')<>'' and isnull([Project no.],'')<>'' and 
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR [month] IN 
		(
				[Jan Q Latest Update],[Feb Q Latest Update],[Mar Q Latest Update],[Total  Q Latest Update],[As booked $GP  Q Latest Update]
				,[GP% Q Latest Update],[Jan MB],[Feb MB],[Mar MB],[Total  MB],[Jan Delta MB],[Feb Delta MB],[Mar Delta MB],[Delta MB]
				,[Total  Prev Qtr],[Total  Delta Prev Qtr],[Total  Current Qtr],[Delta Current Qtr],[Jan F2],[Feb F2],[Mar F2],[Total  F2],
				[Jan Delta F2],[Feb Delta F2],[Mar Delta F2],[Delta F2])
		) AS unpvt
	) b
INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
	AND trim(b.[Project Title])=trim(c.[Project_Title])
INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
	AND d.data_class_name = 'Amount'
INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
 end

if (month(@reportingperiod_neworders) between 4 and 6)


   begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'New Orders' AS [Data Source],
	[New/ CO],[JV/Non-JV],NULL AS BLPW,[External Product Line],[Customer],NULL AS [Seq No],NULL AS [Sub Title],NULL AS [Calculation],
	NULL AS [Category],NULL AS [Facility],NULL AS [Commentary],@reportingperiod_neworders AS TransactionDate,'Q2' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Apr Q Latest Update','Apr MB','Apr F2') THEN 4
		WHEN datasubclass_up IN ('May Q Latest Update','May MB','May F2') THEN 5
		WHEN datasubclass_up IN ('Jun Q Latest Update','Jun MB','Jun F2') THEN 6 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer],amount,datasubclass_up
				   ,case when datasubclass_up in ('Apr Q Latest Update','May Q Latest Update','Jun Q Latest Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Apr MB','May MB','Jun MB') then 'MB Amount'
						 when datasubclass_up in ('Total  MB') then 'Total MB'
						 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
						 when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
						 when datasubclass_up in ('Apr F2','May F2','Jun F2') then 'F2 Amount'
						 when datasubclass_up in ('Total  F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer]
			,isnull([Apr Q Latest Update], '') AS [Apr Q Latest Update]
			,isnull([May Q Latest Update], '') AS [May Q Latest Update]
			,isnull([Jun Q Latest Update], '') AS [Jun Q Latest Update]
			,isnull([Total  Q Latest Update], '') AS [Total  Q Latest Update]
			,isnull([As booked $GP  Q Latest Update], '') AS [As booked $GP  Q Latest Update]
			,isnull([GP% Q Latest Update], '') AS [GP% Q Latest Update]
			,isnull([Apr MB], '') AS [Apr MB]
			,isnull([May MB], '') AS [May MB]
			,isnull([Jun MB], '') AS [Jun MB]
			,isnull([Total  MB], '') AS [Total  MB]
			,isnull([Apr Delta MB], '') AS [Apr Delta MB]
			,isnull([May Delta MB], '') AS [May Delta MB]
			,isnull([Jun Delta MB], '') AS [Jun Delta MB]
			,isnull([Delta MB], '') AS [Delta MB]
			,isnull([Total  Prev Qtr], '') AS [Total  Prev Qtr]
			,isnull([Total  Delta Prev Qtr], '') AS [Total  Delta Prev Qtr]
			,isnull([Total  Current Qtr], '') AS [Total  Current Qtr]
			,isnull([Delta Current Qtr], '') AS [Delta Current Qtr]
			,isnull([Apr F2], '') AS [Apr F2]
			,isnull([May F2], '') AS [May F2]
			,isnull([Jun F2], '') AS [Jun F2]
			,isnull([Total  F2], '') AS [Total  F2]
			,isnull([Apr Delta F2], '') AS [Apr Delta F2]
			,isnull([May Delta F2], '') AS [May Delta F2]
			,isnull([Jun Delta F2], '') AS [Jun Delta F2]
			,isnull([Delta F2], '') AS [Delta F2]
			,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
		FROM [fss].[stage_fss_neworders_v]
		WHERE isnull([Project Title],'')<>'' and isnull([Project no.],'')<>'' and 
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Apr Q Latest Update],[May Q Latest Update],[Jun Q Latest Update],[Total  Q Latest Update],[As booked $GP  Q Latest Update]
				,[GP% Q Latest Update],[Apr MB],[May MB],[Jun MB],[Total  MB],[Apr Delta MB],[May Delta MB],[Jun Delta MB],[Delta MB]
				,[Total  Prev Qtr],[Total  Delta Prev Qtr],[Total  Current Qtr],[Delta Current Qtr],[Apr F2],[May F2],[Jun F2],[Total  F2],
				[Apr Delta F2],[May Delta F2],[Jun Delta F2],[Delta F2])
		) AS unpvt
	) b
INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
	AND trim(b.[Project Title])=trim(c.[Project_Title])
INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
	AND d.data_class_name = 'Amount'
INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

 end

 

if (month(@reportingperiod_neworders) between 7 and 9)

 begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	

SELECT c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'New Orders' AS [Data Source],
	[New/ CO],[JV/Non-JV],NULL AS BLPW,[External Product Line],[Customer],NULL AS [Seq No],NULL AS [Sub Title],NULL AS [Calculation],
	NULL AS [Category],NULL AS [Facility],NULL AS [Commentary],@reportingperiod_neworders AS TransactionDate,'Q3' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Jul Q Latest Update','Jul MB','Jul F2') THEN 7
		WHEN datasubclass_up IN ('Aug Q Latest Update','Aug MB','Aug F2') THEN 8
		WHEN datasubclass_up IN ('Sep Q Latest Update','Sep MB','Sep F2') THEN 9 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer],amount,datasubclass_up
				   ,case when datasubclass_up in ('Jul Q Latest Update','Aug Q Latest Update','Sep Q Latest Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Jul MB','Aug MB','Sep MB') then 'MB Amount'
						 when datasubclass_up in ('Total  MB') then 'Total MB'
						 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
						 when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
						 when datasubclass_up in ('Jul F2','Aug F2','Sep F2') then 'F2 Amount'
						 when datasubclass_up in ('Total  F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer]
			,isnull([Jul Q Latest Update], '') AS [Jul Q Latest Update]
			,isnull([Aug Q Latest Update], '') AS [Aug Q Latest Update]
			,isnull([Sep Q Latest Update], '') AS [Sep Q Latest Update]
			,isnull([Total  Q Latest Update], '') AS [Total  Q Latest Update]
			,isnull([As booked $GP  Q Latest Update], '') AS [As booked $GP  Q Latest Update]
			,isnull([GP% Q Latest Update], '') AS [GP% Q Latest Update]
			,isnull([Jul MB], '') AS [Jul MB]
			,isnull([Aug MB], '') AS [Aug MB]
			,isnull([Sep MB], '') AS [Sep MB]
			,isnull([Total  MB], '') AS [Total  MB]
			,isnull([Jul Delta MB], '') AS [Jul Delta MB]
			,isnull([Aug Delta MB], '') AS [Aug Delta MB]
			,isnull([Sep Delta MB], '') AS [Sep Delta MB]
			,isnull([Delta MB], '') AS [Delta MB]
			,isnull([Total  Prev Qtr], '') AS [Total  Prev Qtr]
			,isnull([Total  Delta Prev Qtr], '') AS [Total  Delta Prev Qtr]
			,isnull([Total  Current Qtr], '') AS [Total  Current Qtr]
			,isnull([Delta Current Qtr], '') AS [Delta Current Qtr]
			,isnull([Jul F2], '') AS [Jul F2]
			,isnull([Aug F2], '') AS [Aug F2]
			,isnull([Sep F2], '') AS [Sep F2]
			,isnull([Total  F2], '') AS [Total  F2]
			,isnull([Jul Delta F2], '') AS [Jul Delta F2]
			,isnull([Aug Delta F2], '') AS [Aug Delta F2]
			,isnull([Sep Delta F2], '') AS [Sep Delta F2]
			,isnull([Delta F2], '') AS [Delta F2]
			,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
		FROM [fss].[stage_fss_neworders_v]
		WHERE isnull([Project Title],'')<>'' and isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Jul Q Latest Update],[Aug Q Latest Update],[Sep Q Latest Update],[Total  Q Latest Update],[As booked $GP  Q Latest Update]
				,[GP% Q Latest Update],[Jul MB],[Aug MB],[Sep MB],[Total  MB],[Jul Delta MB],[Aug Delta MB],[Sep Delta MB],[Delta MB]
				,[Total  Prev Qtr],[Total  Delta Prev Qtr],[Total  Current Qtr],[Delta Current Qtr],[Jul F2],[Aug F2],[Sep F2],[Total  F2],
				[Jul Delta F2],[Aug Delta F2],[Sep Delta F2],[Delta F2])
		) AS unpvt
	) b
INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
	AND trim(b.[Project Title]) = trim(c.[Project_Title])
INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
	AND d.data_class_name = 'Amount'
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

 end

 

if (month(@reportingperiod_neworders) between 10 and 12)

	begin 
       insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
	  

SELECT c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,'New Orders' AS [Data Source],
	[New/ CO],[JV/Non-JV],NULL AS BLPW,[External Product Line],[Customer],NULL AS [Seq No],NULL AS [Sub Title],NULL AS [Calculation],
	NULL AS [Category],NULL AS [Facility],NULL AS [Commentary],@reportingperiod_neworders AS TransactionDate,'Q4' AS [Quarter],
	CASE 
		WHEN datasubclass_up IN ('Oct Q Latest Update','Oct MB','Oct F2') THEN 10
		WHEN datasubclass_up IN ('Nov Q Latest Update','Nov MB','Nov F2') THEN 11
		WHEN datasubclass_up IN ('Dec Q Latest Update','Dec MB','Dec F2') THEN 12 ELSE 0 END AS month,amount,getdate() AS create_date_time
FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer],amount,datasubclass_up
				   ,case when datasubclass_up in ('Oct Q Latest Update','Nov Q Latest Update','Dec Q Latest Update') then 'Curr Qtr Update'
						 when datasubclass_up in ('Oct MB','Nov MB','Dec MB') then 'MB Amount'
						 when datasubclass_up in ('Total  MB') then 'Total MB'
						 when datasubclass_up in ('Total  Prev Qtr') then 'Total  Prev Qtr'
						 when datasubclass_up in ('Total  Current Qtr') then 'Total  Current Qtr'
						 when datasubclass_up in ('Oct F2','Nov F2','Dec F2') then 'F2 Amount'
						 when datasubclass_up in ('Total  F2') then 'Total F2'
						 else datasubclass_up end as datasubclass
	FROM (
		SELECT [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[External Product Line],[Project Title],[Customer]
			,isnull([Oct Q Latest Update], '') AS [Oct Q Latest Update]
			,isnull([Nov Q Latest Update], '') AS [Nov Q Latest Update]
			,isnull([Dec Q Latest Update], '') AS [Dec Q Latest Update]
			,isnull([Total  Q Latest Update], '') AS [Total  Q Latest Update]
			,isnull([As booked $GP  Q Latest Update], '') AS [As booked $GP  Q Latest Update]
			,isnull([GP% Q Latest Update], '') AS [GP% Q Latest Update]
			,isnull([Oct MB], '') AS [Oct MB]
			,isnull([Nov MB], '') AS [Nov MB]
			,isnull([Dec MB], '') AS [Dec MB]
			,isnull([Total  MB], '') AS [Total  MB]
			,isnull([Oct Delta MB], '') AS [Oct Delta MB]
			,isnull([Nov Delta MB], '') AS [Nov Delta MB]
			,isnull([Dec Delta MB], '') AS [Dec Delta MB]
			,isnull([Delta MB], '') AS [Delta MB]
			,isnull([Total  Prev Qtr], '') AS [Total  Prev Qtr]
			,isnull([Total  Delta Prev Qtr], '') AS [Total  Delta Prev Qtr]
			,isnull([Total  Current Qtr], '') AS [Total  Current Qtr]
			,isnull([Delta Current Qtr], '') AS [Delta Current Qtr]
			,isnull([Oct F2], '') AS [Oct F2]
			,isnull([Nov F2], '') AS [Nov F2]
			,isnull([Dec F2], '') AS [Dec F2]
			,isnull([Total  F2], '') AS [Total  F2]
			,isnull([Oct Delta F2], '') AS [Oct Delta F2]
			,isnull([Nov Delta F2], '') AS [Nov Delta F2]
			,isnull([Dec Delta F2], '') AS [Dec Delta F2]
			,isnull([Delta F2], '') AS [Delta F2]
			,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
		FROM [fss].[stage_fss_neworders_v]
		WHERE isnull([Project Title],'')<>'' and isnull([Project no.],'')<>''  AND
		[zCreatedDateTime] = @datetimekey
		) a
	unpivot(amount FOR datasubclass_up IN 
		(
				[Oct Q Latest Update],[Nov Q Latest Update],[Dec Q Latest Update],[Total  Q Latest Update],[As booked $GP  Q Latest Update]
				,[GP% Q Latest Update],[Oct MB],[Nov MB],[Dec MB],[Total  MB],[Oct Delta MB],[Nov Delta MB],[Dec Delta MB],[Delta MB]
				,[Total  Prev Qtr],[Total  Delta Prev Qtr],[Total  Current Qtr],[Delta Current Qtr],[Oct F2],[Nov F2],[Dec F2],[Total  F2],
				[Oct Delta F2],[Nov Delta F2],[Dec Delta F2],[Delta F2])
		) AS unpvt
	) b
INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
	AND trim(b.[Project Title]) = trim(c.[Project_Title])
INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
	AND d.data_class_name = 'Amount'
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line

 end
 END