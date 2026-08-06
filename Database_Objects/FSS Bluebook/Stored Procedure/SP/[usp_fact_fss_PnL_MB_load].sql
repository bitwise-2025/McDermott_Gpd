CREATE PROC [dbo].[usp_fact_fss_PnL_MB_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

   declare @reportingperiod_pandl_mb date
              if exists (select 1 from fss.stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
                     BEGIN
                           set @Errormessage='Invalid Month Range'
                           select @Errormessage
                     End
              set @reportingperiod_pandl_mb =(select distinct [Reporting Period] from fss.stage_fss_reportingperiod_V where [Data source]='P&L MB')
			  select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_PandL_mb_V

if (month(@reportingperiod_pandl_mb) between 1 and 3)

 begin 

	insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time],[Commentary2] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'P&L MB' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],[Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_pandl_mb as TransactionDate,'Q1' as [Quarter],
case when datasubclass_up in ('Jan Curr Qtr Update HYP','Jan Curr Qtr Update ADJ','Jan Curr Qtr Update','Jan MB','Jan F2') then 1
     when datasubclass_up in ('Feb Curr Qtr Update HYP','Feb Curr Qtr Update ADJ','Feb Curr Qtr Update','Feb MB','Feb F2') then 2
       when datasubclass_up in ('Mar Curr Qtr Update HYP','Mar Curr Qtr Update ADJ','Mar Curr Qtr Update','Mar MB','Mar F2') then 3 else 0 end as month
,amount,getdate() as create_date_time,[Commentary2]

from (
              SELECT 
              [Column 1],[Column 2],[Seq No],[Sub Title],[Calculation],[Business Line],[Category],amount,datasubclass_up,
case when datasubclass_up in ('Jan Curr Qtr Update HYP','Feb Curr Qtr Update HYP','Mar Curr Qtr Update HYP')then 'Curr Qtr Update HYP'
     when datasubclass_up in ('Jan Curr Qtr Update ADJ','Feb Curr Qtr Update ADJ','Mar Curr Qtr Update ADJ')then 'Curr Qtr Update ADJ'
     when datasubclass_up in ('Jan Curr Qtr Update','Feb Curr Qtr Update','Mar Curr Qtr Update')then 'Curr Qtr Update'
       when datasubclass_up in ('Jan MB','Feb MB','Mar MB')then 'MB Amount'
       when datasubclass_up in ('Jan F2','Feb F2','Mar F2')then 'F2 Amount'
     else datasubclass_up end as datasubclass,[Commentary],[Commentary2]

       FROM (
              SELECT 
 isnull([Column 1],'') as  [Column 1],isnull([Column 2],'') as  [Column 2],isnull([Seq No],'') as  [Seq No]
,isnull([Sub Title],'') as  [Sub Title],isnull([Calculation],'') as  [Calculation],isnull([Business Line],'') as  [Business Line]
,isnull([Category],'') as  [Category],isnull([Jan Curr Qtr Update HYP],'') as  [Jan Curr Qtr Update HYP]
,isnull([Feb Curr Qtr Update HYP],'') as  [Feb Curr Qtr Update HYP],isnull([Mar Curr Qtr Update HYP],'') as  [Mar Curr Qtr Update HYP]
,isnull([Total Curr Qtr Update HYP],'') as  [Total Curr Qtr Update HYP],isnull([Jan Curr Qtr Update ADJ],'') as  [Jan Curr Qtr Update ADJ]
,isnull([Feb Curr Qtr Update ADJ],'') as  [Feb Curr Qtr Update ADJ],isnull([Mar Curr Qtr Update ADJ],'') as  [Mar Curr Qtr Update ADJ]
,isnull([Total Curr Qtr Update ADJ],'') as  [Total Curr Qtr Update ADJ],isnull([Jan Curr Qtr Update],'') as  [Jan Curr Qtr Update]
,isnull([Feb Curr Qtr Update],'') as  [Feb Curr Qtr Update],isnull([Mar Curr Qtr Update],'') as  [Mar Curr Qtr Update]
,isnull([Total Curr Qtr Update],'') as  [Total Curr Qtr Update],isnull([Jan MB],'') as  [Jan MB],isnull([Feb MB],'') as  [Feb MB]
,isnull([Mar MB],'') as  [Mar MB],isnull([Total MB],'') as  [Total MB],isnull([Jan Delta MB],'') as  [Jan Delta MB]
,isnull([Feb Delta MB],'') as  [Feb Delta MB],isnull([Mar Delta MB],'') as  [Mar Delta MB],isnull([Total Delta MB],'') as  [Total Delta MB]
,isnull([Jan F2],'') as  [Jan F2],isnull([Feb F2],'') as  [Feb F2],isnull([Mar F2],'') as  [Mar F2],isnull([Total F2],'') as  [Total F2]
,isnull([Jan F2 Delta],'') as  [Jan F2 Delta],isnull([Feb F2 Delta],'') as  [Feb F2 Delta],isnull([Mar F2 Delta],'') as  [Mar F2 Delta]
,isnull([Total F2 Delta],'') as  [Total F2 Delta],isnull([Commentary],'') as  [Commentary],[zSourceFileName],[zCreatedDateTime],[zVersionNo]
,isnull([Commentary2],'') as  [Commentary2]
from [fss].[stage_fss_PandL_MB_v] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ([Jan Curr Qtr Update HYP],[Feb Curr Qtr Update HYP],[Mar Curr Qtr Update HYP],[Total Curr Qtr Update HYP],
              [Jan Curr Qtr Update ADJ],[Feb Curr Qtr Update ADJ],[Mar Curr Qtr Update ADJ],[Total Curr Qtr Update ADJ],
              [Jan Curr Qtr Update],[Feb Curr Qtr Update],[Mar Curr Qtr Update],[Total Curr Qtr Update],
              [Jan MB],[Feb MB],[Mar MB],[Total MB],[Jan Delta MB],[Feb Delta MB],[Mar Delta MB],[Total Delta MB],
              [Jan F2],[Feb F2],[Mar F2],[Total F2],[Jan F2 Delta],[Feb F2 Delta],[Mar F2 Delta],[Total F2 Delta]
                           )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('F2 Amount','MB Amount','Curr Qtr Update','Curr Qtr Update HYP','Curr Qtr Update ADJ')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

end

if (month(@reportingperiod_pandl_mb) between 4 and 6)

 begin 

	insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time],[Commentary2] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'P&L MB' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],[Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_pandl_mb as TransactionDate,'Q2' as [Quarter],
case when datasubclass_up in ('Apr Curr Qtr Update HYP','Apr Curr Qtr Update ADJ','Apr Curr Qtr Update','Apr MB','Apr F2') then 4
     when datasubclass_up in ('May Curr Qtr Update HYP','May Curr Qtr Update ADJ','May Curr Qtr Update','May MB','May F2') then 5
       when datasubclass_up in ('Jun Curr Qtr Update HYP','Jun Curr Qtr Update ADJ','Jun Curr Qtr Update','Jun MB','Jun F2') then 6 else 0 end as month
,amount,getdate() as create_date_time ,[Commentary2]

from (
              SELECT 
              [Column 1],[Column 2],[Seq No],[Sub Title],[Calculation],[Business Line],[Category],amount,datasubclass_up,
case when datasubclass_up in ('Apr Curr Qtr Update HYP','May Curr Qtr Update HYP','Jun Curr Qtr Update HYP')then 'Curr Qtr Update HYP'
     when datasubclass_up in ('Apr Curr Qtr Update ADJ','May Curr Qtr Update ADJ','Jun Curr Qtr Update ADJ')then 'Curr Qtr Update ADJ'
     when datasubclass_up in ('Apr Curr Qtr Update','May Curr Qtr Update','Jun Curr Qtr Update')then 'Curr Qtr Update'
       when datasubclass_up in ('Apr MB','May MB','Jun MB')then 'MB Amount'
       when datasubclass_up in ('Apr F2','May F2','Jun F2')then 'F2 Amount'
     else datasubclass_up end as datasubclass,[Commentary],[Commentary2]

       FROM (
              SELECT 
 isnull([Column 1],'') as  [Column 1],isnull([Column 2],'') as  [Column 2],isnull([Seq No],'') as  [Seq No]
,isnull([Sub Title],'') as  [Sub Title],isnull([Calculation],'') as  [Calculation],isnull([Business Line],'') as  [Business Line],isnull([Category],'') as  [Category]
,isnull([Apr Curr Qtr Update HYP],'') as  [Apr Curr Qtr Update HYP],isnull([May Curr Qtr Update HYP],'') as  [May Curr Qtr Update HYP]
,isnull([Jun Curr Qtr Update HYP],'') as  [Jun Curr Qtr Update HYP],isnull([Total Curr Qtr Update HYP],'') as  [Total Curr Qtr Update HYP]
,isnull([Apr Curr Qtr Update ADJ],'') as  [Apr Curr Qtr Update ADJ],isnull([May Curr Qtr Update ADJ],'') as  [May Curr Qtr Update ADJ]
,isnull([Jun Curr Qtr Update ADJ],'') as  [Jun Curr Qtr Update ADJ],isnull([Total Curr Qtr Update ADJ],'') as  [Total Curr Qtr Update ADJ]
,isnull([Apr Curr Qtr Update],'') as  [Apr Curr Qtr Update],isnull([May Curr Qtr Update],'') as  [May Curr Qtr Update]
,isnull([Jun Curr Qtr Update],'') as  [Jun Curr Qtr Update],isnull([Total Curr Qtr Update],'') as  [Total Curr Qtr Update]
,isnull([Apr MB],'') as  [Apr MB],isnull([May MB],'') as  [May MB],isnull([Jun MB],'') as  [Jun MB],isnull([Total MB],'') as  [Total MB]
,isnull([Apr Delta MB],'') as  [Apr Delta MB],isnull([May Delta MB],'') as  [May Delta MB],isnull([Jun Delta MB],'') as  [Jun Delta MB]
,isnull([Total Delta MB],'') as  [Total Delta MB],isnull([Apr F2],'') as  [Apr F2],isnull([May F2],'') as  [May F2],isnull([Jun F2],'') as  [Jun F2]
,isnull([Total F2],'') as  [Total F2],isnull([Apr F2 Delta],'') as  [Apr F2 Delta],isnull([May F2 Delta],'') as  [May F2 Delta],isnull([Jun F2 Delta],'') as  [Jun F2 Delta]
,isnull([Total F2 Delta],'') as  [Total F2 Delta],isnull([Commentary],'') as  [Commentary],[zSourceFileName],[zCreatedDateTime],[zVersionNo]
,isnull([Commentary2],'') as  [Commentary2]
from [fss].[stage_fss_PandL_MB_v] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ([Apr Curr Qtr Update HYP],[May Curr Qtr Update HYP],[Jun Curr Qtr Update HYP],[Total Curr Qtr Update HYP],
              [Apr Curr Qtr Update ADJ],[May Curr Qtr Update ADJ],[Jun Curr Qtr Update ADJ],[Total Curr Qtr Update ADJ],
              [Apr Curr Qtr Update],[May Curr Qtr Update],[Jun Curr Qtr Update],[Total Curr Qtr Update],
              [Apr MB],[May MB],[Jun MB],[Total MB],[Apr Delta MB],[May Delta MB],[Jun Delta MB],[Total Delta MB],
              [Apr F2],[May F2],[Jun F2],[Total F2],[Apr F2 Delta],[May F2 Delta],[Jun F2 Delta],[Total F2 Delta]
                           )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('F2 Amount','MB Amount','Curr Qtr Update','Curr Qtr Update HYP','Curr Qtr Update ADJ')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

end


if (month(@reportingperiod_pandl_mb) between 7 and 9)

 begin 

	insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time], [Commentary2] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'P&L MB' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],[Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_pandl_mb as TransactionDate,'Q3' as [Quarter],
case when datasubclass_up in ('Jul Curr Qtr Update HYP','Jul Curr Qtr Update ADJ','Jul Curr Qtr Update','Jul MB','Jul F2') then 7
     when datasubclass_up in ('Aug Curr Qtr Update HYP','Aug Curr Qtr Update ADJ','Aug Curr Qtr Update','Aug MB','Aug F2') then 8
       when datasubclass_up in ('Sep Curr Qtr Update HYP','Sep Curr Qtr Update ADJ','Sep Curr Qtr Update','Sep MB','Sep F2') then 9 else 0 end as month
,amount,getdate() as create_date_time ,[Commentary2]

from (
              SELECT 
              [Column 1],[Column 2],[Seq No],[Sub Title],[Calculation],[Business Line],[Category],amount,datasubclass_up,
case when datasubclass_up in ('Jul Curr Qtr Update HYP','Aug Curr Qtr Update HYP','Sep Curr Qtr Update HYP')then 'Curr Qtr Update HYP'
     when datasubclass_up in ('Jul Curr Qtr Update ADJ','Aug Curr Qtr Update ADJ','Sep Curr Qtr Update ADJ')then 'Curr Qtr Update ADJ'
     when datasubclass_up in ('Jul Curr Qtr Update','Aug Curr Qtr Update','Sep Curr Qtr Update')then 'Curr Qtr Update'
       when datasubclass_up in ('Jul MB','Aug MB','Sep MB')then 'MB Amount'
       when datasubclass_up in ('Jul F2','Aug F2','Sep F2')then 'F2 Amount'
     else datasubclass_up end as datasubclass,[Commentary],[Commentary2]

       FROM (
              SELECT 
 isnull([Column 1],'') as  [Column 1],isnull([Column 2],'') as  [Column 2],isnull([Seq No],'') as  [Seq No],isnull([Sub Title],'') as  [Sub Title]
,isnull([Calculation],'') as  [Calculation],isnull([Business Line],'') as  [Business Line],isnull([Category],'') as  [Category]
,isnull([Jul Curr Qtr Update HYP],'') as  [Jul Curr Qtr Update HYP],isnull([Aug Curr Qtr Update HYP],'') as  [Aug Curr Qtr Update HYP]
,isnull([Sep Curr Qtr Update HYP],'') as  [Sep Curr Qtr Update HYP],isnull([Total Curr Qtr Update HYP],'') as  [Total Curr Qtr Update HYP]
,isnull([Jul Curr Qtr Update ADJ],'') as  [Jul Curr Qtr Update ADJ],isnull([Aug Curr Qtr Update ADJ],'') as  [Aug Curr Qtr Update ADJ]
,isnull([Sep Curr Qtr Update ADJ],'') as  [Sep Curr Qtr Update ADJ],isnull([Total Curr Qtr Update ADJ],'') as  [Total Curr Qtr Update ADJ]
,isnull([Jul Curr Qtr Update],'') as  [Jul Curr Qtr Update],isnull([Aug Curr Qtr Update],'') as  [Aug Curr Qtr Update]
,isnull([Sep Curr Qtr Update],'') as  [Sep Curr Qtr Update],isnull([Total Curr Qtr Update],'') as  [Total Curr Qtr Update]
,isnull([Jul MB],'') as  [Jul MB],isnull([Aug MB],'') as  [Aug MB],isnull([Sep MB],'') as  [Sep MB],isnull([Total MB],'') as  [Total MB],isnull([Jul Delta MB],'') as  [Jul Delta MB]
,isnull([Aug Delta MB],'') as  [Aug Delta MB],isnull([Sep Delta MB],'') as  [Sep Delta MB],isnull([Total Delta MB],'') as  [Total Delta MB]
,isnull([Jul F2],'') as  [Jul F2],isnull([Aug F2],'') as  [Aug F2],isnull([Sep F2],'') as  [Sep F2],isnull([Total F2],'') as  [Total F2]
,isnull([Jul F2 Delta],'') as  [Jul F2 Delta],isnull([Aug F2 Delta],'') as  [Aug F2 Delta],isnull([Sep F2 Delta],'') as  [Sep F2 Delta]
,isnull([Total F2 Delta],'') as  [Total F2 Delta],isnull([Commentary],'') as  [Commentary],[zSourceFileName],[zCreatedDateTime],[zVersionNo]
, isnull([Commentary2],'') as  [Commentary2]
from [fss].[stage_fss_PandL_MB_v] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ([Jul Curr Qtr Update HYP],[Aug Curr Qtr Update HYP],[Sep Curr Qtr Update HYP],[Total Curr Qtr Update HYP],
              [Jul Curr Qtr Update ADJ],[Aug Curr Qtr Update ADJ],[Sep Curr Qtr Update ADJ],[Total Curr Qtr Update ADJ],
              [Jul Curr Qtr Update],[Aug Curr Qtr Update],[Sep Curr Qtr Update],[Total Curr Qtr Update],
              [Jul MB],[Aug MB],[Sep MB],[Total MB],[Jul Delta MB],[Aug Delta MB],[Sep Delta MB],[Total Delta MB],
              [Jul F2],[Aug F2],[Sep F2],[Total F2],[Jul F2 Delta],[Aug F2 Delta],[Sep F2 Delta],[Total F2 Delta]
                           )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('F2 Amount','MB Amount','Curr Qtr Update','Curr Qtr Update HYP','Curr Qtr Update ADJ')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

end

if (month(@reportingperiod_pandl_mb) between 10 and 12)

 begin 

	insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] ,[Commentary2])	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'P&L MB' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],[Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_pandl_mb as TransactionDate,'Q4' as [Quarter],
case when datasubclass_up in ('Oct Curr Qtr Update HYP','Oct Curr Qtr Update ADJ','Oct Curr Qtr Update','Oct MB','Oct F2') then 10
     when datasubclass_up in ('Nov Curr Qtr Update HYP','Nov Curr Qtr Update ADJ','Nov Curr Qtr Update','Nov MB','Nov F2') then 11
       when datasubclass_up in ('Dec Curr Qtr Update HYP','Dec Curr Qtr Update ADJ','Dec Curr Qtr Update','Dec MB','Dec F2') then 12 else 0 end as month
,amount,getdate() as create_date_time , [Commentary2]
from (
              SELECT 
              [Column 1],[Column 2],[Seq No],[Sub Title],[Calculation],[Business Line],[Category],amount,datasubclass_up,
case when datasubclass_up in ('Oct Curr Qtr Update HYP','Nov Curr Qtr Update HYP','Dec Curr Qtr Update HYP')then 'Curr Qtr Update HYP'
     when datasubclass_up in ('Oct Curr Qtr Update ADJ','Nov Curr Qtr Update ADJ','Dec Curr Qtr Update ADJ')then 'Curr Qtr Update ADJ'
     when datasubclass_up in ('Oct Curr Qtr Update','Nov Curr Qtr Update','Dec Curr Qtr Update')then 'Curr Qtr Update'
       when datasubclass_up in ('Oct MB','Nov MB','Dec MB')then 'MB Amount'
       when datasubclass_up in ('Oct F2','Nov F2','Dec F2')then 'F2 Amount'
     else datasubclass_up end as datasubclass,[Commentary],[Commentary2]

       FROM (
              SELECT 
 isnull([Column 1],'') as  [Column 1],isnull([Column 2],'') as  [Column 2],isnull([Seq No],'') as  [Seq No],isnull([Sub Title],'') as  [Sub Title]
,isnull([Calculation],'') as  [Calculation],isnull([Business Line],'') as  [Business Line],isnull([Category],'') as  [Category]
,isnull([Oct Curr Qtr Update HYP],'') as  [Oct Curr Qtr Update HYP],isnull([Nov Curr Qtr Update HYP],'') as  [Nov Curr Qtr Update HYP]
,isnull([Dec Curr Qtr Update HYP],'') as  [Dec Curr Qtr Update HYP],isnull([Total Curr Qtr Update HYP],'') as  [Total Curr Qtr Update HYP]
,isnull([Oct Curr Qtr Update ADJ],'') as  [Oct Curr Qtr Update ADJ],isnull([Nov Curr Qtr Update ADJ],'') as  [Nov Curr Qtr Update ADJ]
,isnull([Dec Curr Qtr Update ADJ],'') as  [Dec Curr Qtr Update ADJ],isnull([Total Curr Qtr Update ADJ],'') as  [Total Curr Qtr Update ADJ]
,isnull([Oct Curr Qtr Update],'') as  [Oct Curr Qtr Update],isnull([Nov Curr Qtr Update],'') as  [Nov Curr Qtr Update]
,isnull([Dec Curr Qtr Update],'') as  [Dec Curr Qtr Update],isnull([Total Curr Qtr Update],'') as  [Total Curr Qtr Update]
,isnull([Oct MB],'') as  [Oct MB],isnull([Nov MB],'') as  [Nov MB],isnull([Dec MB],'') as  [Dec MB],isnull([Total MB],'') as  [Total MB]
,isnull([Oct Delta MB],'') as  [Oct Delta MB],isnull([Nov Delta MB],'') as  [Nov Delta MB],isnull([Dec Delta MB],'') as  [Dec Delta MB]
,isnull([Total Delta MB],'') as  [Total Delta MB],isnull([Oct F2],'') as  [Oct F2],isnull([Nov F2],'') as  [Nov F2],isnull([Dec F2],'') as  [Dec F2]
,isnull([Total F2],'') as  [Total F2],isnull([Oct F2 Delta],'') as  [Oct F2 Delta],isnull([Nov F2 Delta],'') as  [Nov F2 Delta],isnull([Dec F2 Delta],'') as  [Dec F2 Delta]
,isnull([Total F2 Delta],'') as  [Total F2 Delta],isnull([Commentary],'') as  [Commentary],[zSourceFileName],[zCreatedDateTime],[zVersionNo]
,isnull([Commentary2],'') as  [Commentary2]
from [fss].[stage_fss_PandL_MB_v] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ([Oct Curr Qtr Update HYP],[Nov Curr Qtr Update HYP],[Dec Curr Qtr Update HYP],[Total Curr Qtr Update HYP],
              [Oct Curr Qtr Update ADJ],[Nov Curr Qtr Update ADJ],[Dec Curr Qtr Update ADJ],[Total Curr Qtr Update ADJ],
              [Oct Curr Qtr Update],[Nov Curr Qtr Update],[Dec Curr Qtr Update],[Total Curr Qtr Update],
              [Oct MB],[Nov MB],[Dec MB],[Total MB],[Oct Delta MB],[Nov Delta MB],[Dec Delta MB],[Total Delta MB],
              [Oct F2],[Nov F2],[Dec F2],[Total F2],[Oct F2 Delta],[Nov F2 Delta],[Dec F2 Delta],[Total F2 Delta]
                           )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('F2 Amount','MB Amount','Curr Qtr Update','Curr Qtr Update HYP','Curr Qtr Update ADJ')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

end

 END