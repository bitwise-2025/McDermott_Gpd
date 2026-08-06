DECLARE @NKVALUE INT
DECLARE @BusinessLine VARCHAR(100)
DECLARE @alternativeBusinessLine VARCHAR(100)
DECLARE @Reporting_Order INT
DECLARE @ConsolidatedBL VARCHAR(100)
DECLARE @start_Date DATETIME

/* Please change the below set of values to add a new business line*/
SET @BusinessLine ='Test_BL'
SET	@alternativeBusinessLine = 'TEST_AlternativeBL'
SET	@Reporting_Order =1
SET	@ConsolidatedBL ='TEST_ConsolidatedBL'
/*  Upto Here  */

SET @NKVALUE = (SELECT MAX(dim_entp_fss_business_line_nk) FROM dim_entp_fss_business_line)
SET @start_Date = GETDATE()
IF NOT EXISTS(SELECT TOP 1 business_line from dim_entp_fss_business_line WHERE business_line =@BusinessLine)
BEGIN
INSERT INTO dim_entp_fss_business_line  VALUES(@NKVALUE,@start_Date,'9999-12-30 00:00:00.000',@BusinessLine,
1,@start_Date,NULL,'N',1,1,@BusinessLine,@alternativeBusinessLine,@Reporting_Order,@ConsolidatedBL)
END

