/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Global_Template_Engineering_Key_Quantities_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Global_Template_Engineering_Key_Quantities_JSON_active_v
as
select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Global_Template_Engineering_Key_Quantities_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [month end date] + zversionNo in (
select [project number] + [contract number] + [month end date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Global_Template_Engineering_Key_Quantities_JSON_v
group by [project number],[contract number],[month end date]) --Get Latest version for combination

Go


/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Subcontract_Cost_Status_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Subcontract_Cost_Status_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Subcontract_Cost_Status_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Subcontract_Cost_Status_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Subcontract_Cost_Status_JSON_v
GROUP BY [Project Number] + [Contract Number] + [Month End Date]) --Get Latest version for combination

Go

/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[procurement_status_report_planning_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[procurement_status_report_planning_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.procurement_status_report_planning_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.procurement_status_report_planning_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.procurement_status_report_planning_JSON_v
GROUP BY [Project Number] + [Contract Number]) --Get Latest version for combination


Go

/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Major_Subcontract_Cost_Status_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Major_Subcontract_Cost_Status_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Major_Subcontract_Cost_Status_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Major_Subcontract_Cost_Status_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Major_Subcontract_Cost_Status_JSON_v
GROUP BY [Project Number] + [Contract Number] + [Month End Date])  --Get Latest version for combination


Go

/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Milestone_PSRP_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Milestone_PSRP_SCM_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Milestone_PSRP_SCM_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Milestone_PSRP_SCM_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Milestone_PSRP_SCM_JSON_v
GROUP BY [Project Number] + [Contract Number])  --Get Latest version for combination


Go

/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Standard_Milestone_PSRP_SCM_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Standard_Milestone_PSRP_SCM_JSON_active_v
as
SELECT * FROM gpd.Standard_Milestone_PSRP_SCM_JSON_v
WHERE zVersionNo in (
SELECT CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Standard_Milestone_PSRP_SCM_JSON_v
) --Get Latest version for combination



Go


/****** Object:  View   Script Date: 08/30/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Narratives_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Narratives_SCM_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Narratives_SCM_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Narratives_SCM_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + [Phase] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + [Phase] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Narratives_SCM_JSON_v
GROUP BY [Project Number] + [Contract Number] + [Date] + [Phase])   --Get Latest version for combination




Go

/****** Object:  View   Script Date: 08/29/2022 1:22:59 AM ******/
IF	OBJECT_ID('[gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_active_v
as
SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Fabrication_Construction_Schedule_Milestone_SCM_JSON_v
GROUP BY [Project Number] + [Contract Number])    --Get Latest version for combination