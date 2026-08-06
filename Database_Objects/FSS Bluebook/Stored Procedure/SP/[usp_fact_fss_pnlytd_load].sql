CREATE PROC [dbo].[usp_fact_fss_pnlytd_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

   declare @reportingperiod_pandl_ytd date
              if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
                     BEGIN
                           set @Errormessage='Invalid Month Range'
                           select @Errormessage
                     End
              set @reportingperiod_pandl_ytd =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='P&L YTD')
			  select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_PandL_YTD_V

insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time],[Commentary2] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'P&L YTD' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],[Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_pandl_ytd as TransactionDate,null as [Quarter],
0 as month
,amount,getdate() as create_date_time,[Commentary2]
from (
SELECT [Column 1],[Column 2],[Seq No],[Sub Title],[Calculation],[Business Line],[Category],amount,datasubclass_up,
	 case when datasubclass_up in ('YTD Hyp') then 'YTD Hyp'
     when datasubclass_up in ('YTD ADJ')then 'YTD ADJ'
     when datasubclass_up in ('YTD Update')then 'YTD Update'
     when datasubclass_up in ('Total MB')then 'Total MB'
     when datasubclass_up in ('Total F2')then 'Total F2'
     else datasubclass_up end as datasubclass,[Commentary],[Commentary2]
FROM (
 SELECT isnull([Column 1],'') as [Column 1]
,isnull([Column 2],'') as [Column 2]
,isnull([YTD Hyp],'') as [YTD Hyp]
,isnull([To-Go Latest Update],'') as [To-Go Latest Update]
,isnull([YTD Update],'') as [YTD Update]
,isnull([Total F2],'') as [Total F2]
,isnull([Seq No],'') as [Seq No]
,isnull([Category],'') as [Category]
,isnull([Sub Title],'') as [Sub Title]
,isnull([YTD ADJ],'') as [YTD ADJ]
,isnull([Business Line],'') as [Business Line]
,isnull([Commentary],'') as [Commentary]
,isnull([Total MB],'') as [Total MB]
,isnull([Delta MB],'') as [Delta MB]
,isnull([Calculation],'') as [Calculation]
,isnull([Total CY],'') as [Total CY]
,isnull([Delta F2],'') as [Delta F2]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
,isnull([Commentary2],'') as  [Commentary2]
from [fss].[stage_fss_PandL_YTD_V] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ( [YTD Hyp],[YTD ADJ],[YTD Update],[To-Go Latest Update],[Total CY],[Total MB],[Delta MB],
			  [Total F2],[Delta F2]
 )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('YTD Hyp','YTD ADJ','YTD Update','Total MB','Total F2','To-Go Latest Update')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 END