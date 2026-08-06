/****** Object:  Table [dbo].[ADFLogs]    Script Date: 8/23/2022 4:54:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ADFExtFileLogs]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[PipelineName] [varchar](100) NULL,
	[RunId] [varchar](100) NULL,
	[ExternalFilename] [varchar](200) NULL,
	[VersionNo] [varchar](200) NULL,
	[Archive_location] [varchar](1000) NULL,
	[Uploaded_by] [varchar](500) NULL,
	[SourceRecords] [varchar](100) NULL,
	[CreatedDateTime] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

/****** Object:  Index [ind1]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind1] ON [dbo].[ADFExtFileLogs]
(
	[CreatedDateTime] ASC
)WITH (DROP_EXISTING = OFF)
GO
/****** Object:  Index [ind2]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind2] ON [dbo].[ADFExtFileLogs]
(
	[PipelineName] ASC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind3]    Script Date: 2/7/2022 5:06:51 AM ******/
CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[ADFExtFileLogs]
(
	[PipelineName] ASC,
	[CreatedDateTime] DESC,
	[VersionNo] DESC
)WITH (DROP_EXISTING = OFF)
GO
SET ANSI_PADDING ON
GO


