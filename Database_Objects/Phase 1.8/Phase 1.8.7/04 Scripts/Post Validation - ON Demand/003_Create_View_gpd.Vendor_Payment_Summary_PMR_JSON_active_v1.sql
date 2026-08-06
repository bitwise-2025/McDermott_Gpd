SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [gpd].[Vendor_Payment_Summary_PMR_JSON_active_v]
AS select p.dim_entp_project_nk,c.dim_ent_contract_nk,v.* from gpd.Vendor_Payment_Summary_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
where [project number] + [contract number] + [Date] + zversionNo in (
select [project number] + [contract number] + [Date] + CONVERT(VARCHAR,(MAX(CAST(zVersionNo AS INT)))) from gpd.Vendor_Payment_Summary_PMR_JSON_v
group by [project number],[contract number],[Date]);
GO