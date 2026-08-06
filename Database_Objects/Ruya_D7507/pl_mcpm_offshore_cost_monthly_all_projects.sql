DECLARE @Date DATETIME;
DECLARE @v_pipelinename varchar(150);

SET @Date = GETDATE();
SET @v_pipelinename='pl_mcpm_offshore_cost_monthly_all_projects'



--PLP Parameter
insert into plp_parameter values 
('CutOff_Last_RunTime','PIPELINE_INCREMENTAL','CutOff_Last_RunTime','T',1,50,NULL,1,'aditya.anand2@mcdermott.com','2025-02-05 04:29:38.850')

--PLP Pipeline
INSERT INTO [dbo].[plp_pipeline] ([pipeline_code],[subject_area_code],[description],[comment],[active],[touched_by],[touched_dtm],[sec_sa_id])
	VALUES (@v_pipelinename,'NCSA','Direct Source To Synapse',NULL,1,'aditya.anand2@mcdermott.com',@Date,9)


--PLP Pipeline Parameter
INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','CutOff_Last_RunTime',1,'CutOff_Last_RunTime','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)

INSERT INTO [dbo].[plp_pipeline_parameter] ([pipeline_code],[pipeline_sub_code],[parameter_code],[display_order],[source_column_name],[source_operator],[comment],[active],[touched_by],[touched_dtm]) 
VALUES(@v_pipelinename,'NetworkFolder','logicapp_url',2,'logicapp_url','IN',NULL,1,'aditya.anand2@mcdermott.com',@Date)





--PLP Pipeline values


INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('CutOff_Last_RunTime','2021-10-07 11:33:55',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')

INSERT INTO [dbo].[plp_parameter_value] ([parameter_code],[parameter_value],[active],[touched_by],[touched_dtm],[pipeline_code],[pipeline_sub_code])
     VALUES('logicapp_url','https://prod-56.eastus.logic.azure.com:443/workflows/3cff41a53ba14a82a9b7cc8d6d2bfe56/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=c7BCbv69x4tk7w5oqGQNOPlpIXvqBQi_Zwm8wkww0WQ',1,'aditya.anand2@mcdermott.com',@Date,@v_pipelinename,'NetworkFolder')	 



GO

Create table epr.mcpm_offshore_cost_monthly_all_projects
(
Domain	varchar(100)
,DomainName	varchar(1000)
,CutOff	varchar(100)
,Currency	varchar(100)
,CoA	varchar(500)
,Title	varchar(4000)
,ProgressType	varchar(500)
,ContractNo	varchar(500)
,SummaryCostType	varchar(500)
,CostType	varchar(500)
,Unit	varchar(500)
,WorkArea	varchar(500)
,Prime	varchar(500)
,SubPrime	varchar(500)
,CostCode	varchar(500)
,Measurable	varchar(500)
,Phase	varchar(500)
,PSRLevel1	varchar(500)
,PSRLevel2	varchar(500)
,PSRL1Description	varchar(1000)
,PSRL2Description	varchar(1000)
,UoM	varchar(500)
,OBQty	varchar(500)
,OBHrs	varchar(500)
,OBAmt	varchar(500)
,OBRate	varchar(500)
,CBQty	varchar(500)
,CBHrs	varchar(500)
,CBAmt	varchar(500)
,PBQty	varchar(500)
,PBHrs	varchar(500)
,PBAmt	varchar(500)
,ActualHrs	varchar(500)
,ActualAmt	varchar(500)
,ActualRate	varchar(500)
,CommittedHrs	varchar(500)
,CommittedAmt	varchar(500)
,EarnedQty	varchar(500)
,EarnedHrs	varchar(500)
,EarnedAmt	varchar(500)
,TakeOffQty	varchar(500)
,TakeOffHrs	varchar(500)
,PctComplete	varchar(500)
,EACHrs	varchar(500)
,EACAmt	varchar(500)
,ApprovedEACQty	varchar(500)
,ApprovedEACHrs	varchar(500)
,ApprovedEACAmt	varchar(500)
,ApprovedETCHrs	varchar(500)
,ApprovedETCAmt	varchar(500)
,ETCHrs	varchar(500)
,ETCAmt	varchar(500)
,ETCRate	varchar(500)
,ForecastHrs	varchar(500)
,ForecastAmt	varchar(500)
,ForecastRate	varchar(500)
,CutOff_RunTime	varchar(500)
,created_date_time datetime

)



