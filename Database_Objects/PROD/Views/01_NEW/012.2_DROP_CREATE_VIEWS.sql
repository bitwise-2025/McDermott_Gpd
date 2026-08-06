DROP VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_v]
GO


CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_v]
AS select rssk, convert(money, case when [BETTER SAME WORSE] in ('NULL', '')  then NULL else [Better Same Worse] end ) as [Better Same Worse],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(date, case when [DATE] in ('NULL', '')  then NULL else [Date] end ) as [Date],convert(money, case when [HIGH] in ('NULL', '')  then NULL else [High] end ) as [High],convert(money, case when [LOW] in ('NULL', '')  then NULL else [Low] end ) as [Low],convert(money, case when [MOST LIKELY] in ('NULL', '')  then NULL else [Most Likely] end ) as [Most Likely],convert(varchar(max), case when [OPPORTUNITY DESCRIPTION] in ('NULL', '')  then NULL else [Opportunity Description] end ) as [Opportunity Description],convert(varchar(max), case when [OPPORTUNITY ID] in ('NULL', '')  then NULL else [Opportunity ID] end ) as [Opportunity ID],convert(int, case when [ORDER NO] in ('NULL', '')  then NULL else [Order No] end ) as [Order No],convert(varchar(max), case when [PLAN / RESPONSE] in ('NULL', '')  then NULL else [Plan / Response] end ) as [Plan / Response],convert(money, case when [PROBABILITY] in ('NULL', '')  then NULL else [Probability] end ) as [Probability],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo]  
	from (
	SELECT rssk, [Better Same Worse],[Contract Number],[Date],[High],[Low],[Most Likely],[Opportunity Description],[Opportunity ID],[Order No],[Plan / Response],[Probability],[Project Number],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.RiskOpp_Opportunity_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Better Same Worse],[Contract Number],[Date],[High],[Low],[Most Likely],[Opportunity Description],[Opportunity ID],[Order No],[Plan / Response],[Probability],[Project Number],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Better Same Worse], 'N') = 1 and dbo.isNumericCustom([High], 'N') = 1 and dbo.isNumericCustom([Low], 'N') = 1 and dbo.isNumericCustom([Most Likely], 'N') = 1 and dbo.isNumericCustom([Order No], 'NI') = 1 and dbo.isNumericCustom([Probability], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO





------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_error_v]
GO

CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_error_v]
AS select rssk, [Better Same Worse] as [Better Same Worse],[Contract Number] as [Contract Number],[Date] as [Date],[High] as [High],[Low] as [Low],[Most Likely] as [Most Likely],[Opportunity Description] as [Opportunity Description],[Opportunity ID] as [Opportunity ID],[Order No] as [Order No],[Plan / Response] as [Plan / Response],[Probability] as [Probability],[Project Number] as [Project Number],[zCreatedDateTime] as [zCreatedDateTime],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo] 
	from (
	SELECT rssk, [Better Same Worse],[Contract Number],[Date],[High],[Low],[Most Likely],[Opportunity Description],[Opportunity ID],[Order No],[Plan / Response],[Probability],[Project Number],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.RiskOpp_Opportunity_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Better Same Worse],[Contract Number],[Date],[High],[Low],[Most Likely],[Opportunity Description],[Opportunity ID],[Order No],[Plan / Response],[Probability],[Project Number],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Better Same Worse], 'N') != 1 or dbo.isNumericCustom([High], 'N') != 1 or dbo.isNumericCustom([Low], 'N') != 1 or dbo.isNumericCustom([Most Likely], 'N') != 1 or dbo.isNumericCustom([Order No], 'NI') != 1 or dbo.isNumericCustom([Probability], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO



------------------------------------------------------------------------------------------------------------------------------------------------




DROP VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
GO

CREATE VIEW [gpd].[RiskOpp_Opportunity_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,  v.[rssk]  ,v.[Better Same Worse]  ,v.[Contract Number]  ,v.[Date]  ,v.[High]  ,v.[Low]  ,v.[Most Likely],v.[Order No]  ,v.[Opportunity Description]  ,v.[Opportunity ID]  ,v.[Plan / Response]  ,v.[Probability]  ,v.[Project Number]  ,v.[zCreatedDateTime]  ,v.[zSourceFileName]  ,v.[zVersionNo]  FROM gpd.RiskOpp_Opportunity_PMR_JSON_V V LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number --GET project_NK  
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK  
WHERE zVersionNo = (select max(zVersionNo) from gpd.RiskOpp_Opportunity_PMR_JSON_V z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Date] = v.[Date]);
GO




------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_V]
GO


CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_V]
AS select rssk, convert(money, case when [AMOUNT] in ('NULL', '')  then NULL else [Amount] end ) as [Amount],convert(date, case when [DATE] in ('NULL', '')  then NULL else [Date] end ) as [Date],convert(varchar(max), case when [TYPE 3] in ('NULL', '')  then NULL else [Type 3] end ) as [Type 3],convert(varchar(max), case when [TYPE 1] in ('NULL', '')  then NULL else [Type 1] end ) as [Type 1],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(varchar(max), case when [TYPE 2] in ('NULL', '')  then NULL else [Type 2] end ) as [Type 2],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime]  
	from (
	SELECT rssk, [Amount],[Date],[Type 3],[Type 1],[zSourceFileName],[zVersionNo],[Project Number],[Type 2],[Contract Number],[zCreatedDateTime] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Financials_3_LDs_Guarantees_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Amount],[Date],[Type 3],[Type 1],[zSourceFileName],[zVersionNo],[Project Number],[Type 2],[Contract Number],[zCreatedDateTime] )) as p) q 
	where dbo.isNumericCustom([Amount], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO




------------------------------------------------------------------------------------------------------------------------------------------------


DROP VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_error_v]
GO

CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_error_v]
AS select rssk,(select error_message from gpd.Financials_3_LDs_Guarantees_PMR_JSON_active_error_v_error_message x where x.rssk = q.rssk) as error_message, [Amount] as [Amount],[Date] as [Date],[Type 3] as [Type 3],[Type 1] as [Type 1],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo],[Project Number] as [Project Number],[Type 2] as [Type 2],[Contract Number] as [Contract Number],[zCreatedDateTime] as [zCreatedDateTime] 
	from (
	SELECT rssk, [Amount],[Date],[Type 3],[Type 1],[zSourceFileName],[zVersionNo],[Project Number],[Type 2],[Contract Number],[zCreatedDateTime] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Financials_3_LDs_Guarantees_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Amount],[Date],[Type 3],[Type 1],[zSourceFileName],[zVersionNo],[Project Number],[Type 2],[Contract Number],[zCreatedDateTime] )) as p) q 
	where dbo.isNumericCustom([Amount], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO



------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]
GO

CREATE VIEW [gpd].[Financials_3_LDs_Guarantees_PMR_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[Amount],
v.[Contract Number],
v.[Date],
v.[Project Number],
v.[rssk],
v.[Type 1],
v.[Type 2],
v.[Type 3],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo]  
FROM gpd.Financials_3_LDs_Guarantees_PMR_JSON_v V
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE zVersionNo = (select max(zVersionNo) from gpd.Financials_3_LDs_Guarantees_PMR_JSON_v z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Date] = v.[Date]);
GO




------------------------------------------------------------------------------------------------------------------------------------------------



DROP VIEW [dbo].[dim_date_v]
GO

CREATE VIEW [dbo].[dim_date_v]
AS select	[dbo].[dim_ent_date].*, 
			case when 
						day(standard_date) = day(getdate()) 
					and month(standard_date) = month(getdate())
					and year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_day_flag,
			case when 
						month(standard_date) = month(getdate())
					and year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_month_flag,
			case when 
						year(standard_date) = year(getdate()) 
			then '1' else '0' end  current_year_flag,
			case when 
						year(standard_date) = year(getdate()) 
				  and  quarter_attribute = (select quarter_attribute from  dim_ent_date a where a.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_quarter_flag,
			case	when year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week_of_month = (select week_of_month from  dim_ent_date a where a.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week1_of_month = (select week1_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag1,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week2_of_month = (select week2_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag2,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week3_of_month = (select week3_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag3,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week4_of_month = (select week4_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag4,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week5_of_month = (select week5_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag5,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week6_of_month = (select week6_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag6,
			case when	year(standard_date) = year(getdate()) 
					and month(standard_date) = month(getdate()) 
					and  week7_of_month = (select week7_of_month from  dim_ent_date b where b.standard_date = convert(date,getdate())) 
			then  '1' else '0' end  current_week_flag7,
			datediff(week,getdate(),week_start_date) week_offset,
			datediff(month,getdate(),month_start_date) month_offset,
			datediff(year,getdate(),year_start_date) year_offset,
			datediff(week,getdate(),week_start_date2) week_offset2,
			datediff(week,getdate(), week_1_start_sunday) week_offset_1_sunday,
			datediff(week,getdate(), week_2_start_monday) week_offset_2_monday,
			datediff(week,getdate(), week_3_start_tuesday) week_offset_3_tuesday,
			datediff(week,getdate(), week_4_start_wednesday) week_offset_4_wednesday,
			datediff(week,getdate(), week_5_start_thursday) week_offset_5_thursday,
			datediff(week,getdate(), week_6_start_friday) week_offset_6_friday,
			datediff(week,getdate(), week_7_start_saturday) week_offset_7_saturday,
case when year_attribute = year(dateadd(month,-1,(case when day(getdate()) <= 15 then dateadd(day,day(getdate()) * -1,getdate()) else getdate() end))) and quarter_attribute = 
(select quarter_attribute from  dim_ent_date a where a.standard_date = convert(date,   dateadd(month,-1,(case when day(getdate()) <= 15 then dateadd(day,day(getdate()) * -1,getdate()) else getdate() end))   )  ) then  '1' else '0' end  current_quarter_flag_based_on_last_Month
from [dbo].[dim_ent_date];
GO


---------------------------------------------------------------------------------

CREATE TABLE [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v_error_message]
(
	[rssk] [bigint] IDENTITY(1,1) NOT NULL,
	[error_message] [varchar](8000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO



---------------------------------------------------------------------------------



DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_v]
GO


CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_v] AS select rssk, convert(date, case when [ACTUAL DATE] in ('NULL', '')  then NULL else [Actual Date] end ) as [Actual Date],convert(int, case when [CLOSED ITEMS] in ('NULL', '')  then NULL else [Closed Items] end ) as [Closed Items],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(date, case when [DATE] in ('NULL', '')  then NULL else [Date] end ) as [Date],convert(date, case when [FORECAST DATE] in ('NULL', '')  then NULL else [Forecast Date] end ) as [Forecast Date],convert(varchar(max), case when [MATURITY] in ('NULL', '')  then NULL else [Maturity] end ) as [Maturity],convert(int, case when [ORDER] in ('NULL', '')  then NULL else [Order] end ) as [Order],convert(date, case when [PLANNED DATE] in ('NULL', '')  then NULL else [Planned Date] end ) as [Planned Date],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(int, case when [TOTAL ITEMS] in ('NULL', '')  then NULL else [Total Items] end ) as [Total Items],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo]  
	from (
	SELECT rssk, [Actual Date],[Closed Items],[Contract Number],[Date],[Forecast Date],[Maturity],[Order],[Planned Date],[Project Number],[Total Items],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.ModelMat_Model_Maturity_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Actual Date],[Closed Items],[Contract Number],[Date],[Forecast Date],[Maturity],[Order],[Planned Date],[Project Number],[Total Items],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Closed Items], 'NI') = 1 and dbo.isNumericCustom([Order], 'NI') = 1 and dbo.isNumericCustom([Total Items], 'NI') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([Actual Date], 23) = 1 and dbo.isDateCustom([Date], 23) = 1 and dbo.isDateCustom([Forecast Date], 23) = 1 and dbo.isDateCustom([Planned Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO



---------------------------------------------------------------------------------

DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v]
GO


CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_error_v] AS select rssk,(select error_message from gpd.ModelMat_Model_Maturity_PMR_JSON_active_error_v_error_message x where x.rssk = q.rssk) as error_message, [Actual Date] as [Actual Date],[Closed Items] as [Closed Items],[Contract Number] as [Contract Number],[Date] as [Date],[Forecast Date] as [Forecast Date],[Maturity] as [Maturity],[Order] as [Order],[Planned Date] as [Planned Date],[Project Number] as [Project Number],[Total Items] as [Total Items],[zCreatedDateTime] as [zCreatedDateTime],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo] 
	from (
	SELECT rssk, [Actual Date],[Closed Items],[Contract Number],[Date],[Forecast Date],[Maturity],[Order],[Planned Date],[Project Number],[Total Items],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.ModelMat_Model_Maturity_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Actual Date],[Closed Items],[Contract Number],[Date],[Forecast Date],[Maturity],[Order],[Planned Date],[Project Number],[Total Items],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Closed Items], 'NI') != 1 or dbo.isNumericCustom([Order], 'NI') != 1 or dbo.isNumericCustom([Total Items], 'NI') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([Actual Date], 23) != 1 or dbo.isDateCustom([Date], 23) != 1 or dbo.isDateCustom([Forecast Date], 23) != 1 or dbo.isDateCustom([Planned Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO


---------------------------------------------------------------------------------


DROP VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v]
GO


CREATE VIEW [gpd].[ModelMat_Model_Maturity_PMR_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,v.[Actual Date],
v.[Closed Items],
v.[Contract Number],
v.[Date],
v.[Forecast Date],
v.[Maturity],
v.[Order],
v.[Planned Date],
v.[Project Number],
v.[rssk],
v.[Total Items],
v.[zCreatedDateTime],
v.[zSourceFileName],
v.[zVersionNo] 
FROM gpd.ModelMat_Model_Maturity_PMR_JSON_v v
LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK
WHERE zVersionNo = (select max(zVersionNo) from gpd.ModelMat_Model_Maturity_PMR_JSON_v z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Date] = v.[Date]);
GO


---------------------------------------------------------------------------------


DROP VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V]
GO


CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_V]
AS select rssk, convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(varchar(max), case when [MODEL TYPE] in ('NULL', '')  then NULL else [Model Type] end ) as [Model Type],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(date, case when [DATE] in ('NULL', '')  then NULL else [Date] end ) as [Date],convert(varchar(max), case when [PLAN TYPE] in ('NULL', '')  then NULL else [Plan Type] end ) as [Plan Type],convert(money, case when [VALUE] in ('NULL', '')  then NULL else [Value] end ) as [Value],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo]  
	from (
	SELECT rssk, [zCreatedDateTime],[Contract Number],[Model Type],[Project Number],[Date],[Plan Type],[Value],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.ModelMat_Liquidation_Curve_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [zCreatedDateTime],[Contract Number],[Model Type],[Project Number],[Date],[Plan Type],[Value],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Value], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1 and dbo.isDateCustom([Date], 23) = 1;
GO




---------------------------------------------------------------------------------------------------------------


DROP VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_error_v]
GO


CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_error_v]
AS select rssk, [zCreatedDateTime] as [zCreatedDateTime],[Contract Number] as [Contract Number],[Model Type] as [Model Type],[Project Number] as [Project Number],[Date] as [Date],[Plan Type] as [Plan Type],[Value] as [Value],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo] 
	from (
	SELECT rssk, [zCreatedDateTime],[Contract Number],[Model Type],[Project Number],[Date],[Plan Type],[Value],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.ModelMat_Liquidation_Curve_PMR_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [zCreatedDateTime],[Contract Number],[Model Type],[Project Number],[Date],[Plan Type],[Value],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Value], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1 or dbo.isDateCustom([Date], 23) != 1;
GO




---------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v]
GO


CREATE VIEW [gpd].[ModelMat_Liquidation_Curve_PMR_JSON_active_v] AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,
V.[rssk],
V.zCreatedDateTime,
V.[Contract Number],
V.[Value],
V.[Project Number],
V.[Plan Type],
V.[zSourceFileName],
V.[Date],
V.[Model Type],
V.zVersionNo

FROM gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v] V LEFT JOIN dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number --GET project_NK
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number --GET Contract_NK
WHERE zVersionNo = (select max(zVersionNo) from gpd.[ModelMat_Liquidation_Curve_PMR_JSON_v] z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Date] = v.[Date]);
GO


---------------------------------------------------------------------------------------------------------------


DROP VIEW [dbo].[dim_ent_sub_source_active_v]
GO

CREATE VIEW [dbo].[dim_ent_sub_source_active_v]
AS select
[dim_ent_sub_source_nk],
[source_name],
[sub_source_name],
[dim_ent_source_nk]
from dim_ent_sub_source
where active = 1;
GO


---------------------------------------------------------------------------------------------------------------

DROP VIEW [gpd].[Period_EAC_Variances_JSON_V]
GO

CREATE VIEW [gpd].[Period_EAC_Variances_JSON_V]
AS select rssk, convert(varchar(max), case when [COMMENTS] in ('NULL', '')  then NULL else [Comments] end ) as [Comments],convert(varchar, case when [CONTRACT NUMBER] in ('NULL', '')  then NULL else [Contract Number] end ) as [Contract Number],convert(money, case when [COST IMPACT] in ('NULL', '')  then NULL else [Cost Impact] end ) as [Cost Impact],convert(money, case when [GP IMPACT] in ('NULL', '')  then NULL else [GP Impact] end ) as [GP Impact],convert(date, case when [MONTH END DATE] in ('NULL', '')  then NULL else [Month End Date] end ) as [Month End Date],convert(int, case when [ORDER] in ('NULL', '')  then NULL else [Order] end ) as [Order],convert(varchar(max), case when [PSRL1 CODE] in ('NULL', '')  then NULL else [PSRL1 Code] end ) as [PSRL1 Code],convert(varchar(max), case when [PSRL1 CODE2] in ('NULL', '')  then NULL else [PSRL1 Code2] end ) as [PSRL1 Code2],convert(varchar(max), case when [PSRL2 CODE] in ('NULL', '')  then NULL else [PSRL2 Code] end ) as [PSRL2 Code],convert(varchar, case when [PROJECT NUMBER] in ('NULL', '')  then NULL else [Project Number] end ) as [Project Number],convert(money, case when [REVENUE IMPACT] in ('NULL', '')  then NULL else [Revenue Impact] end ) as [Revenue Impact],convert(varchar(max), case when [TYPE] in ('NULL', '')  then NULL else [Type] end ) as [Type],convert(varchar(max), case when [TYPE_1] in ('NULL', '')  then NULL else [Type_1] end ) as [Type_1],convert(varchar(max), case when [VARIANCE NAME] in ('NULL', '')  then NULL else [Variance Name] end ) as [Variance Name],convert(date, case when [ZCREATEDDATETIME] in ('NULL', '')  then NULL else [zCreatedDateTime] end ) as [zCreatedDateTime],convert(varchar(max), case when [ZSOURCEFILENAME] in ('NULL', '')  then NULL else [zSourceFileName] end ) as [zSourceFileName],convert(int, case when [ZVERSIONNO] in ('NULL', '')  then NULL else [zVersionNo] end ) as [zVersionNo]  
	from (
	SELECT rssk, [Comments],[Contract Number],[Cost Impact],[GP Impact],[Month End Date],[Order],[PSRL1 Code],[PSRL1 Code2],[PSRL2 Code],[Project Number],[Revenue Impact],[Type],[Type_1],[Variance Name],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Period_EAC_Variances_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Comments],[Contract Number],[Cost Impact],[GP Impact],[Month End Date],[Order],[PSRL1 Code],[PSRL1 Code2],[PSRL2 Code],[Project Number],[Revenue Impact],[Type],[Type_1],[Variance Name],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Cost Impact], 'N') = 1 and dbo.isNumericCustom([GP Impact], 'N') = 1 and dbo.isNumericCustom([Order], 'NI') = 1 and dbo.isNumericCustom([Revenue Impact], 'N') = 1 and dbo.isNumericCustom([zVersionNo], 'NI') = 1 and dbo.isDateCustom([Month End Date], 23) = 1 and dbo.isDateCustom([zCreatedDateTime], 23) = 1;
GO


-------------------------------------------------------------------------------

DROP VIEW [gpd].[Period_EAC_Variances_JSON_active_error_v]
GO


CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_error_v]
AS select rssk,(select error_message from gpd.Period_EAC_Variances_JSON_active_error_v_error_message x where x.rssk = q.rssk) as error_message, [Comments] as [Comments],[Contract Number] as [Contract Number],[Cost Impact] as [Cost Impact],[GP Impact] as [GP Impact],[Month End Date] as [Month End Date],[Order] as [Order],[PSRL1 Code] as [PSRL1 Code],[PSRL1 Code2] as [PSRL1 Code2],[PSRL2 Code] as [PSRL2 Code],[Project Number] as [Project Number],[Revenue Impact] as [Revenue Impact],[Type] as [Type],[Type_1] as [Type_1],[Variance Name] as [Variance Name],[zCreatedDateTime] as [zCreatedDateTime],[zSourceFileName] as [zSourceFileName],[zVersionNo] as [zVersionNo] 
	from (
	SELECT rssk, [Comments],[Contract Number],[Cost Impact],[GP Impact],[Month End Date],[Order],[PSRL1 Code],[PSRL1 Code2],[PSRL2 Code],[Project Number],[Revenue Impact],[Type],[Type_1],[Variance Name],[zCreatedDateTime],[zSourceFileName],[zVersionNo] FROM (
		SELECT rssk, [KEY] as [colName], value AS RowValue 
		FROM gpd.Period_EAC_Variances_JSON 
			CROSS APPLY OPENJSON(json_attribute)
		) as j PIVOT (MAX(RowValue) for  [colName] in ( [Comments],[Contract Number],[Cost Impact],[GP Impact],[Month End Date],[Order],[PSRL1 Code],[PSRL1 Code2],[PSRL2 Code],[Project Number],[Revenue Impact],[Type],[Type_1],[Variance Name],[zCreatedDateTime],[zSourceFileName],[zVersionNo] )) as p) q 
	where dbo.isNumericCustom([Cost Impact], 'N') != 1 or dbo.isNumericCustom([GP Impact], 'N') != 1 or dbo.isNumericCustom([Order], 'NI') != 1 or dbo.isNumericCustom([Revenue Impact], 'N') != 1 or dbo.isNumericCustom([zVersionNo], 'NI') != 1 or dbo.isDateCustom([Month End Date], 23) != 1 or dbo.isDateCustom([zCreatedDateTime], 23) != 1;
GO


-------------------------------------------------------------------------------

DROP VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
GO


CREATE VIEW [gpd].[Period_EAC_Variances_JSON_active_v]
AS SELECT p.dim_entp_project_nk,c.dim_ent_contract_nk,  v.rssk,  v.Comments,  v.[Contract Number],  v.[Cost Impact],  v.[GP Impact],  v.[Month End Date],  v.[Order],  v.[PSRL1 Code],  v.[PSRL1 Code2],  v.[PSRL2 Code],  v.[Project Number],  v.[Revenue Impact],  v.[Type],  v.[Variance Name],  v.zCreatedDateTime,  v.zSourceFileName,  v.zVersionNo  ,v.[Type_1]    
FROM gpd.Period_EAC_Variances_JSON_v V  LEFT JOIN 
dim_entp_project_active_v p on TRIM(v.[project number])=p.project_number  --GET project_NK     
LEFT JOIN dim_ent_contract_active_v c on TRIM(v.[contract number])=c.contract_number  --GET Contract_NK    
WHERE 
zVersionNo = (select max(zVersionNo) from gpd.Period_EAC_Variances_JSON_v z where z.[Project Number] = v.[Project Number] and 
 z.[Contract Number] = v.[Contract Number] and
 z.[Month End Date] = v.[Month End Date]);
GO

-------------------------------------------------------------------------------



