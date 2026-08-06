
DECLARE @Date DATETIME;
SET @Date = GETDATE();
INSERT INTO [dbo].[dim_ent_discipline]
           (dim_ent_discipline_nk,[discipline_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[discipline_name])
     SELECT max(dim_ent_discipline_nk)+1,
           'PROJ_CONSU'
          ,@Date
           ,'2050-12-31 00:00:00.000'
           ,'ÒØ¿·§=½®''¯0q.c‘'
           ,1
           ,@Date
           ,NULL
           ,0
           ,'PROJ_CONSU'
	from [dbo].[dim_ent_discipline]

	INSERT INTO [dbo].[dim_ent_unit_of_measure]
           (dim_ent_unit_of_measure_nk,[unit_of_measure_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[unit_of_measure_name])
     SELECT max(dim_ent_unit_of_measure_nk)+1,
           'M'
           ,@Date
           ,'2050-12-31 00:00:00.000'
           ,'­÷‡ÉBùÝRúñº'
           ,1
           ,@Date
           ,NULL
           ,0
           ,'M'
		  from [dbo].[dim_ent_unit_of_measure]

	INSERT INTO [dbo].[dim_ent_unit_of_measure]
           (dim_ent_unit_of_measure_nk,[unit_of_measure_code]
           ,[start_date]
           ,[end_date]
           ,[hash_code]
           ,[active]
           ,[created_date_time]
           ,[modified_date_time]
           ,[late_arrival_flag]
           ,[unit_of_measure_name])
     SELECT max(dim_ent_unit_of_measure_nk)+1,
            'SET'
           ,@Date
           ,'2050-12-31 00:00:00.000'
           ,'­÷‡ÉBùÝRúñº'
           ,1
           ,@Date
           ,NULL
           ,0
           ,'SET'
from [dbo].[dim_ent_unit_of_measure]
