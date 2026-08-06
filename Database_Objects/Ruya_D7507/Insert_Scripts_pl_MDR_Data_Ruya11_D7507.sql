DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_MDR_Data_Ruya11_D7507'

delete from [dbo].[plp_pipeline] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_pipeline_parameter] where [pipeline_code] = @v_pipelinename
delete from [dbo].[plp_parameter_value] where [pipeline_code] = @v_pipelinename


--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Manual CSV File Direct Source To Synapse',NULL,1,'aditya.anand2@mcdermott.com',@Date,9)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','start_date',1,'start_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','end_date',2,'end_date','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','source_directory',3,'source_directory','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','table_name',5,'table_name','IN','table_name with schema e.g. gpd.scm_procurement',1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','logicapp_url',6,'logicapp_url','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','project_number',7,'project_number','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','file_name',8,'file_name','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)



--PLP Pipeline values

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('file_name','P10*.CSV',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('start_date','2021-10-07 11:33:55',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('end_date','currdate',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')
	 
INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('source_directory','07. D7507 - RUYA 11/02. Engineering/01. MDR/',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('table_name','MDR_Data_Ruya11_D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')	 

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('project_number','D7507',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')



GO

CREATE TABLE [epr].[MDR_Data_Ruya11_D7507](
[File Name]   varchar(1000) NULL,
[SFN Description]   varchar(1000) NULL,
[PCM Input]   varchar(1000) NULL,
[3rd Party ID]   varchar(1000) NULL,
[Doc. Type]   varchar(1000) NULL,
[Discipline]   varchar(1000) NULL,
[CRS No.]   varchar(1000) NULL,
[Yard Flag ID]   varchar(1000) NULL,
[Profile Type]   varchar(1000) NULL,
[Name]   varchar(1000) NULL,
[Revision]   varchar(1000) NULL,
[Revision Date]   varchar(1000) NULL,
[State]   varchar(1000) NULL,
[Deliverable Type]   varchar(1000) NULL,
[Project Doc Type]   varchar(1000) NULL,
[Project Doc Name]   varchar(1000) NULL,
[Status]   varchar(1000) NULL,
[Client Discipline]   varchar(1000) NULL,
[Client Document Type]   varchar(1000) NULL,
[Title]   varchar(6000) NULL,
[Facility]   varchar(100) NULL,
[Client Completion Percentage]   varchar(100) NULL,
[Client Earned Value]   varchar(100) NULL,
[Completion Percentage]   varchar(100) NULL,
[Earned Value]   varchar(100) NULL,
[Client Return Code]   varchar(1000) NULL,
[Client Return Date]   varchar(100) NULL,
[Client Expected Return]   varchar(500) NULL,
[Comments]   varchar(6000) NULL,
[Location]   varchar(500) NULL,
[Voided Reason]   varchar(500) NULL,
[Thirty Percent Design Review]   varchar(500) NULL,
[Sixty Percent Design Review]   varchar(500) NULL,
[Ninety Percent Design Review]   varchar(500) NULL,
[Original Weight]   varchar(500) NULL,
[Planned Weight]   varchar(500) NULL,
[Forecast Weight]   varchar(500) NULL,
[Weighting 1]   varchar(500) NULL,
[Start Activity Id]   varchar(500) NULL,
[IDC Activity Id]   varchar(500) NULL,
[IDC Completed Activity ID]   varchar(500) NULL,
[IFR Activity ID]   varchar(500) NULL,
[IFR RCA Activity ID]   varchar(500) NULL,
[IFA Activity ID]   varchar(500) NULL,
[IFA RCA Activity ID]   varchar(500) NULL,
[IFA/IFR Activity Id]   varchar(500) NULL,
[CA Activity Id]   varchar(500) NULL,
[IFH Activity Id]   varchar(500) NULL,
[AFD Activity Id]   varchar(500) NULL,
[IFB Activity Id]   varchar(500) NULL,
[AFC(H) Activity Id]   varchar(500) NULL,
[AFC Activity Id]   varchar(500) NULL,
[AFC RCA Activity ID]   varchar(500) NULL,
[AFF Activity Id]   varchar(500) NULL,
[AFH Activity Id]   varchar(500) NULL,
[IFI Activity Id]   varchar(500) NULL,
[IFP Activity Id]   varchar(500) NULL,
[AFU Activity Id]   varchar(500) NULL,
[As-Built Activity Id]   varchar(500) NULL,
[Start Original]   varchar(500) NULL,
[Start Plan]   varchar(500) NULL,
[Start Forecast]   varchar(500) NULL,
[Start Actual]   varchar(500) NULL,
[IDC Original]   varchar(500) NULL,
[IDC Plan]   varchar(500) NULL,
[IDC Forecast]   varchar(500) NULL,
[IDC Actual]   varchar(500) NULL,
[IDC Complete Original]   varchar(500) NULL,
[IDC Complete Plan]   varchar(500) NULL,
[IDC Complete Forecast]   varchar(500) NULL,
[IDC Complete Actual]   varchar(500) NULL,
[IFR Original]   varchar(500) NULL,
[IFR Plan]   varchar(500) NULL,
[IFR Forecast]   varchar(500) NULL,
[IFR Actual]   varchar(500) NULL,
[RCA - IFR Original]   varchar(500) NULL,
[RCA - IFR Plan]   varchar(500) NULL,
[RCA - IFR Forecast]   varchar(500) NULL,
[RCA - IFR Actual]   varchar(500) NULL,
[IFA Original]   varchar(500) NULL,
[IFA Plan]   varchar(500) NULL,
[IFA Forecast]   varchar(500) NULL,
[IFA Actual]   varchar(500) NULL,
[RCA - IFA Original]   varchar(500) NULL,
[RCA - IFA Plan]   varchar(500) NULL,
[RCA - IFA Forecast]   varchar(500) NULL,
[RCA - IFA Actual]   varchar(500) NULL,
[AFD Original]   varchar(500) NULL,
[AFD Plan]   varchar(500) NULL,
[AFD Forecast]   varchar(500) NULL,
[AFD Actual]   varchar(500) NULL,
[IFB Original]   varchar(500) NULL,
[IFB Plan]   varchar(500) NULL,
[IFB Forecast]   varchar(500) NULL,
[IFB Actual]   varchar(500) NULL,
[AFC(H) Original]   varchar(500) NULL,
[AFC(H) Plan]   varchar(500) NULL,
[AFC(H) Forecast]   varchar(500) NULL,
[AFC(H) Actual]   varchar(500) NULL,
[AFC Original]   varchar(500) NULL,
[AFC Plan]   varchar(500) NULL,
[AFC Forecast]   varchar(500) NULL,
[AFC Actual]   varchar(500) NULL,
[RCA - AFC Original]   varchar(500) NULL,
[RCA - AFC Plan]   varchar(500) NULL,
[RCA - AFC Forecast]   varchar(500) NULL,
[RCA - AFC Actual]   varchar(500) NULL,
[IFI Original]   varchar(500) NULL,
[IFI Plan]   varchar(500) NULL,
[IFI Forecast]   varchar(500) NULL,
[IFI Actual]   varchar(500) NULL,
[RCA - IFI Original]   varchar(500) NULL,
[RCA - IFI Plan]   varchar(500) NULL,
[RCA - IFI Forecast]   varchar(500) NULL,
[RCA - IFI Actual]   varchar(500) NULL,
[IFP Original]   varchar(500) NULL,
[IFP Plan]   varchar(500) NULL,
[IFP Forecast]   varchar(500) NULL,
[IFP Actual]   varchar(500) NULL,
[As Built Original]   varchar(500) NULL,
[As Built Plan]   varchar(500) NULL,
[As Built Forecast]   varchar(500) NULL,
[As Built Actual]   varchar(500) NULL,
[Company Transmittal Number]   varchar(4000) NULL,
[Company Return Date]   varchar(500) NULL,
[Review Return code]   varchar(500) NULL,
[Transmittal Number]   varchar(1000) NULL,
[Transmittal Date]   varchar(500) NULL,
[Interface Document]   varchar(500) NULL,
[Originator]   varchar(500) NULL,
[Contract Code]   varchar(500) NULL,
[Contractor Originator Code]   varchar(500) NULL,
[Country]   varchar(500) NULL,
[Client Document Classification]   varchar(500) NULL,
[Equipment Class]   varchar(500) NULL,
[Equipment SubClass]   varchar(500) NULL,
[Field Operation Deliverable]   varchar(500) NULL,
[MDR Update Information]   varchar(500) NULL,
[Project Code]   varchar(500) NULL,
[Reason for Change-Engineering]   varchar(500) NULL,
[Recipient]   varchar(500) NULL,
[Sector Code]   varchar(500) NULL,
[Site Code]   varchar(500) NULL,
[Superseded by]   varchar(500) NULL,
[System Code]   varchar(500) NULL,
[Tag/Equipment No.]   varchar(500) NULL,
[Unique ID]   varchar(500) NULL,
[Sub-System]   varchar(500) NULL,
[Greenfield / Brownfield]   varchar(500) NULL,
[Work Unit]   varchar(500) NULL,
[Work Pack]   varchar(500) NULL,
[Put in iDocs]   varchar(500) NULL,
[Internal Transmittal No.]   varchar(500) NULL,
[Internal Transmittal Date]   varchar(500) NULL,
[Distribution Q Status]   varchar(500) NULL,
[DM Queue Date]   varchar(500) NULL,
[DM Queue Release Date]   varchar(500) NULL,
[Days Variance]   varchar(500) NULL,
[Published Revision]   varchar(500) NULL,
[Document Status]   varchar(4000) NULL,
[HHI Transmittal No.]   varchar(500) NULL,
[HHI Transmittal Date]   varchar(500) NULL,
[Expediting Status]   varchar(4000) NULL,
[UserType]   varchar(500) NULL,
[MOPEX Location]   varchar(500) NULL,
[As Built Required]   varchar(500) NULL,
[AWP Type]   varchar(500) NULL,
[AWP Applicable]   varchar(500) NULL,
[AWP Assigned Platform]   varchar(500) NULL,
[AWP Deck]   varchar(500) NULL,
[AWP CWA]   varchar(500) NULL,
[AWP Package]   varchar(500) NULL,
[EWP]   varchar(500) NULL,
[PWP]   varchar(500) NULL,
[CWP]   varchar(500) NULL,
[IWP]   varchar(500) NULL,
[GPCA Cost Code]   varchar(1000) NULL,
[GPCA Cost Code Description]   varchar(1000) NULL,
[GPCA Prime Description]   varchar(1000) NULL,
[GPCA Sub Prime Description]   varchar(1000) NULL,
[SourceFileName]   varchar(4000) NULL,
[project_number]   varchar(100) NULL,
[CreatedDateTime]   datetime NULL
)WITH(	DISTRIBUTION = ROUND_ROBIN,	CLUSTERED COLUMNSTORE INDEX)

GO

