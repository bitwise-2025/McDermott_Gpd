CREATE TABLE [dbo].[dim_entp_CTCR_High_repair]
(
dim_entp_CTCR_High_repair_sk  [bigint] IDENTITY(1,1) NOT NULL,
dim_entp_CTCR_High_repair_nk [bigint] NOT NULL,
start_date   DATETIME  NOT NULL  ,
end_date   DATETIME  NOT NULL  ,
hash_code   VARCHAR (8000)  NOT NULL  ,
active   INT  NOT NULL  ,
created_date_time   DATETIME  NULL  ,
modified_date_time   DATETIME  NULL  ,
late_arrival_flag   VARCHAR(1)  NULL  ,
dim_ent_source_nk  BIGINT  NOT NULL  ,
dim_ent_sub_source_nk  BIGINT  null  ,
dim_ent_contract_nk  BIGINT  null  ,
Stamp_no  varchar(10)  not null  ,
Badge_no  varchar(10)  not null  ,
Experience  varchar(50)  null  ,
AreaTraining  Varchar(50)  null  ,
Name  Varchar(100)  null  ,
Start_date_training  datetime  null  ,
Discipline  varchar(25)  null  ,
contract_id  varchar(10)  not null  ,
contract_name  varchar(75)  null  ,
Propose_to_Process  varchar(150)  not null  ,
Propose_to_position  varchar(15)  not null  ,
Internal_Test_date  datetime  null  ,
Internal_Test_visual  varchar(15)  null  ,
Official_Test_date  Datetime  null  ,
Official_Test_visual  varchar(15)  null  ,
Official_Test_RT  Varchar(15)  null  ,
Official_Test_Bend_Micro_fracture  varchar(20)  null  ,
Official_Test_UT_MPI_PT  varchar(20)  null  ,
Remarks  varchar(200)  null  ,
Final_Result  varchar(15)  null  ,
Process_position  varchar(150)  null  ,
Years  int  null 
 )
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO