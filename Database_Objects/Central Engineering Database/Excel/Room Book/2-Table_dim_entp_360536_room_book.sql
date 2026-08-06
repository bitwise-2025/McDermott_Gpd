/****** Object:  Table [dbo].[dim_entp_tennet_2gw_poc_room_book]    Script Date: 11/13/2025 2:51:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_entp_360536_room_book]
(
	[Deck] [nvarchar](max) NULL,
	[RoomAreaNumber] [int] NULL,
	[RoomArea] [nvarchar](max) NULL,
	[SpaceDef] [nvarchar](max) NULL,
	[AreaClassification] [nvarchar](max) NULL,
	[BSHSection] [nvarchar](max) NULL,
	[Length] [float] NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[NetArea] [float] NULL,
	[MinArea] [float] NULL,
	[CleanRainWater] [nvarchar](max) NULL,
	[FreshCondensedWater] [nvarchar](max) NULL,
	[CoolingMediumGlycol-Water] [nvarchar](max) NULL,
	[CoolingMediumRainwater] [nvarchar](max) NULL,
	[OilyRainWater] [nvarchar](max) NULL,
	[OilyRainWater2] [nvarchar](max) NULL,
	[BlackAndGreyWater] [nvarchar](max) NULL,
	[TypeHeatRemovalSystem] [nvarchar](max) NULL,
	[Troom-Max-NoPersRoom] [int] NULL,
	[TRoom-min-NoPersRoom_] [int] NULL,
	[AbsoluteHumidityMin-NoPersRoom] [float] NULL,
	[RelativeHumidityMin-NoPersRoom] [int] NULL,
	[RelativeHumidityMax-NoPersRoom] [int] NULL,
	[SetPointTemperature] [int] NULL,
	[Troom-Max-PresPersRoom] [int] NULL,
	[TRoom-min-PresPersRoom_] [int] NULL,
	[AbsoluteHumidityMin-PresPersRoom] [float] NULL,
	[RelativeHumidityMin-PresPersRoom] [int] NULL,
	[RelativeHumidityMax-PresPersRoom] [int] NULL,
	[OverpressureAmbient] [int] NULL,
	[FilterClassAHU] [nvarchar](max) NULL,
	[FireAndExplosionRisk] [nvarchar](max) NULL,
	[CombinedSmoke-HeatDetectors] [nvarchar](max) NULL,
	[HeatDetectors] [nvarchar](max) NULL,
	[FlameDetectors] [nvarchar](max) NULL,
	[MCPIndoor] [nvarchar](max) NULL,
	[MCPOutdoor] [nvarchar](max) NULL,
	[AspiratingSmokeDetectors] [nvarchar](max) NULL,
	[SF6GasDetectors] [nvarchar](max) NULL,
	[H2GasDetectors] [nvarchar](max) NULL,
	[AutomaticFireFighting] [nvarchar](max) NULL,
	[MaximumBackgroundNoiseLevel] [int] NULL,
	[MaxMannedModeNoiseLevel_] [int] NULL,
	[FixedCamera] [int] NULL,
	[PTZCamera] [int] NULL,
	[SpareRJ45ConnRoom311] [int] NULL,
	[SpareRJ45ConnRoom317] [int] NULL,
	[VoIPTelephConnections] [int] NULL,
	[VoIPTelephSets] [int] NULL,
	[PAGAMicrophoneStation] [int] NULL,
	[DoorAccessControlSystem] [nvarchar](max) NULL,
	[NormalIllumination] [int] NULL,
	[EmergencyStandbyLighting] [int] NULL,
	[EscapeLightingAaverage-Minimum] [nvarchar](max) NULL,
	[230VSocketOutletsNormalSupply] [int] NULL,
	[230VSocketOutletsUPSSupply] [int] NULL,
	[400VSocketOutlets32A] [int] NULL,
	[400VSocketOutlets63A] [int] NULL,
	[400VSocketOutlets125A] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Load_date] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	HEAP
)
GO


