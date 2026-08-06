CREATE PROC [dbo].[usp_fact_fss_backlogrevenuerolloff_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

   DECLARE @reportingperiod_backlog_revenue_rolloff DATE

              if exists (select 1 from fss.Stage_fss_reportingperiod_V where month([Reporting Period]) not between 0 and 12)
                     BEGIN
                           set @Errormessage='Invalid Month Range'
                           select @Errormessage
					
                     End
              set @reportingperiod_backlog_revenue_rolloff =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='Backlog Revenue Rolloff')
			  select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_Backlog_Revenue_Rolloff_v

insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
      ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
      ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
      ,[Quarter],[Month],[Amount],[created_date_time] )	
SELECT 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,dim_entp_fss_project_nk,
d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,[dim_entp_fss_business_line_nk],
'Backlog Revenue Rolloff' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW],[External Product Offering] as [External Product Line],[Customer],
NULL as [Seq No],[Sub Title],null as [Calculation],NULL as [Category],null as [Facility],NULL as [Commentary],@reportingperiod_backlog_revenue_rolloff as TransactionDate,null as [Quarter],
0 as month
,amount,getdate() as create_date_time 
from (
SELECT [Business Line],[Sub Title],[External Product Offering],[Project No.],[Project Title],[Customer],[Contract Type],
amount,datasubclass_up
FROM (
 SELECT 
isnull([Sub Title],'') as [Sub Title]
,isnull([Business Line],'') as [Business Line]
,isnull([External Product Offering],'') as [External Product Offering]
,isnull([Project No.],'') as [Project No.]
,isnull([Project Title],'') as [Project Title]
,isnull([Customer],'') as [Customer]
,isnull([Contract Type],'') as [Contract Type]
,isnull([Revenue Prev Qtr Backlog],'') as [Revenue Prev Qtr Backlog]
,isnull([GP Prev Qtr Backlog],'') as [GP Prev Qtr Backlog]
,isnull([GP% Prev Qtr Backlog],'') as [GP% Prev Qtr Backlog]
,isnull([POC% Exclude Reset  Prev Qtr Backlog],'') as [POC% Exclude Reset  Prev Qtr Backlog]
,isnull([POC% Prev Qtr Backlog],'') as [POC% Prev Qtr Backlog]
,isnull([Order Intake Curr Qtr Update],'') as [Order Intake Curr Qtr Update]
,isnull([Recog Curr Qtr Update],'') as [Recog Curr Qtr Update]
,isnull([Revenue Curr Qtr Backlog],'') as [Revenue Curr Qtr Backlog]
,isnull([GP Curr Qtr Backlog],'') as [GP Curr Qtr Backlog]
,isnull([GP% Curr Qtr Backlog],'') as [GP% Curr Qtr Backlog]
,isnull([POC% Exclude Reset  Curr Qtr Backlog],'') as [POC% Exclude Reset  Curr Qtr Backlog]
,isnull([POC% Curr Qtr Backlog],'') as [POC% Curr Qtr Backlog]
,isnull([Q1 Backlog Revenue],'') as [Q1 Backlog Revenue]
,isnull([Q2 Backlog Revenue],'') as [Q2 Backlog Revenue]
,isnull([Q3 Backlog Revenue],'') as [Q3 Backlog Revenue]
,isnull([Q4 Backlog Revenue],'') as [Q4 Backlog Revenue]
,isnull([CY Backlog Revenue],'') as [CY Backlog Revenue]
,isnull([Next CY Backlog Revenue],'') as [Next CY Backlog Revenue]
,isnull([Beyond Next CY Backlog Revenue],'') as [Beyond Next CY Backlog Revenue]
,isnull([Q1 Backlog GP],'') as [Q1 Backlog GP]
,isnull([Q2 Backlog GP],'') as [Q2 Backlog GP]
,isnull([Q3 Backlog GP],'') as [Q3 Backlog GP]
,isnull([Q4 Backlog GP],'') as [Q4 Backlog GP]
,isnull([CY Backlog GP],'') as [CY Backlog GP]
,isnull([Next CY Backlog GP],'') as [Next CY Backlog GP]
,isnull([Beyond Next CY Backlog GP],'') as [Beyond Next CY Backlog GP]
,[zSourceFileName],[zCreatedDateTime],[zVersionNo]
from [fss].[stage_fss_Backlog_Revenue_Rolloff_v]
             where ISNULL([Sub Title],'')<>'' and  isnull([Project Title],'')<>'' and --isnull([Project no.],'')<>''  AND  
             [zCreatedDateTime] = @datetimekey
              ) a
       unpivot(amount FOR datasubclass_up IN 
              ( [Revenue Prev Qtr Backlog],[GP Prev Qtr Backlog],[Order Intake Curr Qtr Update],[Recog Curr Qtr Update]
,[Revenue Curr Qtr Backlog],[GP Curr Qtr Backlog],[Q1 Backlog Revenue],[Q2 Backlog Revenue],[Q3 Backlog Revenue]
,[Q4 Backlog Revenue],[Next CY Backlog Revenue],[Beyond Next CY Backlog Revenue],[Q1 Backlog GP],
[Q2 Backlog GP],[Q3 Backlog GP],[Q4 Backlog GP],[Next CY Backlog GP],[Beyond Next CY Backlog GP]
 )
              ) AS unpvt
              )b
              INNER JOIN dbo.dim_entp_fss_project_v c ON --b.[Project No.] = c.[Project_No] AND 
              trim(b.[Project Title])=trim(c.[Project_Title])
              INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass_up = d.data_sub_class_name
       AND d.data_class_name = 'Amount' 
	   and data_sub_class_name in ('Revenue Prev Qtr Backlog','GP Prev Qtr Backlog','Order Intake Curr Qtr Update','Recog Curr Qtr Update'
,'Revenue Curr Qtr Backlog','GP Curr Qtr Backlog','Q1 Backlog Revenue','Q2 Backlog Revenue','Q3 Backlog Revenue'
,'Q4 Backlog Revenue','Next CY Backlog Revenue','Beyond Next CY Backlog Revenue','Q1 Backlog GP',
'Q2 Backlog GP','Q3 Backlog GP','Q4 Backlog GP','Next CY Backlog GP','Beyond Next CY Backlog GP')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

 END