--***** Object:  View [gpd].[NCSA_coconsole_certificatestatus_convert_v]    Script Date: 9/21/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[NCSA_coconsole_certificatestatus_convert_v]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_coconsole_certificatestatus_convert_v]
GO

/****** Object:  View [gpd].[NCSA_coconsole_certificatestatus_convert_v]    Script Date: 9/21/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view   [gpd].[NCSA_coconsole_certificatestatus_convert_v]
as SELECT  ROW_NUMBER() OVER(order by (select 0) ) as rssk,
Project,System,sub_system,sub_system_description,SrcFileName,'{ '+STRING_AGG( ISNULL(Dict_value, ''), '|')+' }' As json_attribute,
'{ '+STRING_AGG( ISNULL(Dict_value, ''), ',')+' }' AS json_attribute_for_view
FROM
          (SELECT *,'"'+Certificate+'" : "'+Cert_value+'"' as Dict_value
          From gpd.NCSA_coconsole_certificatestatus ) as Base
GROUP BY  Project,System,sub_system,sub_system_description,SrcFileName;

GO

--***** Object:  View [gpd].[NCSA_coconsole_certificatestatus_view]   Script Date: 9/21/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[NCSA_coconsole_certificatestatus_view]','V') IS NOT NULL
DROP VIEW [gpd].[NCSA_coconsole_certificatestatus_view]
GO

/****** Object:  View [gpd].[NCSA_coconsole_certificatestatus_view]   Script Date: 9/21/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create VIEW [gpd].[NCSA_coconsole_certificatestatus_view]
AS select ROW_NUMBER() OVER(order by (select 0) ) as rssk,
Project,System,sub_system,sub_system_description,SrcFileName, 
replace(dbo.RemoveNonASCII(json_attribute),'","','"|"') as json_attribute,
dbo.RemoveNonASCII(json_attribute) as json_attribute_for_view from [gpd].[NCSA_coconsole_certificatestatus_convert_v];
GO


