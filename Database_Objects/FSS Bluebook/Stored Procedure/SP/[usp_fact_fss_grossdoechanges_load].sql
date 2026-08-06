CREATE PROC [dbo].[usp_fact_fss_grossdoechanges_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

    DECLARE @reportingperiod_gross_DOE_changes DATE

              if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
                     BEGIN
                           set @Errormessage='Invalid Month Range'
                           select @Errormessage
					
                     End
              set @reportingperiod_gross_DOE_changes =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='Gross DOE Changes')
			  select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_Gross_DOE_Changes_V

insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'Gross DOE Changes' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],null as [External Product Line],null as [Customer],
[Seq No],[Sub Title],null as [Calculation],[Category],null as [Facility], [Commentary],@reportingperiod_gross_DOE_changes as TransactionDate,null as [Quarter],
0 as month
,amount,getdate() as create_date_time 
from (
SELECT [Business Line],[Seq No],[Sub Title],[Category],amount,datasubclass_up,
	 [Commentary]
FROM (
 SELECT 
isnull([Business Line],'') as [Business Line]
,isnull([Seq No],'') as [Seq No]
,isnull([Sub Title],'') as [Sub Title]
,isnull(Category,'') as [Category]
,isnull([Activity Driven Costs],'') as [Activity Driven Costs]
,isnull([Stock Comp / Bonus],'') as [Stock Comp / Bonus]
,isnull([Corp Allocation],'') as [Corp Allocation]
,isnull([Other Cost Changes],'') as [Other Cost Changes]
,isnull([Cost Reduction Program],'') as [Cost Reduction Program]
,isnull([Business Interuption on IT outage],'') as [Business Interuption on IT outage]
,isnull(Timing,'') as [Timing]
,isnull([Total DOE Related changes],'') as [Total DOE Related changes]
,isnull([Check],'') as [Check]
,isnull(x1,'') as [x1]
,isnull(Commentary,'') as [Commentary]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_Gross_DOE_Changes_V] WHERE [zCreatedDateTime] = @datetimekey
             --where category ='Backlog'
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ( [Activity Driven Costs],[Stock Comp / Bonus],[Corp Allocation],[Other Cost Changes],
			  [Cost Reduction Program],[Business Interuption on IT outage],[Timing]
 )
              ) AS unpvt
              )b
              --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--     AND b.[Project Title] = c.[Project_Title]
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass_up = d.data_sub_class_name
       AND d.data_class_name = 'Amount' and data_sub_class_name in ('Activity Driven Costs','Stock Comp / Bonus','Corp Allocation','Other Cost Changes',
			  'Cost Reduction Program','Business Interuption on IT outage','Timing')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'
 END