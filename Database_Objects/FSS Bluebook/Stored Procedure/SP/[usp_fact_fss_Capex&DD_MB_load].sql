CREATE PROC [dbo].[usp_fact_fss_Capex&DD_MB_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

  declare @reportingperiod_capexanddd_mb date

		select @datetimekey=max(zCreatedDateTime) from fss.[stage_fss_capex_and_dd_mb_v]

if exists (select * from fss.Stage_fss_reportingperiod_V where  [Data source]='CapEx & DD MB' and month([Reporting Period]) not between 0 and 12)
    BEGIN
        set @Errormessage='Invalid Month Range'
        select @Errormessage
    End

set @reportingperiod_capexanddd_mb =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='CapEx & DD MB')

      insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
     ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
     ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
     ,[Quarter],[Month],[Amount],[created_date_time] )

select 
s.dim_ent_source_nk,s.dim_ent_sub_source_nk,null as dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'CapEx & DD MB' as [Data Source],null as [New/ CO],null as [JV/Non-JV],null as [BL/PW] ,null as [External Product Line],null as [Customer],
null as [Seq No],[Sub Title] as [Sub Title],null as [Caclulation],
[Category] as [Category],[Facility] as [Facility],null as [Commentary],@reportingperiod_capexanddd_mb as TransactionDate,null AS [Quarter],
0 as month
,amount,getdate() as created_date_time
from 
(
select  [Business Line],[Sub Title], [Facility],[Category],amount, datasubclass_up,

case 
	 when datasubclass_up in ('Q1F2') then 'Q1F2'
	 when datasubclass_up in ('Q2F2') then 'Q2F2'
	 when datasubclass_up in ('Q3F2') then 'Q3F2'
	 when datasubclass_up in ('Q4F2') then 'Q4F2'
	 when datasubclass_up in ('Q1 MB Prev') then 'Q1 MB Prev'
	 when datasubclass_up in ('Q2 MB Prev') then 'Q2 MB Prev'
	 when datasubclass_up in ('Q3 MB Prev') then 'Q3 MB Prev'
	 when datasubclass_up in ('Q4 MB Prev') then 'Q4 MB Prev'
	 when datasubclass_up in ('Q1 MB') then 'Q1 MB'
	 when datasubclass_up in ('Q2 MB') then 'Q2 MB'
	 when datasubclass_up in ('Q3 MB') then 'Q3 MB'
	 when datasubclass_up in ('Q4 MB') then 'Q4 MB'	 
	else datasubclass_up end as datasubclass
	
from 																						  
(																							  
select isnull([zVersionNo],'') as [zVersionNo]	,											  
isnull([zSourceFileName],'') as [zSourceFileName],
isnull([zCreatedDateTime],'') as [zCreatedDateTime],
isnull([Business Line],'') as [Business Line],
isnull([Sub Title],'') as [Sub Title],
isnull([Facility],'') as [Facility],
isnull([Category],'') as [Category],
--isnull([X1],'') as [X1],
isnull([Q1 MB],'') as [Q1 MB],
isnull([Q2 MB],'') as [Q2 MB],
isnull([Q3 MB],'') as [Q3 MB],
isnull([Q4 MB],'') as [Q4 MB],
isnull([Total MB],'') as [ Total MB],
--isnull([X2],'') as [ X2],
isnull([Q1 F2],'') as [Q1F2],
isnull([Q2 F2],'') as [Q2F2],
isnull([Q3 F2],'') as [Q3F2],
isnull([Q4 F2],'') as [Q4F2],
isnull([Total F2],'') as [Total F2],
--isnull([X3],'') as [X3],
isnull([X4],'') as [X4],
isnull([X5],'') as [X5],
isnull([X6],'') as [X6],
isnull([X7],'') as [X7],
isnull([X8],'') as [X8],
--isnull([X9],'') as [X9],
isnull([Q1 MB Prev],'') as [Q1 MB Prev],
isnull([Q2 MB Prev],'') as [Q2 MB Prev],
isnull([Q3 MB Prev],'') as [Q3 MB Prev],
isnull([Q4 MB Prev],'') as [Q4 MB Prev],
isnull([Total MB Prev],'') as [Total MB Prev],
--isnull([X10],'') as [X10],
isnull([X11],'') as [X11],
isnull([X12],'') as [X12],
isnull([X13],'') as [X13],
isnull([X14],'') as [X14],
isnull([X15],'') as [X15],
isnull([X16],'') as [X16]

from [fss].stage_fss_capex_and_dd_mb_v
where [Sub Title] is not null 
AND [zCreatedDateTime] = @datetimekey

)a
unpivot(
amount for datasubclass_up in 
([Q1F2],[Q2F2],[Q3F2],[Q4F2],[Q1 MB Prev],[Q2 MB Prev],[Q3 MB Prev],[Q4 MB Prev]
,[Q1 MB],[Q2 MB],[Q3 MB],[Q4 MB]
)
) as unpvt
)b  --INNER JOIN dbo.dim_entp_fss_project_v c ON b.[Project No.] = c.[Project_No]
--	AND b.[Project Title] = c.[Project_Title]
   INNER JOIN dbo. dim_ent_data_sub_class_v d ON b.datasubclass = d.data_sub_class_name
       AND d.data_class_name = 'Amount'  and data_sub_class_name in ('Q1F2','Q2F2','Q3F2','Q4F2','Q1 MB Prev','Q2 MB Prev',
	   'Q3 MB Prev','Q4 MB Prev','Q1 MB','Q2 MB','Q3 MB','Q4 MB')
       INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line
	   INNER JOIN (select dim_ent_source_nk,dim_ent_sub_source_nk,sub_source_name from dim_ent_sub_source) s on s.sub_source_name='EXCEL'

	
 END