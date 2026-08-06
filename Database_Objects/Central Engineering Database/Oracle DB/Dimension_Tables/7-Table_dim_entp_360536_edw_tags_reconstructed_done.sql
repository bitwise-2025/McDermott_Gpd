/****** Object:  Table [edw].[dim_entp_360536_edw_tags_reconstructed_done]    Script Date: 12/1/2025 11:37:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [edw].[dim_entp_360536_edw_tags_reconstructed_done]
(
	[Tag_Scraped] [nvarchar](max) NULL,
	[Tag_Reconstructed] [nvarchar](max) NULL,
	[Reconstructed] [nvarchar](max) NULL,
	[Document_Count] [int] NULL,
	[Reconstruct_Method] [nvarchar](max) NULL,
	[Document_Number] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO