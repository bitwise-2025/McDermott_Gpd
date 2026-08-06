DROP TABLE [EUD].[EUT_exl]
GO
CREATE TABLE [EUD].[EUT_exl]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[Vendor] [varchar](100) NULL,
	[usage_Date] [varchar](100) NULL,
	[Application] [varchar](500) NULL,
	[Network_ID] [varchar](1000) NULL,
	[Gross] [varchar](1000) NULL,
	[token] [varchar](1000) NULL,
	[Duration] [varchar](1000) NULL,
	[usageType] [varchar](1000) NULL,
	[SourceFileName] [varchar](1000) NULL,
	[CreatedDateTime] [varchar](1000) NULL,
	[Time] [varchar](100) NULL,
	[Qty] [varchar](100) NULL,
	[VersionNo] [varchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO




ALTER PROC [EUD].[sp_EUT_Ansys_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO eud.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT [Vendor],[Usage_Date],[App],[User],[Gross],[Tokens Consumed by License],[Duration],[usageType],[zSourceFileName],[zCreatedDateTime],[Time],[Qty],[zVersionNo]   
FROM [eud].[EUT_v] where zSourceFileName like ''%Ansys%''' ;
 EXEC sp_executesql @STMT;
 END

GO



ALTER PROC [EUD].[sp_EUT_Aspentech_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO EUD.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,[Date],Product,[User],Gross,[Tokens Consumed by License],Duration,usageType,zSourceFileName,zCreatedDateTime,[Time],[Qty],zVersionNo           
FROM [EUD].[EUT_v] where zSourceFileName like ''%Aspentech%''' ;
 EXEC sp_executesql @STMT;
 END
GO




ALTER PROC [EUD].[sp_EUT_Autodesk_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO EUD.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,usageDate,productName,userName,Gross,tokensConsumed,Duration,usageType,zSourceFileName,zCreatedDateTime,[Time],[Qty],zVersionNo    
FROM [EUD].[EUT_v] where zSourceFileName like ''%Autodesk%''' ;
 EXEC sp_executesql @STMT;
 END
GO



ALTER PROC [EUD].[sp_EUT_AVEVA_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO eud.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,[Usage_Date],Usage_Log_App,[User],Gross,[Tokens Consumed by License],Duration,usageType,zSourceFileName,zCreatedDateTime,[Time],[Qty],zVersionNo        
FROM [eud].[EUT_v] where zSourceFileName like ''%AVEVA%''' ;
 EXEC sp_executesql @STMT;
 END
GO



ALTER PROC [EUD].[sp_EUT_Bentley_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO EUD.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,[Usage Date],Application,Persona,Gross,tokensConsumed,Duration,usageType,zSourceFileName,zCreatedDateTime, [Time], [Qty], zVersionNo      
FROM [EUD].[EUT_v] where zSourceFileName like ''%Bentley%''' ;
 EXEC sp_executesql @STMT;
 END

GO



ALTER PROC [EUD].[sp_EUT_dasaault_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO eud.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,[Usage_Date],Application,[User],Gross,tokensConsumed,Duration,usageType,zSourceFileName,zCreatedDateTime,Time,Qty,zVersionNo   
FROM [eud].[EUT_v] where zSourceFileName like ''%dassault%''' ;
EXEC sp_executesql @STMT;
END
GO



ALTER PROC [EUD].[sp_EUT_Hexagon_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO EUD.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,Start,App,[User],Gross,tokensConsumed,Duration,usageType,zSourceFileName,zCreatedDateTime,[Time],[Qty], zVersionNo      
FROM [EUD].[EUT_v] where zSourceFileName like ''%HEXAGON%''' ;
 EXEC sp_executesql @STMT;
 END
GO



ALTER PROC [EUD].[sp_EUT_Schlumberger_exl] AS
BEGIN
DECLARE @STMT AS NVARCHAR(MAX) ='
INSERT INTO eud.EUT_exl (Vendor, usage_Date, Application, Network_ID, Gross, token, Duration, usageType, SourceFileName, CreatedDateTime, Time, Qty, VersionNo)
SELECT 
Vendor,[Usage_Date],App,[User],Gross,[Tokens Consumed by License],Duration,usageType,zSourceFileName,zCreatedDateTime,Time,Qty,zVersionNo   
FROM [eud].[EUT_v] where zSourceFileName like ''%Schlumberger%''' ;
 EXEC sp_executesql @STMT;
 END
GO

