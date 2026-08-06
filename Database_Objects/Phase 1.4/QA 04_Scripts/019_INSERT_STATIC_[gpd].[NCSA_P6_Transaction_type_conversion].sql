insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Weighting Original - Progress (Bid Man Hrs)','Weighting - Progress','Original','IWO_WH_PRG','Baseline_','Budget Units - Baseline')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Weighting Revised - Progress (Revised Man Hrs)','Weighting - Progress','Revised','IWR_WH_PRG','Rebaseline_','Budget Units - Rebaseline')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Weighting Forecast - Progress (Forecast Man Hrs)','Weighting - Progress','Forecast','IWF_WH_PRG','Forecast_','Budget Units - Forecast')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Weighting AFC - Progress (Current AFC Man Hrs)','Weighting - Progress','AFC','IWA_WH_PRG','Progress Base',NULL)
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Original Early - Progress','Planned Hours - Progress','Original','IOE_PLN_PRG','Baseline_','Cum Remaining Early')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Original Average - Progress','Planned Hours - Progress','Original','IOA_PLN_PRG','Baseline_','Cum Remaining Mid')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Original Late - Progress','Planned Hours - Progress','Original','IOL_PLN_PRG','Baseline_','Cum Remaining Late')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Revised Early - Progress','Planned Hours - Progress','Revised','IRE_PLN_PRG','Rebaseline_','Cum Remaining Early')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Revised Average - Progress','Planned Hours - Progress','Revised','IRA_PLN_PRG','Rebaseline_','Cum Remaining Mid')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Revised Late - Progress','Planned Hours - Progress','Revised','IRL_PLN_PRG','Rebaseline_','Cum Remaining Late')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Forecast Early - Progress','Planned Hours - Progress','Forecast','IFE_PLN_PRG','Forecast_','Cum Remaining Early')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Forecast Average - Progress','Planned Hours - Progress','Forecast','IFA_PLN_PRG','Forecast_','Cum Remaining Mid')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal Forecast Late - Progress','Planned Hours - Progress','Forecast','IFL_PLN_PRG','Forecast_','Cum Remaining Late')
insert into gpd.NCSA_P6_Transaction_type_conversion values ('Internal AFC Earned Hrs - Productivity Cumulative','Earned Hours - Productivity Cumulative','AFC','IAFC_ERN_PRDC','Earned Hours',NULL)
insert into gpd.NCSA_P6_Transaction_type_conversion values ('AFC - Productivity Cumulative','Productivity - Productivity Cumulative','AFC','AFC_PRD_PRDC','Actual Hours',NULL)





----------------------BAckup Script created on 05/05/2022------------------------
/*
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Original Average - Progress', N'Planned Hours - Progress', N'Original', N'IOA_PLN_PRG', N'Baseline_', N'Cum Remaining Mid')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Forecast Early - Progress', N'Planned Hours - Progress', N'Forecast', N'IFE_PLN_PRG', N'Forecast_', N'Cum Remaining Early')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Weighting Original - Progress (Bid Man Hrs)', N'Weighting - Progress', N'Original', N'IWO_WH_PRG', N'Baseline_', N'Budget Units - Baseline')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Weighting AFC - Progress (Current AFC Man Hrs)', N'Weighting - Progress', N'AFC', N'IWA_WH_PRG', N'Progress Base', NULL)
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Revised Early - Progress', N'Planned Hours - Progress', N'Revised', N'IRE_PLN_PRG', N'Rebaseline_', N'Cum Remaining Early')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Original Early - Progress', N'Planned Hours - Progress', N'Original', N'IOE_PLN_PRG', N'Baseline_', N'Cum Remaining Early')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Forecast Late - Progress', N'Planned Hours - Progress', N'Forecast', N'IFL_PLN_PRG', N'Forecast_', N'Cum Remaining Late')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal AFC Earned Hrs - Productivity Cumulative', N'Earned Hours - Productivity Cumulative', N'AFC', N'IAFC_ERN_PRDC', N'Earned Hours', NULL)
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Original Late - Progress', N'Planned Hours - Progress', N'Original', N'IOL_PLN_PRG', N'Baseline_', N'Cum Remaining Late')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Weighting Forecast - Progress (Forecast Man Hrs)', N'Weighting - Progress', N'Forecast', N'IWF_WH_PRG', N'Forecast_', N'Budget Units - Forecast')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Forecast Average - Progress', N'Planned Hours - Progress', N'Forecast', N'IFA_PLN_PRG', N'Forecast_', N'Cum Remaining Mid')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Revised Late - Progress', N'Planned Hours - Progress', N'Revised', N'IRL_PLN_PRG', N'Rebaseline_', N'Cum Remaining Late')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'AFC - Productivity Cumulative', N'Productivity - Productivity Cumulative', N'AFC', N'AFC_PRD_PRDC', N'Actual Hours', NULL)
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Weighting Revised - Progress (Revised Man Hrs)', N'Weighting - Progress', N'Revised', N'IWR_WH_PRG', N'Rebaseline_', N'Budget Units - Rebaseline')
GO
INSERT [gpd].[NCSA_P6_Transaction_type_conversion] ([Description], [parent_description], [Schedule], [TransactionType], [DataLake_Sub_Class_Name], [View_Display_PlanSubType]) VALUES (N'Internal Revised Average - Progress', N'Planned Hours - Progress', N'Revised', N'IRA_PLN_PRG', N'Rebaseline_', N'Cum Remaining Mid')
GO
*/