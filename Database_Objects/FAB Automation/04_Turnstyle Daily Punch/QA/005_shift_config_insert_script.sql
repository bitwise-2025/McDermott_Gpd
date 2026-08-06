/****** INSERT into dim_ent_emp_shift_config  ******/
SET IDENTITY_INSERT [dbo].[dim_ent_emp_shift_config] ON 

INSERT INTO [dbo].[dim_ent_emp_shift_config] ([dim_ent_emp_shift_config_sk], [dim_ent_emp_shift_config_nk], [start_date], [end_date], [hash_code], [active], [created_date_time], [modified_date_time], [late_arrival_flag], [shift_start_time], [shift_end_time], [shift_type], [location], [load_date], [shift_start_range1], [shift_end_range1], [shift_start_range2], [shift_end_range2]) VALUES (51, 57, '2023-02-16 08:12:53.157', '9999-12-30 00:00:00.000', NULL, 1, '2023-02-16 08:12:53.157', NULL, 'N', '19:00:00.0000000', '05:30:00.0000000', 'Night', 'Dubai', '2023-02-16 08:12:53.157', '17:00:00.0000000', '23:59:59.0000000', '00:00:00.0000000', '08:00:00.0000000')
INSERT INTO [dbo].[dim_ent_emp_shift_config] ([dim_ent_emp_shift_config_sk], [dim_ent_emp_shift_config_nk], [start_date], [end_date], [hash_code], [active], [created_date_time], [modified_date_time], [late_arrival_flag], [shift_start_time], [shift_end_time], [shift_type], [location], [load_date], [shift_start_range1], [shift_end_range1], [shift_start_range2], [shift_end_range2]) VALUES (53, 9, '2023-02-16 08:12:53.157','9999-12-30 00:00:00.000', NULL, 1, '2023-02-16 08:12:53.157', NULL, 'N', '07:00:00.0000000', '17:30:00.0000000', 'Day', 'Dubai', '2023-02-16 08:12:53.157', '05:30:00.0000000', '11:59:59.0000000', '12:00:00.0000000', '20:00:00.0000000')

SET IDENTITY_INSERT [dbo].[dim_ent_emp_shift_config] OFF
GO
