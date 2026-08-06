/****** Object:  StoredProcedure [dbo].[usp_NCSA_PO_EXTRACT_NEW_Transform]    Script Date: 6/22/2022 3:14:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_NCSA_PO_EXTRACT_NEW_Transform] AS

--exec [dbo].[usp_NCSA_PO_EXTRACT_NEW_Transform]
-- GET ONLY SUPPLIER CODE 

declare @stagingCount bigint;
declare @reprocessPoDetailCount bigint;
declare @reprocessPoHeaderCount bigint;
set @stagingCount=(select count(1) from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]);
set @reprocessPoDetailCount=(select count(1) from [gpd].[reprocess_dim_entp_po_detail]);
set @reprocessPoHeaderCount=(select count(1) from [gpd].[reprocess_dim_entp_po_header]);
--[gpd].[reprocess_dim_entp_po_header]
Select * from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]

IF (@stagingCount > 0)
begin 

UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]
SET SUPPLIER_COUNTRY=CASE WHEN SUPPLIER_COUNTRY like '%-%' THEN LEFT(SUPPLIER_COUNTRY,CHARINDEX('-',SUPPLIER_COUNTRY)-1) 
					ELSE SUPPLIER_COUNTRY
					END


--UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW]
--SET project_number= CASE 
--					WHEN LTRIM(RTRIM(PROJ_ID))='HS004' THEN '99236910' 
--					WHEN LTRIM(RTRIM(PROJ_ID))='HS005' THEN '99239348' 
--					WHEN LTRIM(RTRIM(PROJ_ID))='HS001' THEN '99191058' 
--					ELSE NULL
--					END



UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
	SET PO_ISSUE_DATE =   FORMAT(TRY_CONVERT(datetime,PO_ISSUE_DATE),'dd-MMM-yyyy'),PO_DATE =   FORMAT(TRY_CONVERT(datetime,PO_ISSUE_DATE),'dd-MMM-yyyy'),ROS_DATE =   FORMAT(TRY_CONVERT(datetime,ROS_DATE),'dd-MMM-yyyy')

--update measure columns for requisiton_combined=reqno+reqdesc and identcode_comined=ident_code+item_deescription
/* not required
UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
SET REQUISITION_COMBINED= CASE WHEN LEN(CONCAT(REQUISITION_NO,': ',REQUISITION_DESC)) > 0 THEN CONCAT(REQUISITION_NO,': ',REQUISITION_DESC) ELSE NULL END ,IDENT_CODE_COMBINED=CASE WHEN LEN(CONCAT(IDENT_CODE,': ',ITEM_DESCRIPTION)) > 0 THEN CONCAT(IDENT_CODE,': ',ITEM_DESCRIPTION) ELSE NULL END 
*/

--trim mrr number column
UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
SET MRR_NUMBER=RTRIM(LTRIM(MRR_NUMBER))

UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
SET PO_ISSUE_DATE = ISNULL(PO_ISSUE_DATE,'1900-01-01'),PO_DATE = ISNULL(PO_DATE,'1900-01-01')

--since mrr_number and release_note_no are NK, setting it to defautl value i.e --- similar to what tag_number has
--UPDATE [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
--SET MRR_NUMBER = ISNULL(MRR_NUMBER,'---')

end

/*
select SUPPLIER_COUNTRY=CASE WHEN SUPPLIER_COUNTRY like '%-%' THEN LEFT(SUPPLIER_COUNTRY,CHARINDEX('-',SUPPLIER_COUNTRY)-1) 
					ELSE SUPPLIER_COUNTRY
					END  from [gpd].[NCSA_SMAT_PO_EXTRACT_NEW] 
					*/

	
GO


