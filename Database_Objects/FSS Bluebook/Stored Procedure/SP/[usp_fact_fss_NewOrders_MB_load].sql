CREATE PROC [dbo].[usp_fact_fss_NewOrders_MB_load] AS
BEGIN
   DECLARE  @Errormessage varchar(max)
   DECLARE  @datetimekey datetime

   declare @reportingperiod_neworders_mb date
		select @datetimekey=max(zCreatedDateTime) from fss.stage_fss_neworders_mb_v
if exists (select * from fss.Stage_fss_reportingperiod_V where  [Data source]='New Orders MB' and month([Reporting Period]) not between 0 and 12)
    BEGIN
        set @Errormessage='Invalid Month Range'
        select @Errormessage
    End
set @reportingperiod_neworders_mb =(select distinct [Reporting Period] from fss.Stage_fss_reportingperiod_V where [Data source]='New Orders MB')
     
	 insert into fact_fss_businessline_updates([dim_ent_source_nk],[dim_ent_sub_source_nk],[dim_entp_fss_project_nk]
     ,[dim_ent_data_class_nk],[dim_ent_data_sub_class_nk],[dim_entp_fss_business_line_nk],[Data Source],[NewCO],[NonJV],[BLPW],[Productline]
     ,[Customer],[Seq No],[Sub Title],[Calculation],[Category],[Facility],[Commentary],[TransactionDate]
     ,[Quarter],[Month],[Amount],[created_date_time] )
select 
c.dim_ent_source_nk,c.dim_ent_sub_source_nk,c.dim_entp_fss_project_nk,d.dim_ent_data_class_nk,d.dim_ent_data_sub_class_nk,v.dim_entp_fss_business_line_nk,
'New Orders MB' as [Data Source],[New/ CO],[JV/Non-JV],null as BLPW,null as [External Product Line],[Customer],null as [Seq No],null as [Sub Title],null as [Caclulation],
null as [Category],null as [Facility],null as [Commentary],@reportingperiod_neworders_mb as TransactionDate,null AS [Quarter],
case when datasubclass_up in ( 'Jan Q Latest Update') then 1
     when datasubclass_up in ( 'Feb Q Latest Update')then 2
	 when datasubclass_up in ( 'Mar Q Latest Update') then 3 
	 when datasubclass_up in ( 'Apr Q Latest Update') then 4
	 when datasubclass_up in ( 'May Q Latest Update') then 5 
	 when datasubclass_up in ( 'Jun Q Latest Update') then 6 
	 when datasubclass_up in ( 'Jul Q Latest Update') then 7 
	 when datasubclass_up in ( 'Aug Q Latest Update') then 8 
	 when datasubclass_up in ( 'Sep Q Latest Update') then 9 
	 when datasubclass_up in ( 'Oct Q Latest Update') then 10
	 when datasubclass_up in ( 'Nov Q Latest Update') then 11
	 when datasubclass_up in ( 'Dec Q Latest Update') then 12
	 else 0 end as month
,amount,getdate() as created_date_time
from 
(
select [#],[Business Line],[Project No.],[New/ CO],[JV/Non-JV],[Project Title],[Customer],amount, datasubclass_up,
case when datasubclass_up in ('Jan Q Latest Update','Feb Q Latest Update','Mar Q Latest Update','Apr Q Latest Update','May Q Latest Update','Jun Q Latest Update',
'Jul Q Latest Update','Aug Q Latest Update','Sep Q Latest Update','Oct Q Latest Update','Nov Q Latest Update','Dec Q Latest Update') then 'Curr Qtr Update'
	 when datasubclass_up in ('Q1F2') then 'Q1F2'
	 when datasubclass_up in ('Q2F2') then 'Q2F2'
	 when datasubclass_up in ('Q3F2') then 'Q3F2'
	 when datasubclass_up in ('Q4F2') then 'Q4F2'
	 when datasubclass_up in ('Q1 MB Prev') then 'Q1 MB Prev'
	 when datasubclass_up in ('Q2 MB Prev') then 'Q2 MB Prev'
	 when datasubclass_up in ('Q3 MB Prev') then 'Q3 MB Prev'
	 when datasubclass_up in ('Q4 MB Prev') then 'Q4 MB Prev'
	else datasubclass_up end as datasubclass
from 																						  
(																							  
select isnull([#],'') as [#],
isnull([Business Line],'') as [Business Line],
isnull([Project No.],'') as [Project No.],
isnull([New/ CO],'') as [New/ CO],
isnull([JV / Non-JV],'') as [JV/Non-JV],
isnull([exArea],'') as [exArea],
isnull([Project Title],'') as [Project Title],
isnull([Customer],'') as [Customer],
isnull([Jan Q Latest Update],'') as [Jan Q Latest Update],
isnull([Feb Q Latest Update],'') as [Feb Q Latest Update],
isnull([Mar Q Latest Update],'') as [Mar Q Latest Update],
isnull([Apr Q Latest Update],'') as [Apr Q Latest Update],
isnull([May Q Latest Update],'') as [May Q Latest Update],
isnull([Jun Q Latest Update],'') as [Jun Q Latest Update],
isnull([Jul Q Latest Update],'') as [Jul Q Latest Update],
isnull([Aug Q Latest Update],'') as [Aug Q Latest Update],
isnull([Sep Q Latest Update],'') as [Sep Q Latest Update],
isnull([Oct Q Latest Update],'') as [Oct Q Latest Update],
isnull([Nov Q Latest Update],'') as [Nov Q Latest Update],
isnull([Dec Q Latest Update],'') as [Dec Q Latest Update],
isnull([Total Q Latest Update HYP],'') as [Total Q Latest Update HYP],
isnull([As booked $GP ],'') as [As booked $GP ],
isnull([X1],'') as [X1],
isnull([X2],'') as [X2],
isnull([X3],'') as [X3],
isnull([X4],'') as [X4],
isnull([X5],'') as [X5],
isnull([X6],'') as [X6],
isnull([X7],'') as [X7],
isnull([X8],'') as [X8],
isnull([X9],'') as [X9],
isnull([X10],'') as [X10],
isnull([Q1F2],'') as [Q1F2],
isnull([Q2F2],'') as [Q2F2],
isnull([Q3F2],'') as [Q3F2],
isnull([Q4F2],'') as [Q4F2],
isnull([X11],'') as [X11],
isnull([X12],'') as [X12],
isnull([X13],'') as [X13],
isnull([X14],'') as [X14],
isnull([X15],'') as [X15],
isnull([X16],'') as [X16],
isnull([X17],'') as [X17],
isnull([X18],'') as [X18],
isnull([Q1 MB Prev],'') as [Q1 MB Prev],
isnull([Q2 MB Prev],'') as [Q2 MB Prev],
isnull([Q3 MB Prev],'') as [Q3 MB Prev],
isnull([Q4 MB Prev],'') as [Q4 MB Prev],
isnull([X19],'') as [X19],
isnull([X20],'') as [X20],
isnull([X21],'') as [X21],
isnull([X22],'') as [X22],
isnull([X23],'') as [X23],
isnull([X24],'') as [X24],
isnull([X25],'') as [X25],
isnull([X26],'') as [X26],
isnull([X27],'') as [X27],
isnull([X28],'') as [X28],
isnull([X29],'') as [X29],
isnull([X30],'') as [X30],
isnull([X31],'') as [X31],
isnull([X32],'') as [X32],
isnull([X33],'') as [X33],
--isnull([X34],'') as [X34],
isnull([X35],'') as [X35],
isnull([X36],'') as [X36],
isnull([X37],'') as [X37],
isnull([X38],'') as [X38],
isnull([X39],'') as [X39],
isnull([X40],'') as [X40],
isnull([X41],'') as [X41]
from [fss].stage_fss_neworders_mb_v
where [Project Title] is not null 
AND [zCreatedDateTime] = @datetimekey
)a
unpivot(
amount for datasubclass_up in 
(
[Jan Q Latest Update],[Feb Q Latest Update],[Mar Q Latest Update],[Apr Q Latest Update],[May Q Latest Update]
,[Jun Q Latest Update],[Jul Q Latest Update],[Aug Q Latest Update],[Sep Q Latest Update],[Oct Q Latest Update],[Nov Q Latest Update],[Dec Q Latest Update]
,[Total Q Latest Update HYP],[As booked $GP ]
,[Q1F2],[Q2F2],[Q3F2],[Q4F2],[Q1 MB Prev],[Q2 MB Prev],[Q3 MB Prev],[Q4 MB Prev]
)
) as unpvt
)b  inner join  dbo.dim_entp_fss_project_v c
                on b.[Project No.]=c.[Project_No] and b.[Project Title]=c.[Project_Title]
	inner join dbo. dim_ent_data_sub_class_v d on b.datasubclass=d.data_sub_class_name and d.data_class_name='Amount'	
	and  data_sub_class_name in ('Curr Qtr Update','Q1F2','Q2F2','Q3F2',
	'Q4F2','Q1 MB Prev','Q2 MB Prev','Q3 MB Prev','Q4 MB Prev')
	INNER JOIN dbo.dim_entp_fss_business_line_v V ON  b.[Business Line]=v.business_line


 END