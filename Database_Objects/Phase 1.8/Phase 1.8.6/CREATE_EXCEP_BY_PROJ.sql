/****** Object:  Table [dbo].[dim_ent_data_sub_class_exception_by_projet]    Script Date: 10/6/2022 12:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_ent_data_sub_class_exception_by_projet]
(
	[dim_ent_data_sub_class_exception_by_projet_sk] [int] IDENTITY(1,1) NOT NULL,
	[dim_ent_data_sub_class_exception_by_projet_nk] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[hash_code] [varchar](5000) NOT NULL,
	[active] [int] NULL,
	[created_date_time] [datetime] NULL,
	[modified_date_time] [datetime] NULL,
	[late_arrival_flag] [varchar](1) NOT NULL,
	[dim_entp_project_nk] [int] NOT NULL,
	[dim_ent_sub_source_nk] [int] NOT NULL,
	[dim_ent_data_sub_class_nk] [int] NOT NULL,
	[project_number] [varchar](120) NULL,
	[data_sub_class] [varchar](120) NULL,
	[sub_source] [varchar](120) NULL,
 CONSTRAINT [Cnstr_2d9563afbd6849ceb94444232d] PRIMARY KEY NONCLUSTERED 
	(
		[dim_ent_data_sub_class_exception_by_projet_sk] ASC
	) NOT ENFORCED 
)
WITH
(
	DISTRIBUTION = REPLICATE,
	CLUSTERED COLUMNSTORE INDEX
)
GO
insert into dim_ent_data_sub_class_exception_by_projet
([dim_ent_data_sub_class_exception_by_projet_nk],[start_date],[end_date],
[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag],[dim_entp_project_nk],[dim_ent_sub_source_nk],
[dim_ent_data_sub_class_nk],[project_number],[data_sub_class],[sub_source])
select isnull((select max(dim_ent_data_sub_class_exception_by_projet_nk) from dim_ent_data_sub_class_exception_by_projet a),0) + 1 ,
'01/01/2020','01/01/2050','','1',getdate(),getdate(),'0',p.dim_entp_project_nk,ss.dim_ent_sub_source_nk,sc.dim_ent_data_sub_class_nk,
p.project_number,sc.data_sub_class_name,ss.sub_source_name
from 
dim_entp_project p,
dim_ent_sub_source ss,
dim_ent_data_sub_class sc
where p.project_number = 'R4036' and p.active = '1'
and ss.sub_source_name = 'MCPM Offshore' and ss.active = '1'
and sc.data_sub_class_name = 'Take-Off Hours' and sc.active = '1'
and (select count(*) from dim_ent_data_sub_class_exception_by_projet a where project_number = 'R4036' and data_sub_class = 'MCPM Offshore' and sub_source = 'Take-Off Hours') = 0

go

insert into dim_ent_data_sub_class_exception_by_projet
([dim_ent_data_sub_class_exception_by_projet_nk],[start_date],[end_date],
[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag],[dim_entp_project_nk],[dim_ent_sub_source_nk],
[dim_ent_data_sub_class_nk],[project_number],[data_sub_class],[sub_source])
select isnull((select max(dim_ent_data_sub_class_exception_by_projet_nk) from dim_ent_data_sub_class_exception_by_projet a),0) + 1 ,
'01/01/2020','01/01/2050','','1',getdate(),getdate(),'0',p.dim_entp_project_nk,ss.dim_ent_sub_source_nk,sc.dim_ent_data_sub_class_nk,
p.project_number,sc.data_sub_class_name,ss.sub_source_name
from 
dim_entp_project p,
dim_ent_sub_source ss,
dim_ent_data_sub_class sc
where p.project_number = 'R4036' and p.active = '1'
and ss.sub_source_name = 'MCPM Offshore' and ss.active = '1'
and sc.data_sub_class_name = 'Earned Hours' and sc.active = '1'
and (select count(*) from dim_ent_data_sub_class_exception_by_projet a where project_number = 'R4036' and data_sub_class = 'MCPM Offshore' and sub_source = 'Earned Hours') = 0


go


insert into dim_ent_data_sub_class_exception_by_projet
([dim_ent_data_sub_class_exception_by_projet_nk],[start_date],[end_date],
[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag],[dim_entp_project_nk],[dim_ent_sub_source_nk],
[dim_ent_data_sub_class_nk],[project_number],[data_sub_class],[sub_source])
select isnull((select max(dim_ent_data_sub_class_exception_by_projet_nk) from dim_ent_data_sub_class_exception_by_projet a),0) + 1 ,
'01/01/2020','01/01/2050','','1',getdate(),getdate(),'0',p.dim_entp_project_nk,ss.dim_ent_sub_source_nk,sc.dim_ent_data_sub_class_nk,
p.project_number,sc.data_sub_class_name,ss.sub_source_name
from 
dim_entp_project p,
dim_ent_sub_source ss,
dim_ent_data_sub_class sc
where p.project_number = 'R4036' and p.active = '1'
and ss.sub_source_name = 'MCPM Offshore' and ss.active = '1'
and sc.data_sub_class_name = 'Progress Base Hours' and sc.active = '1'
and (select count(*) from dim_ent_data_sub_class_exception_by_projet a where project_number = 'R4036' and data_sub_class = 'MCPM Offshore' and sub_source = 'Progress Base Hours') = 0

go
