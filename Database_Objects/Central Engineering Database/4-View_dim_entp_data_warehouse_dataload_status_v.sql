/****** Object:  View [edw].[dim_entp_data_warehouse_dataload_status_v]    Script Date: 11/26/2025 1:12:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [edw].[dim_entp_data_warehouse_dataload_status_v]
AS ( select * from edw.dim_entp_data_warehouse_dataload_status where project_number = '360536');
GO