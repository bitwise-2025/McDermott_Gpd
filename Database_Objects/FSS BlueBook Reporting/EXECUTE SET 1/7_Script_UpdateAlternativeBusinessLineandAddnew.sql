
begin tran
update dim_entp_fss_business_line
set active =0
where alternative_business_line NOT IN (
select alternative_business_line from dim_entp_fss_business_line where alternative_business_line IN (
'LCS'--
,'GBLOPS' 
,'OFFSHORE'
,'CRPTOT_BL'--NO
,'CBI TANKS'---NO
,'CRS'--NO
,'SUBSEA'--
,'MDR - Consolidated McDermott_ADJ'--NO
))
--commit
declare @dim_entp_fss_business_line_nk int
declare @startdate datetime =GETDATE()
if not exists (select 1 from  dim_entp_fss_business_line where business_line='CRPTOT_BL')

begin
 
select @dim_entp_fss_business_line_nk=ISNULL(max(dim_entp_fss_business_line_nk),0)+1 from dim_entp_fss_business_line

insert into dim_entp_fss_business_line

values(@dim_entp_fss_business_line_nk,@startdate,'9999-12-30 00:00:00.000','CRPTOT_BL',1,@startdate,null,'N',1,1,'CRPTOT_BL',
'CRS - Corporate Reporting Group EXCL_GOPS_BL',
1,'CRS - Corporate Reporting Group EXCL_GOPS_BL')

end

