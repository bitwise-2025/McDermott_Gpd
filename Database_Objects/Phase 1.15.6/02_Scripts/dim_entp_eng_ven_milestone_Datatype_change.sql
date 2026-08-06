

DROP INDEX [ind3] ON [dbo].[dim_entp_eng_ven_milestone];

DROP INDEX [ind4] ON [dbo].[dim_entp_eng_ven_milestone];

 

Alter table [dbo].[dim_entp_eng_ven_milestone] 

alter column [milestone_id] bigint null ;



CREATE NONCLUSTERED INDEX [ind3] ON [dbo].[dim_entp_eng_ven_milestone]

(

	[document_id] ASC,

	[milestone_id] ASC,

	[start_date] ASC,

	[end_date] ASC

)WITH (DROP_EXISTING = OFF)

GO




CREATE NONCLUSTERED INDEX [ind4] ON [dbo].[dim_entp_eng_ven_milestone]

(

	[document_id] ASC,

	[milestone_id] ASC,

	[active] ASC

)WITH (DROP_EXISTING = OFF)

GO
