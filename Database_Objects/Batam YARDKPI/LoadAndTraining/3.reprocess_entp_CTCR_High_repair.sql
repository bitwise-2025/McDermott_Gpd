
CREATE TABLE [yardkpi].[reprocess_entp_CTCR_High_repair]
(
rssk [bigint] IDENTITY(1,1) NOT NULL,
source_code  varchar(50)  null  ,
sub_source_code  varchar(50)  not null  ,
Stamp_no  varchar(10)  not null  ,
Badge_no  varchar(10)  not null  ,
Experience  varchar(50)  not null  ,
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
Years  int  null  ,
hash_code   VARCHAR (8000)  not null  ,
rk_failure_info varchar(5000) null, 
created_date_time datetime not null
 
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO