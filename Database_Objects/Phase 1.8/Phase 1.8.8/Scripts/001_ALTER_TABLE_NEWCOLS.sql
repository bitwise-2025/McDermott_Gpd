ALTER TABLE [gpd].[iDocs_Doc_Eng]
	ADD [CONTRACT_NO] varchar(255) NULL;

ALTER TABLE [gpd].[iDocs_Doc_Eng]
	ADD [DELIVERABLE_TYPE] varchar(400) NULL;

ALTER TABLE [gpd].[reprocess_dim_entp_eng_deliv]
	ADD [CONTRACT_NO] varchar(255) NULL;

ALTER TABLE [gpd].[reprocess_dim_entp_eng_deliv]
	ADD [DELIVERABLE_TYPE] varchar(400) NULL;

ALTER TABLE [dbo].[dim_entp_eng_deliverables]
	ADD [contract_no] varchar(255) NULL;

ALTER TABLE [dbo].[dim_entp_eng_deliverables]
	ADD [deliverable_type] varchar(400) NULL;



---------------------------------VEN

ALTER TABLE [gpd].[iDocs_Doc_Ven]
	ADD [CONTRACT_NO] varchar(255) NULL;

ALTER TABLE [gpd].[reprocess_dim_entp_ven_deliv]
	ADD [CONTRACT_NO] varchar(255) NULL;


ALTER TABLE [dbo].[dim_entp_ven_deliverables]
	ADD [contract_no] varchar(255) NULL;