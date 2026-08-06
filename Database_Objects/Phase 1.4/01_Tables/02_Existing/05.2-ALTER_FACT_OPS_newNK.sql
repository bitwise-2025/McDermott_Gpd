--Alter DBO.FACT_OPS to add missing NK columns

ALTER TABLE [dbo].[fact_ops]
              ADD [dim_entp_discipline_sk] [bigint] NULL,[dim_entp_discipline_nk] [bigint] NULL,[dim_ent_office_sk] [bigint] NULL,[dim_ent_office_nk] [bigint] NULL;


GO