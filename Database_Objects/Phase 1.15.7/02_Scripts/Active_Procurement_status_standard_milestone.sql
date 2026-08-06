 

/****** Object:  View [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]    Script Date: 9/26/2023 8:39:34 AM ******/

 

SET ANSI_NULLS ON

 

GO

 

 

SET QUOTED_IDENTIFIER ON

 

GO

 


IF    OBJECT_ID('[gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]','V') IS NOT NULL

 

 

DROP VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]

 

 

GO
CREATE VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]

 

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V V

 

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

 

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

 

WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (

 

SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.Standard_Milestone_PSRP_SCM_JSON_V

 

GROUP BY [Project Number], [Contract Number] );

 

GO

 

 

 



 

/****** Object:  View [gpd].[procurement_status_report_planning_JSON_active_v]    Script Date: 9/26/2023 8:38:32 AM ******/

 

SET ANSI_NULLS ON

 

GO

 

 

SET QUOTED_IDENTIFIER ON

 

GO

 

IF    OBJECT_ID('[gpd].[procurement_status_report_planning_JSON_active_v]','V') IS NOT NULL

 

 

DROP VIEW [gpd].[procurement_status_report_planning_JSON_active_v]

 

 

GO

 

CREATE VIEW [gpd].[procurement_status_report_planning_JSON_active_v]

 

AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.procurement_status_report_planning_JSON_V V

 

LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK

 

LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK

 

WHERE [Project Number] + [Contract Number]  + convert(varchar(20),zVersionNo) in (

 

SELECT [Project Number] +[Contract Number]  +convert(varchar(20),MAX(zVersionNo)) FROM gpd.procurement_status_report_planning_JSON_V

 

GROUP BY [Project Number], [Contract Number]);

 

GO