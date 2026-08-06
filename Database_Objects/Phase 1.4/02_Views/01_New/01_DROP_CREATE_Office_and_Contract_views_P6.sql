/****** Object:  View [dbo].[dim_ent_office_active_v]    Script Date: 2/7/2022 5:12:25 AM ******/
--IF	OBJECT_ID('[dbo].[dim_ent_office_active_v]','V') IS NOT NULL
--DROP VIEW [dbo].[dim_ent_office_active_v]
--GO

/****** Object:  View [dbo].[dim_ent_office_active_v]    Script Date: 2/7/2022 5:12:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_office_active_v]
AS select * from [dbo].[dim_ent_office] where active=1;
GO


/****** Object:  View [gpd].[P6_codes_office_v]    Script Date: 4/5/2022 1:24:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[P6_codes_office_v]
AS SELECT
 Stage_p6_codes_office_id,code_Value,Description,O.alternative_office_code
FROM gpd.P6_codes_office S
LEFT JOIN [dbo].[dim_ent_office] O ON S.Code_Value=O.Office_Code 
where O.Active=1;
GO




/****** Object:  View [dbo].[dim_ent_office_alternative_v]    Script Date: 4/5/2022 1:31:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_ent_office_alternative_v]
AS select dim_ent_office_sk,dim_ent_office_nk,office_code,office_description,start_date,end_date,hash_code,late_arrival_flag,active,created_date_time,modified_date_time,
	value as alternative_office_code from [dbo].[dim_ent_office]
	CROSS APPLY STRING_SPLIT(alternative_office_code, '|') where  isnull(trim(value),'') <> '' and  Active=1;
GO

/****** Object:  View [dbo].[dim_entp_contract_entity_active_v]    Script Date: 3/31/2022 12:32:43 AM ******/
IF	OBJECT_ID('[dbo].[dim_entp_contract_entity_active_v]','V') IS NOT NULL
DROP VIEW [dbo].[dim_entp_contract_entity_active_v]

GO

/****** Object:  View [dbo].[dim_entp_contract_entity_active_v]    Script Date: 3/31/2022 12:32:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[dim_entp_contract_entity_active_v]
AS select  case when len(project_number) = 5 then ltrim(rtrim(project_number)) + entity else contract_no end  contract_entity,max(location) location from dbo.dim_entp_contract_entity
where active=1
group by case when len(project_number) = 5 then ltrim(rtrim(project_number)) + entity else contract_no end;
GO


/****** Object:  View [dbo].[dim_entp_contract_entity_v]    Script Date: 4/17/2022 8:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dim_entp_contract_entity_v]
AS select *,project_number + isnull(entity,'') contract_entity from dim_entp_contract_entity where active = 1;
GO