declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Previous Earned Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(170,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Previous Earned Hours','BY JDE COA','Progress Module Previous Earned Hours')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Progress Base Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(171,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module Progress Base Quantity','BY JDE COA','Progress Module Progress Base Quantity')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Earned Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(172,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Earned Hours','BY JDE COA','Progress Module Earned Hours')
	end
	go



declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Actual Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(173,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Actual Hours','BY JDE COA','Progress Module Actual Hours')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Variance Actual Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(174,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Variance Actual Hours','BY JDE COA','Progress Module Variance Actual Hours')
	end
	go



declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Amount'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Variance Actual Amount'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(175,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Amount','Progress Module Variance Actual Amount','BY JDE COA','Progress Module Variance Actual Amount')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Amount'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Progress Base Amount'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(176,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Amount','Progress Module Progress Base Amount','BY JDE COA','Progress Module Progress Base Amount')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Original Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(177,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Original Hours','BY JDE COA','Progress Module Original Hours')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Earned Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(178,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module Earned Quantity','BY JDE COA','Progress Module Earned Quantity')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Variance Earned Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(179,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Variance Earned Hours','BY JDE COA','Progress Module Variance Earned Hours')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module TakeOff Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(180,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module TakeOff Quantity','BY JDE COA','Progress Module TakeOff Quantity')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Amount'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Actual Amount'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(181,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Amount','Progress Module Actual Amount','BY JDE COA','Progress Module Actual Amount')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Original Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(182,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module Original Quantity','BY JDE COA','Progress Module Original Quantity')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Amount'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Original Amount'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(183,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Amount','Progress Module Original Amount','BY JDE COA','Progress Module Original Amount')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Variance Earned Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(184,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module Variance Earned Quantity','BY JDE COA','Progress Module Variance Earned Quantity')
	end
	go



declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module TakeOff Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(185,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module TakeOff Hours','BY JDE COA','Progress Module TakeOff Hours')
	end
	go



declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Time'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Progress Base Hours'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(186,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','—°(, ¢ÇUúnÛk5',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Time','Progress Module Progress Base Hours','BY JDE COA','Progress Module Progress Base Hours')
	end
	go


declare @cnt integer
	declare @dd integer
	select @dd  = [dim_ent_data_class_nk] from dim_ent_data_class where data_class_name='Quantity'
	select @cnt = count(*) from [dbo].[dim_ent_data_sub_class] where data_sub_class_name = 'Progress Module Previous Earned Quantity'
	if isnull(@cnt,0) = 0
	begin
	insert into [dbo].[dim_ent_data_sub_class] ([dim_ent_data_sub_class_nk],[start_date],[end_date],[hash_code],[active],[created_date_time],[modified_date_time],[late_arrival_flag]	,[dim_ent_data_class_nk],[data_class_name],[data_sub_class_name],[gpd_level],[alternative_data_sub_class_name])	values(187,'2000-01-01 00:00:00.000','2050-12-30 00:00:00.000','ìU1è@ÎÚš,%ÿ¯^ºû‰',1,'2024-06-18 07:59:24.157',NULL,'N',@dd,'Quantity','Progress Module Previous Earned Quantity','BY JDE COA','Progress Module Previous Earned Quantity')
	end
	go

