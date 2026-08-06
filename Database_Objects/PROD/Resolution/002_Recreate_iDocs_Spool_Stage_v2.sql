/****** Object:  Table [gpd].[iDocs_P21A_spoolstatus]    Script Date: 9/14/2021 11:47:38 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[gpd].[iDocs_P21A_spoolstatus]') AND type in (N'U'))
DROP TABLE [gpd].[iDocs_P21A_spoolstatus]
GO

/****** Object:  Table [gpd].[iDocs_P21A_spoolstatus]    Script Date: 9/14/2021 11:47:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [gpd].[iDocs_P21A_spoolstatus]
(
	[stage_idoc_P21A_SpoolStatus_id] [int] IDENTITY(1,1) NOT NULL,
	[PROJNAME] [varchar](1000) NOT NULL,
	[PROJNO] [varchar](50) NULL,
	[DOC_ID] [varchar](50) NULL,
	[DocumentNumber] [varchar](200) NULL,
	[Revision] [varchar](50) NULL,
	[RevisionDate] [varchar](50) NULL,
	[Title] [varchar](1000) NULL,
	[IssueState] [varchar](100) NULL,
	[TransmittalNumber] [varchar](50) NULL,
	[TransmittalDate] [varchar](30) NULL,
	[Deliverable] [varchar](40) NULL,
	[ISONumber] [varchar](100) NULL,
	[iDocsFolder] [varchar](101) NULL,
	[RefDoc] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO