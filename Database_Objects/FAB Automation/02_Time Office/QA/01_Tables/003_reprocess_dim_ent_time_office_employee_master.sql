CREATE TABLE [gpd].[reprocess_dim_ent_time_office_employee_master]
(
	[rssk] 								[int] IDENTITY(1,1) NOT NULL,
	[created_date_time] 				[datetime] NULL,
	[hash_code] 						[varchar](4000) NULL,
	[empno]								[int] NULL,
	[leg_id]							[varchar](100) NULL,
	[employee_name]						[varchar](100) NULL,
	[cost_center]						[varchar](100) NULL,
	[cost_center_des]           		[varchar](1000) NULL,
	[foreman_sap_id]					[varchar](100) NULL,
	[foreman_name]						[varchar](100) NULL,
	[supervisor_sap_id]         		[varchar](100) NULL,
	[supervisor_name]           		[varchar](100) NULL,
	[superintendent_sap_id]     		[varchar](100) NULL,
	[superintendent_name]       		[varchar](100) NULL,
	[cost_center_manager]       		[varchar](100) NULL,
	[job_discipline]            		[varchar](100) NULL,
	[department]                		[varchar](100) NULL,
	[title]                     		[varchar](100) NULL,
	[job_family]                		[varchar](100) NULL,
	[remark]                    		[varchar](1000) NULL,
	[job_discipline_name]       		[varchar](100) NULL,
	[standard_craft]       				[varchar](100) NULL,
	[remarks2]                  		[varchar](1000) NULL,
	[card_number]               		[varchar](100) NULL,
	[supervisor_mail_id]        		[varchar](100) NULL,
	[rk_failure_info] 					[varchar](4000) NULL	


)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO
