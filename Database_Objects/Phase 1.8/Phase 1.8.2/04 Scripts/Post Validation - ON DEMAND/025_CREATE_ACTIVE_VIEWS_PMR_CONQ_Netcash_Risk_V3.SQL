
--***** Object:  View [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[RiskOpp_Risks_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[RiskOpp_Risks_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[RiskOpp_Contingency_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Net_Cash_Status_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Net_Cash_Status_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_Status_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Net_Cash_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Net_Cash_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Net_Cash_Collections_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Net_Cash_Collections_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]
GO
--***** Object:  View [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]
GO
--****** Object:  View [gpd].[Contingency_Draw_Down_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[Contingency_Draw_Down_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Contingency_Draw_Down_JSON_active_v]
GO
--****** Object:  View [gpd].[CONQ_RCA_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[CONQ_RCA_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_RCA_JSON_active_v]
GO
--****** Object:  View [gpd].[CONQ_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[CONQ_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[CONQ_JSON_active_v]
GO
--****** Object:  View [gpd].[ChangeManagement_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM *****
IF	OBJECT_ID('[gpd].[ChangeManagement_PMR_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[ChangeManagement_PMR_JSON_active_v]
GO

--****** Object:  View   Script Date: 08/29/2022 1:22:59 AM *****
IF	OBJECT_ID('[gpd].[Period_EAC_Variances_JSON_active_v]','V') IS NOT NULL
DROP VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
GO



/****** Object:  View [gpd].[ChangeManagement_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[ChangeManagement_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.ChangeManagement_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Month End Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Month End Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.ChangeManagement_PMR_JSON_v
GROUP BY [Project Number],[Contract Number],[Month End Date]);
GO
/****** Object:  View [gpd].[CONQ_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.CONQ_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] +   CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.CONQ_JSON_v
GROUP BY [Project Number],[Contract Number],[Date]);
GO
/****** Object:  View [gpd].[CONQ_RCA_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[CONQ_RCA_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.CONQ_RCA_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [date] + zversionNo in (
select [project number] + [contract number] + [date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.CONQ_RCA_JSON_v
group by [project number],[contract number],[date]);
GO
/****** Object:  View [gpd].[Contingency_Draw_Down_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Contingency_Draw_Down_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM [gpd].[Contingency_Draw_Down_JSON_v] v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM [gpd].[Contingency_Draw_Down_JSON_v]
GROUP BY [Project Number],[Contract Number],[Date]  );
GO
/****** Object:  View [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Net_Cash_Cash_Position_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Net_Cash_Cash_Position_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Net_Cash_Cash_Position_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Net_Cash_CashFlow_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.Net_Cash_CashFlow_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Net_Cash_CashFlow_PMR_JSON_v
GROUP BY [Project Number],[Contract Number],[Date] );
GO

/****** Object:  View [gpd].[Net_Cash_Collections_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Net_Cash_Collections_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Net_Cash_Collections_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Net_Cash_Collections_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[Net_Cash_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Net_Cash_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM gpd.Net_Cash_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.Net_Cash_PMR_JSON_v
GROUP BY [Project Number],[Contract Number],[Date] );
GO
/****** Object:  View [gpd].[Net_Cash_Status_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[Net_Cash_Status_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Net_Cash_Status_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Net_Cash_Status_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Contingency_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.RiskOpp_Contingency_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.RiskOpp_Contingency_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Deferral_Risks_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.RiskOpp_Deferral_Risks_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.RiskOpp_Deferral_Risks_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.*  FROM gpd.RiskOpp_Opportunity_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.RiskOpp_Opportunity_PMR_JSON_v
GROUP BY [Project Number],[Contract Number],[Date] );
GO
/****** Object:  View [gpd].[RiskOpp_Risks_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Risks_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.RiskOpp_Risks_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.RiskOpp_Risks_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO
/****** Object:  View [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]    Script Date: 9/12/2022 10:38:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [gpd].[RiskOpp_Romap_Status_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* FROM [gpd].[RiskOpp_Romap_Status_PMR_JSON_v] v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE [Project Number] + [Contract Number] + [Date] + zVersionNo in (
SELECT [Project Number] + [Contract Number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) FROM gpd.RiskOpp_Romap_Status_PMR_JSON_v
GROUP BY [Project Number],[Contract Number],[Date]);
GO

/****** Object:  View   Script Date: 09/12/2022 1:22:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW gpd.Period_EAC_Variances_JSON_active_v
as
select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Period_EAC_Variances_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [month end date] + zversionNo in (
select [project number] + [contract number] + [month end date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Period_EAC_Variances_JSON_v
group by [project number],[contract number],[month end date]); --Get Latest version for combination

GO