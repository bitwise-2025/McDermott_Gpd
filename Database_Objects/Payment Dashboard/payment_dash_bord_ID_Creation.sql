alter table [rpy].[Expenditure_Types_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Gl_code_combinations_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Projects_Data_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Project_Elements_Data_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Hr_all_organization_units_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Supplier_Data_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go

alter table [rpy].[Supplier_Site_Data_stage]
add ID BIGINT Identity(1,1) NOT NULL 

go