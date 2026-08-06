/****** Object:  Table [edw].[dim_entp_360536_edw_tag_document_comparison_archive]    Script Date: 1/29/2026 3:10:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_edw_tag_document_comparison_archive]
(
	[Tag_Number] [nvarchar](max) NULL,
	[RDS_PP] [nvarchar](max) NULL,
	[Tag_Level] [nvarchar](max) NULL,
	[EQA] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[3D] [nvarchar](max) NULL,
	[SPPID] [nvarchar](max) NULL,
	[SPI] [nvarchar](max) NULL,
	[SPEL] [nvarchar](max) NULL,
	[Line] [nvarchar](max) NULL,
	[ISO] [nvarchar](max) NULL,
	[OTL] [nvarchar](max) NULL,
	[Doc_Count] [int] NULL,
	[Documents] [nvarchar](max) NULL,
	[Documents_Unique] [nvarchar](max) NULL,
	[Revision] [nvarchar](max) NULL,
	[TenneT_Doc_Ids] [nvarchar](max) NULL,
	[TenneT_Doc_Ids_Unique] [nvarchar](max) NULL,
	[DCC_Identity_Numbers] [nvarchar](max) NULL,
	[DCC_Identity_Numbers_Unique] [nvarchar](max) NULL,
	[EQA_Description] [nvarchar](max) NULL,
	[EQA_Source] [nvarchar](max) NULL,
	[EQA_Discipline] [nvarchar](max) NULL,
	[Discipline] [nvarchar](max) NULL,
	[REQ/PO_Number] [nvarchar](max) NULL,
	[iDocs_Disciplines] [nvarchar](max) NULL,
	[Folders] [nvarchar](max) NULL,
	[Folders_Unique] [nvarchar](max) NULL,
	[Discipline_DS] [nvarchar](max) NULL,
	[Discipline_A] [nvarchar](max) NULL,
	[Discipline_B] [nvarchar](max) NULL,
	[REQ/PO_Number_List] [nvarchar](max) NULL,
	[REQ/PO_Number_Unique] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO