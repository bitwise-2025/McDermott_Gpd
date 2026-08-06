/****** Object:  View [dbo].[dim_ent_function_alternative_v]    Script Date: 12/27/2021 5:21:30 AM ******/
IF	OBJECT_ID('[dbo].[dim_ent_function_alternative_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_ent_function_alternative_v]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_function_alternative_v]
AS select dim_ent_function_sk,dim_ent_function_nk,function_code,function_name,start_date,end_date,hash_code,active,created_date_time,modified_date_time,
	late_arrival_flag,value as alternative_function_name from [dbo].[dim_ent_function]
	CROSS APPLY STRING_SPLIT(alternative_function_name, '|') where  isnull(trim(value),'') <> '';
GO