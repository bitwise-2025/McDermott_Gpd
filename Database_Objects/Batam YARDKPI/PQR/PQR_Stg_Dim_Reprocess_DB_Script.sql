

--drop table [yardkpi].[stage_entp_pqr_welding_eng];
--drop table [yardkpi].[reprocess_entp_pqr_welding_eng];
---drop table [dbo].[dim_entp_pqr_welding_eng];
--drop table [yardkpi].[stage_entp_pqr_project_list];
---drop table [yardkpi].[reprocess_ent_pqr_contract];


CREATE  TABLE [yardkpi].[stage_entp_pqr_welding_eng]
(
stage_stage_entp_pqr_welding_eng_id bigint IDENTITY(1,1) NOT NULL,
source_code  varchar(50)  NOT NULL  ,
sub_source_code  varchar(50)  NOT NULL  ,
contract_id  varchar(20)  NOT NULL  ,
contract_name  varchar(1000)  NULL  ,
SCOPE  varchar(50)  NULL  ,
Title  varchar(50)  NULL  ,
WELD_PROCESS  Varchar(1000)  NULL  ,
WELD_POSITION  Varchar(250)  NULL  ,
WELD_START  varchar(50)  NULL  ,
WELD_FINISH  varchar(50)  NULL  ,
VISUAL  varchar(50)  NULL  ,
PT_MPI  varchar(50)  NULL  ,
UT  varchar(50)  NULL  ,
RT  varchar(50)  NULL  ,
SEND_TO_LAVORATORY  varchar(50)  NULL  ,
PASSED_MECHANICAL_TESTING  varchar(50)  NULL  ,
PQR_PACKAGE_APPROVED_BY_CLIENT  varchar(100)  NULL  ,
REMARK  varchar(250)  NULL  ,
Dt_Created  varchar(50)  NULL  ,
Dt_Created_By  varchar(250)  NULL  ,
Dt_Modified  varchar(50)  NULL  ,
DT_Modified_By  varchar(250)  NULL  ,
ID  bigint  NULL  ,
CountApproved  varchar(50)  NULL  ,----
Item_Type  varchar(20)  NULL  ,
Path  varchar(1000)  NULL  ,
created_date_time  varchar(50)  NOT NULL  
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


CREATE TABLE [yardkpi].[reprocess_entp_pqr_welding_eng]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	source_code  varchar(50)  NOT NULL  ,
sub_source_code  varchar(50)  NOT NULL  ,
contract_id  varchar(20)  NOT NULL  ,
contract_name  varchar(1000)  NULL  ,
SCOPE  varchar(50)  NULL  ,
Title  varchar(50)  NULL  ,
WELD_PROCESS  Varchar(1000)  NULL  ,
WELD_POSITION  Varchar(250)  NULL  ,
WELD_START  varchar(50)  NULL  ,
WELD_FINISH  varchar(50)  NULL  ,
VISUAL  varchar(50)  NULL  ,
PT_MPI  varchar(50)  NULL  ,
UT  varchar(50)  NULL  ,
RT  varchar(50)  NULL  ,
SEND_TO_LAVORATORY  varchar(50)  NULL  ,
PASSED_MECHANICAL_TESTING  varchar(50)  NULL  ,
PQR_PACKAGE_APPROVED_BY_CLIENT  varchar(100)  NULL  ,
REMARK  varchar(250)  NULL  ,
Dt_Created  varchar(50)  NULL  ,
Dt_Created_By  varchar(250)  NULL  ,
Dt_Modified  varchar(50)  NULL  ,
DT_Modified_By  varchar(250)  NULL  ,
ID  bigint  NULL  ,
CountApproved  varchar(50)  NULL  ,
Item_Type  varchar(20)  NULL  ,
Path  varchar(1000)  NULL  ,
hash_code varchar(8000) NOT NULL,
rk_failure_info varchar(5000) NULL,
created_date_time varchar(50) NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



CREATE  TABLE [dbo].[dim_entp_pqr_welding_eng]
(
dim_entp_pqr_welding_eng_sk [bigint] IDENTITY(1,1) NOT NULL,
dim_entp_pqr_welding_eng_nk   BIGINT NOT NULL   ,
start_date   DATETIME  NOT NULL  ,
end_date   DATETIME  NOT NULL  ,
hash_code   VARCHAR (8000)  NOT NULL  ,
active   INT  NOT NULL  ,
created_date_time   DATETIME  NULL  ,
modified_date_time   DATETIME  NULL  ,
late_arrival_flag   VARCHAR(1)  NULL  ,
dim_ent_source_nk  BIGINT  NULL  ,
dim_ent_sub_source_nk  BIGINT  NULL  ,
dim_ent_contract_nk  BIGINT  NULL  ,
contract_id  varchar(20)  NULL  ,
contract_name  varchar(1000)  NULL  ,
SCOPE  varchar(50)  NULL  ,
Title  varchar(50)  NULL  ,
WELD_PROCESS  Varchar(1000)  NULL  ,
WELD_POSITION  Varchar(250)  NULL  ,
WELD_START  varchar(50)  NULL  ,
WELD_FINISH  varchar(50)  NULL  ,
VISUAL  varchar(50)  NULL  ,
PT_MPI  varchar(50)  NULL  ,
UT  varchar(50)  NULL  ,
RT  varchar(50)  NULL  ,
SEND_TO_LAVORATORY  varchar(50)  NULL  ,
PASSED_MECHANICAL_TESTING  varchar(50)  NULL  ,
PQR_PACKAGE_APPROVED_BY_CLIENT  varchar(100)  NULL  ,
REMARK  varchar(250)  NOT NULL,
Dt_Created  varchar(50)  NULL  ,
Dt_Created_By  varchar(250)  NULL  ,
Dt_Modified  varchar(50)  NULL  ,
DT_Modified_By  varchar(250)  NULL  ,
ID  bigint  NULL  ,
CountApproved  varchar(50)  NULL  ,
Item_Type  varchar(20)  NULL  ,
Path  varchar(1000)  NULL  
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




CREATE TABLE [yardkpi].[stage_entp_pqr_project_list]
(
stage_entp_pqr_project_list_id bigint IDENTITY(1,1) NOT NULL,
contractid  varchar(20)  NOT NULL  ,
ContractCode  varchar(50)  NOT NULL  ,
ContractDesc  varchar(1000)  NULL  ,
created_datetime  datetime  NOT NULL  
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO


CREATE view yardkpi.stage_entp_pqr_welding_eng_vw
as
select pqrWeldEng.stage_stage_entp_pqr_welding_eng_id
      ,pqrWeldEng.source_code
      ,pqrWeldEng.sub_source_code
      ,prlist.ContractCode as contract_id
      ,prlist.ContractDesc as contract_name
      ,pqrWeldEng.SCOPE
      ,pqrWeldEng.Title
      ,pqrWeldEng.WELD_PROCESS
      ,pqrWeldEng.WELD_POSITION
      ,pqrWeldEng.WELD_START
      ,pqrWeldEng.WELD_FINISH
      ,pqrWeldEng.VISUAL
      ,pqrWeldEng.PT_MPI
      ,pqrWeldEng.UT
      ,pqrWeldEng.RT
      ,pqrWeldEng.SEND_TO_LAVORATORY
      ,pqrWeldEng.PASSED_MECHANICAL_TESTING
      ,pqrWeldEng.PQR_PACKAGE_APPROVED_BY_CLIENT
      ,pqrWeldEng.REMARK
      ,pqrWeldEng.Dt_Created
      ,pqrWeldEng.Dt_Created_By
      ,pqrWeldEng.Dt_Modified
      ,pqrWeldEng.DT_Modified_By
      ,pqrWeldEng.ID
      ,pqrWeldEng.CountApproved
      ,pqrWeldEng.Item_Type
      ,pqrWeldEng.Path
      ,pqrWeldEng.created_date_time
from yardkpi.stage_entp_pqr_welding_eng pqrWeldEng,
     yardkpi.stage_entp_pqr_project_list prlist
where pqrWeldEng.contract_id = prlist.contractid;





CREATE VIEW [yardkpi].[stage_ent_contract_pqr_welding_eng_vw]
AS select ROW_NUMBER() over(ORDER BY contract ASC) as rowID,
source_code,
sub_source_code,
contract,
contract_title,
contract as project_number,
LastUpdate
from (
select distinct
    'SYSTEM' as source_code,
    'Sharepoint' as sub_source_code,
    contract_id as contract ,
	contract_name as contract_title,
	contract_id as project_number,
    getdate() LastUpdate
from [yardkpi].[stage_entp_pqr_welding_eng_vw] dcsr
where not exists (select 1 from dbo.dim_ent_contract
        where contract_number = dcsr.contract_id
        and active = 1)		
        ) disa;



CREATE VIEW [dbo].[dim_entp_pqr_welding_eng_vw] as
select dim_entp_pqr_welding_eng_sk ,
dim_entp_pqr_welding_eng_nk,
start_date,
end_date,
hash_code,
active,
created_date_time,
modified_date_time,
late_arrival_flag,
dim_ent_source_nk,
dim_ent_sub_source_nk,
dim_ent_contract_nk,
contract_id,
contract_name,
SCOPE,
Title as PQR_No,
WELD_PROCESS,
WELD_POSITION,
convert(datetime, left(WELD_START,19) ) as WELD_START,
convert(datetime, left(WELD_FINISH,19) )as  WELD_FINISH ,
convert(datetime, left(visual,19) ) as visual_dt,
convert(datetime, left(PT_MPI,19) ) as  PT_MPI ,
convert(datetime, left(UT,19) ) as UT,
RT,
convert(datetime, left(SEND_TO_LAVORATORY,19) ) as SEND_TO_LAVORATORY ,
convert(datetime, left(PASSED_MECHANICAL_TESTING,19) ) as  PASSED_MECHANICAL_TESTING,
PQR_PACKAGE_APPROVED_BY_CLIENT,
REMARK,
convert(datetime, left(Dt_Created,19) ) as Dt_Created,
Dt_Created_By,
convert(datetime, left(Dt_Modified,19) ) as  Dt_Modified,
DT_Modified_By,
ID,
CountApproved,
Item_Type,
Path      

from dbo.dim_entp_pqr_welding_eng where active =1
-------------------


		CREATE TABLE [yardkpi].[reprocess_ent_pqr_contract]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[source_code] [varchar](50) NOT NULL,
	[sub_source_code] [varchar](50) NULL,
	[contract] [varchar](10) NULL,
	[contract_title] [varchar](255) NULL,
	[hash_code] [varchar](8000) NOT NULL,
	[project_number] [varchar](10) NULL,
	[rk_failure_info] [varchar](5000) NULL,
	[created_date_time] [datetime] NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO