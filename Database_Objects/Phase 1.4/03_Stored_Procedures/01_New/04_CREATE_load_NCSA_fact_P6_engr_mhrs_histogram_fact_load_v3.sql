/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_fact_load]    Script Date: 8/4/2022 5:57:34 AM ******/
--DROP PROCEDURE [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_fact_load]
--GO

/****** Object:  StoredProcedure [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_fact_load]    Script Date: 8/4/2022 5:57:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[load_NCSA_fact_P6_engr_mhrs_histogram_fact_load] AS

begin
begin try
/***********************************************************
Date		Developer		Change Desc
02/10/2022	Satish			Initial Version
03/01/2022	Satish			revised based on source file changes affecting fact defination.
03/11/2022	Satish			replacing function_sk/nk with Phase_sk/nk.
07/29/2022  Aditya			SK/NK entries for new columns PSRL1Code and PSRL1Code
**********************************************************/
--Grouping rows to summarize FACTs in case duplicate entries in source file

IF OBJECT_ID(N'tempdb..#P6_histogram_summary') IS NOT NULL
BEGIN
DROP TABLE #P6_histogram_summary
END


select * INTO #P6_histogram_summary from (			
	 select dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_entp_project_sk,
		dim_entp_project_nk,
		dim_ent_office_sk,
		dim_ent_office_nk,		
		dim_ent_prime_sk,
		dim_ent_prime_nk,	
		dim_ent_sub_prime_sk,
		dim_ent_sub_prime_nk,	
		dim_ent_subfunction_sk,
		dim_ent_subfunction_nk,	
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_data_sub_class_sk,
		dim_entp_data_sub_class_nk,
		dim_entp_data_class_sk,
		dim_entp_data_class_nk,
		dim_entp_sub_source_sk,
		dim_entp_sub_source_nk,
		dim_entp_source_sk,
		dim_entp_source_nk,
		dim_ent_psrlevel1_sk,
		dim_ent_psrlevel1_nk,
		dim_ent_psrlevel2_sk,
		dim_ent_psrlevel2_nk,

		convert(datetime,Period) as transdate,      
		sum(convert(float,Units)) over (partition by project,office_code, Data_sub_class_code, isnull(Prime,''), isnull(Sub_Prime,''), isnull(SFN,''), isnull(PSRL1Code,''), isnull(PSRL2Code,''),isnull(Activity_Code,''),period) as Units,
		row_number() over (partition by project,office_code, Data_sub_class_code, isnull(Prime,''), isnull(Sub_Prime,''), isnull(SFN,''), isnull(PSRL1Code,''), isnull(PSRL2Code,''),isnull(Activity_Code,''),period order by stage_p6_hist_id) as sl_no,
		load_date_time	  
		from [gpd].[P6_engr_manhrs_histogram]
		WHERE 
				isnull(convert(float,Units),-999.999) <> -999.999 AND LEN(Units)>0 --Check for NULL and Empty fact entries.
) x
where sl_no=1


--Inserting Good records to Fact Table	

Insert into [dbo].[fact_ops_man_hour_histogram]		(dim_entp_phase_sk, dim_entp_phase_nk, dim_entp_project_sk, dim_entp_project_nk, dim_ent_office_sk, dim_ent_office_nk, dim_ent_prime_sk, dim_ent_prime_nk, dim_ent_sub_prime_sk, dim_ent_sub_prime_nk, dim_ent_subfunction_sk, dim_ent_subfunction_nk, dim_entp_activity_sk, dim_entp_activity_nk, dim_entp_data_sub_class_sk, dim_entp_data_sub_class_nk, dim_entp_data_class_sk, dim_entp_data_class_nk, dim_entp_sub_source_sk, dim_entp_sub_source_nk, dim_entp_source_sk, dim_entp_source_nk, transaction_date, transaction_quantity, created_date_time, dim_ent_psrlevel1_sk, dim_ent_psrlevel1_nk, dim_ent_psrlevel2_sk, dim_ent_psrlevel2_nk)
	select dim_entp_phase_sk,
		dim_entp_phase_nk,
		dim_entp_project_sk,
		dim_entp_project_nk,
		dim_ent_office_sk,
		dim_ent_office_nk,		
		dim_ent_prime_sk,
		dim_ent_prime_nk,	
		dim_ent_sub_prime_sk,
		dim_ent_sub_prime_nk,	
		dim_ent_subfunction_sk,
		dim_ent_subfunction_nk,	
		dim_entp_activity_sk,
		dim_entp_activity_nk,
		dim_entp_data_sub_class_sk,
		dim_entp_data_sub_class_nk,
		dim_entp_data_class_sk,
		dim_entp_data_class_nk,
		dim_entp_sub_source_sk,
		dim_entp_sub_source_nk,
		dim_entp_source_sk,
		dim_entp_source_nk,
		transdate, 
		Units,
		load_date_time,		
		dim_ent_psrlevel1_sk, 
		dim_ent_psrlevel1_nk, 
		dim_ent_psrlevel2_sk, 
		dim_ent_psrlevel2_nk

		from #P6_histogram_summary
		WHERE 
				isnull(convert(float,Units),-999.999) <> -999.999 AND LEN(Units)>0
		

--Cleanup the data in the stage and temp tables(if any)

	--TRUNCATE TABLE [gpd].[P6_engr_manhrs_histogram]


end try

begin catch
---- CATCH Logic and raise error in case DB issues.
DECLARE @sp_failureMessage nvarchar(4000), @sp_failureSeverity int, @sp_failureStatus int;

	SET @sp_failureSeverity=ERROR_SEVERITY();
	SET @sp_failureStatus=ERROR_STATE();
	
	SET @sp_failureMessage =  
		  'Error_No: ' + CAST(ERROR_NUMBER() AS VARCHAR) + ' ||'+
		  'Error_Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR) + ' ||' +
		  'Error State: ' + CAST(ERROR_STATE() AS VARCHAR) + ' ||' +
		  'SPName: ' + ERROR_PROCEDURE() + ' ||' +
		  'Error_Message: ' + ERROR_MESSAGE() + ' ||' ;

	SELECT @sp_failureMessage as failureMessage
	RAISERROR (@sp_failureMessage, @sp_failureSeverity, @sp_failureStatus);

end catch;
end;

GO


