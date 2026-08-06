create view [epr].[D7068_Progress_View_Archived] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2024-07-01' and "Progress_Date" <= '2024-12-31' and ContractNo ='D7068'

create view [epr].[D7068_Progress_View_1] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2025-01-01' and "Progress_Date" <= '2025-03-31' and ContractNo ='D7068'
create view [epr].[D7068_Progress_View_2] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2025-04-01' and "Progress_Date" <= '2025-06-30' and ContractNo ='D7068'
create view [epr].[D7068_Progress_View_3] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2025-07-01' and "Progress_Date" <= '2025-09-30' and ContractNo ='D7068'
create view [epr].[D7068_Progress_View_4] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2025-10-01' and "Progress_Date" <= '2025-12-31' and ContractNo ='D7068'
create view [epr].[D7068_Progress_View_5] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2026-01-01' and "Progress_Date" <= '2026-03-31' and ContractNo ='D7068'
create view [epr].[D7068_Progress_View_6] as select * from [epr].[04_Progress_Files] where "Progress_Date" >= '2026-04-01' and "Progress_Date" <= '2026-06-30' and ContractNo ='D7068'

create view [epr].[D7068_ActualHrs_View_Archived] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2024-07-01' and "ProgressDate" <= '2024-12-31' and project_number ='D7068'

create view [epr].[D7068_ActualHrs_View_1] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2025-01-01' and "ProgressDate" <= '2025-03-31' and project_number ='D7068'
create view [epr].[D7068_ActualHrs_View_2] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2025-04-01' and "ProgressDate" <= '2025-06-30' and project_number ='D7068'
create view [epr].[D7068_ActualHrs_View_3] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2025-07-01' and "ProgressDate" <= '2025-09-30' and project_number ='D7068'
create view [epr].[D7068_ActualHrs_View_4] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2025-10-01' and "ProgressDate" <= '2025-12-31' and project_number ='D7068'
create view [epr].[D7068_ActualHrs_View_5] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2026-01-01' and "ProgressDate" <= '2026-03-31' and project_number ='D7068'
create view [epr].[D7068_ActualHrs_View_6] as select * from [epr].[Actual_Booking] where "ProgressDate" >= '2026-04-01' and "ProgressDate" <= '2026-06-30' and project_number ='D7068'

SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Filename_Progress_Files]    Script Date: 4/21/2025 1:39:32 PM ******/
CREATE NONCLUSTERED INDEX [idx_ProgressDate_Progress_Files] ON [epr].[04_Progress_Files]
(
	[Progress Date] ASC,
	[ContractNo] ASC
)WITH (DROP_EXISTING = OFF)
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [idx_Filename_Progress_Files]    Script Date: 4/21/2025 1:39:32 PM ******/
CREATE NONCLUSTERED INDEX [idx_ProgressDate_Actual_Booking] ON [epr].[Actual_Booking]
(
	[ProgressDate] ASC,
	[project_number] ASC
)WITH (DROP_EXISTING = OFF)
GO

create view [epr].[D7068_05_POB_Hourse_per_Day] as select * from [epr].[05_POB_Hourse_per_Day] where  project_number ='D7068'
create view epr.D7068_P6_Files_Data_Hookup_D7068_Unpivot as select * from [epr].[P6_Files_Data_Hookup_D7068_Unpivot] where  project_number ='D7068'
create view epr.D7068_Qty_Files_Data_Hookup_D7068_Unpivot as select * from epr.Qty_Files_Data_Hookup_D7068_Unpivot where  project_number ='D7068'

CREATE NONCLUSTERED INDEX [idx_P6_Files_Data_Hookup_D7068] ON [epr].[P6_Files_Data_Hookup_D7068_Unpivot]
(
	[project_number] ASC
)WITH (DROP_EXISTING = OFF)
GO

CREATE NONCLUSTERED INDEX [idx_Qty_Files_Data_Hookup_D7068] ON [epr].[Qty_Files_Data_Hookup_D7068_Unpivot]
(
	[project_number] ASC
)WITH (DROP_EXISTING = OFF)
GO

CREATE NONCLUSTERED INDEX [idx_POB_Hourse_per_Day_Hookup_D7068] ON [epr].[05_POB_Hourse_per_Day]
(
	[project_number] ASC
)WITH (DROP_EXISTING = OFF)
GO





