Insert into [dbo].[generic_load_detail] values ('dim_ent_welder','fab_code','nvarchar(5)','TEXT','NK','fab_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder','welder','varchar(50)','TEXT','NK','welder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder','welder_name','varchar(50)','TEXT','OA','welder_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder','load_date','varchar(50)','TEXT','OA','load_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,'Y',NULL)

------------------------------------------------------------

Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','Jcc_no','nvarchar(25)','TEXT','NK','Jcc_no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','jcc_submit_date','datetime','DATETIME','OA','jcc_submit_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','jcc_sign_date','datetime','DATETIME','OA','jcc_sign_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','jcc_receive_date','datetime','DATETIME','OA','jcc_receive_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','jcc_expiry_date','datetime','DATETIME','OA','jcc_expiry_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','certificate_num','varchar(15)','TEXT','NK','certificate_num',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','discipline','varchar(3)','TEXT','NK','discipline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','fab_code','varchar(3)','TEXT','NK','fab_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_jcc','process','varchar(3)','TEXT','NK','process',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,'Y',NULL)

------------------------------------------------------------

Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_contract','contract_id','nvarchar(20)','TEXT','NK','contract_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_contract','contract_description','varchar(100)','TEXT','OA','contract_description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)


------------------------------------------------------------

Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_process','process_title','varchar(100)','TEXT','NK','process_title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_process','process','varchar(5)','TEXT','NK','process',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_process','fab_code','varchar(5)','TEXT','NK','fab_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_process','discipline','varchar(5)','TEXT','NK','discipline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_process','position','varchar(10)','TEXT','NK','position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,'Y',NULL)


------------------------------------------------------------

Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','dim_ent_jcc_nk','int','NUMBER','RK','dim_ent_jcc_nk','dim_ent_jcc','dim_ent_jcc_nk','jcc_no','jcc_no','fab_code','fab_code','certificate_num','certificate_num','process','process','discipline','discipline',10,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','dim_ent_welder_contract_nk','int','NUMBER','RK','dim_ent_welder_contract_nk','dim_ent_welder_contract','dim_ent_welder_contract_nk','contract_id','contract_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','dim_ent_welder_nk','int','NUMBER','RK','dim_ent_welder_nk','dim_ent_welder','dim_ent_welder_nk','welder','welder','fab_code','fab_code',NULL,NULL,NULL,NULL,NULL,NULL,30,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','dim_entp_pcm_weld_process_master_nk','int','NUMBER','RK','dim_entp_pcm_weld_process_master_nk','dim_ent_weld_process','dim_entp_pcm_weld_process_master_nk','process','process','fab_code','fab_code','discipline','discipline',NULL,NULL,NULL,NULL,40,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','fab_code','varchar(3)','TEXT','NK','fab_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','welder','varchar(15)','TEXT','NK','welder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,60,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','process','varchar(3)','TEXT','NK','process',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','discipline','varchar(3)','TEXT','NK','discipline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','certificate_num','varchar(15)','TEXT','NK','certificate_num',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','contract_id','varchar(10)','TEXT','NK','contract_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','Jcc_no','varchar(25)','TEXT','NK','Jcc_no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','first_qual_date','datetime','DATETIME','OA','first_qual_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','qual_expiry_date','datetime','DATETIME','OA','qual_expiry_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,130,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','position','varchar(7)','TEXT','NK','position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,140,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','witness','varchar(4)','TEXT','OA','witness',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,150,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','weld_code','varchar(10)','TEXT','NK','weld_code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','training_reg_date','datetime','DATETIME','OA','training_reg_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','training_start_date','datetime','DATETIME','OA','training_start_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','ndt_test_date','datetime','DATETIME','OA','ndt_test_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,190,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','ndt_status','varchar(1)','TEXT','NK','ndt_status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','training_end_date','datetime','DATETIME','OA','training_end_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,210,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','prod_weld_flag','varchar(1)','TEXT','OA','prod_weld_flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,220,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','Prod_weld_required','int','NUMBER','OA','Prod_weld_required',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,230,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','Prod_weld_completed','int','NUMBER','OA','Prod_weld_completed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','prod_weld_completion_date','datetime','DATETIME','OA','prod_weld_completion_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,250,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','rec_source','varchar(1)','TEXT','NK','rec_source',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,260,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','wqt_date','datetime','DATETIME','OA','wqt_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,270,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','mech_lab_submit_date','datetime','DATETIME','OA','mech_lab_submit_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,280,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','mech_test_receive_date','datetime','DATETIME','OA','mech_test_receive_date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,290,'Y',NULL)
Insert into [dbo].[generic_load_detail] values ('dim_ent_welder_qual','mech_status','varchar(10)','TEXT','NK','mech_status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,'Y',NULL)

