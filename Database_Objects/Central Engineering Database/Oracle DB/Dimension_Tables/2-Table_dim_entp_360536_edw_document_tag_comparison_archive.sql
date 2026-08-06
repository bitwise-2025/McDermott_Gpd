/****** Object:  Table [edw].[dim_entp_360536_edw_document_tag_comparison_archive]    Script Date: 1/29/2026 3:16:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_edw_document_tag_comparison_archive]
(
	[Document_Number] [nvarchar](max) NULL,
	[R] [nvarchar](max) NULL,
	[V] [nvarchar](max) NULL,
	[iDocs] [nvarchar](max) NULL,
	[EQA] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[3D] [nvarchar](max) NULL,
	[SPPID] [nvarchar](max) NULL,
	[SPI] [nvarchar](max) NULL,
	[SPEL] [nvarchar](max) NULL,
	[Line] [nvarchar](max) NULL,
	[ISO] [nvarchar](max) NULL,
	[OTL] [nvarchar](max) NULL,
	[Tag_Number] [nvarchar](max) NULL,
	[RDS_PP] [nvarchar](max) NULL,
	[Tag_Level] [nvarchar](max) NULL,
	[Folder] [nvarchar](max) NULL,
	[Review_Status] [nvarchar](max) NULL,
	[SDR_Code] [nvarchar](max) NULL,
	[EQA_Description] [nvarchar](max) NULL,
	[EQA_Source] [nvarchar](max) NULL,
	[EQA_Discipline] [nvarchar](max) NULL,
	[iDocs_Discipline] [nvarchar](max) NULL,
	[Discipline] [nvarchar](max) NULL,
	[Discipline_DS] [nvarchar](max) NULL,
	[Discipline_A] [nvarchar](max) NULL,
	[Discipline_B] [nvarchar](max) NULL,
	[Original_Tag] [nvarchar](max) NULL,
	[TenneT_Doc_Id] [nvarchar](max) NULL,
	[DCC_Identity_Number] [nvarchar](max) NULL,
	[Document_Title] [nvarchar](max) NULL,
	[Reconstructed] [nvarchar](max) NULL,
	[Reconstruct_Method] [nvarchar](max) NULL,
	[Critical_Document] [nvarchar](max) NULL,
	[REQ/PO_Number] [nvarchar](max) NULL,
	[Record_Count] [int] NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO
