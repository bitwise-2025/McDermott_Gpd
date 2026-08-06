alter table dim_entp_fss_business_line
add [Consolidated BL] varchar(200)
begin tran
 /*
update dim_entp_fss_business_line set alternative_business_line='MDR - Consolidated McDermott' where business_line='MDR_BL'	

update dim_entp_fss_business_line set alternative_business_line='LCS' where business_line='ONSHORE_BL'	

update dim_entp_fss_business_line set alternative_business_line='OFFSHORE' where business_line='OFFSHORE_BL'	

update dim_entp_fss_business_line set alternative_business_line='SUBSEA' where business_line='SUBSEA_BL'

update dim_entp_fss_business_line set alternative_business_line='CBI TANKS' where business_line='TANKS_BL'	

update dim_entp_fss_business_line set alternative_business_line='GBLOPS' where business_line='GBLOPS_BL'	

update dim_entp_fss_business_line set alternative_business_line='CRS' where business_line='CRS_BL'
 
update dim_entp_fss_business_line set [Consolidated BL]='MDR - Consolidated McDermott' where business_line='MDR_BL'	

update dim_entp_fss_business_line set [Consolidated BL]='LCS' where business_line='ONSHORE_BL'	

update dim_entp_fss_business_line set [Consolidated BL]='OFFSHORE' where business_line='OFFSHORE_BL'	

update dim_entp_fss_business_line set [Consolidated BL]='SUBSEA' where business_line='SUBSEA_BL'

update dim_entp_fss_business_line set [Consolidated BL]='CBI TANKS' where business_line='TANKS_BL'	

update dim_entp_fss_business_line set [Consolidated BL]='GBLOPS' where business_line='GBLOPS_BL'	

update dim_entp_fss_business_line set [Consolidated BL]='CRS' where business_line='CRS_BL'
 */
declare @startdate datetime =getdate()

declare @dim_entp_fss_business_line_nk int

if not exists (select 1 from  dim_entp_fss_business_line where business_line='MDR_BL')

begin
 
select @dim_entp_fss_business_line_nk=ISNULL(max(dim_entp_fss_business_line_nk),0)+1 from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','MDR_BL',1,@startdate,null,'N',1,1,'MDR_BL','MDR - Consolidated McDermott',

1,'MDR - Consolidated McDermott')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='ONSHORE_BL')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','ONSHORE_BL',1,@startdate,null,'N',1,1,'ONSHORE_BL','LCS',1,'LCS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='OFFSHORE_BL')

begin

--declare @startdate datetime =getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','OFFSHORE_BL',1,@startdate,null,'N',1,1,'OFFSHORE_BL','OFFSHORE',1,'OFFSHORE')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='SUBSEA_BL')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','SUBSEA_BL',1,@startdate,null,'N',1,1,'SUBSEA_BL','SUBSEA',1,'SUBSEA')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='TANKS_BL')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','TANKS_BL',1,@startdate,null,'N',1,1,'TANKS_BL','CBI TANKS',1,'CBI TANKS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='GBLOPS_BL')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','GBLOPS_BL',1,@startdate,null,'N',1,1,'GBLOPS_BL','GBLOPS',1,'GBLOPS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='CRS_BL')

begin

--declare @startdate datetime =getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','CRS_BL',1,@startdate,null,'N',1,1,'CRS_BL','CRS',1,'CRS')

end
 
--declare @startdate datetime =getdate()

--declare @dim_entp_fss_business_line_nk int

if not exists (select 1 from  dim_entp_fss_business_line where business_line='MDR_BL_ADJ')

begin
 
select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1 from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','MDR_BL_ADJ',1,@startdate,null,'N',1,1,'MDR_BL_ADJ','MDR - Consolidated McDermott_ADJ',1,

'MDR - Consolidated McDermott')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='ONSHORE_BL_ADJ')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','ONSHORE_BL_ADJ',1,@startdate,null,'N',1,1,'ONSHORE_BL_ADJ','LCS_ADJ',1,'LCS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='OFFSHORE_BL_ADJ')

begin

--declare @startdate datetime =getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','OFFSHORE_BL_ADJ',1,@startdate,null,'N',1,1,'OFFSHORE_BL_ADJ','OFFSHORE_ADJ',1,'OFFSHORE')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='SUBSEA_BL_ADJ')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','SUBSEA_BL_ADJ',1,@startdate,null,'N',1,1,'SUBSEA_BL_ADJ','SUBSEA_ADJ',1,'SUBSEA')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='TANKS_BL_ADJ')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','TANKS_BL_ADJ',1,@startdate,null,'N',1,1,'TANKS_BL_ADJ','CBI TANKS_ADJ',1,'CBI TANKS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='GBLOPS_BL_ADJ')

begin

--declare @startdate datetime=getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','GBLOPS_BL_ADJ',1,@startdate,null,'N',1,1,'GBLOPS_BL_ADJ','GBLOPS_ADJ',1,'GBLOPS')

end
 
if not exists (select 1 from  dim_entp_fss_business_line where business_line='CRS_BL_ADJ')

begin

--declare @startdate datetime =getdate()

--declare @dim_entp_fss_business_line_nk int

select @dim_entp_fss_business_line_nk=max(dim_entp_fss_business_line_nk)+1  from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','CRS_BL_ADJ',1,@startdate,null,'N',1,1,'CRS_BL_ADJ','CRS_ADJ',1,'CRS')

end
 
--commit
