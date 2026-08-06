ALTER TABLE [dbo].[dim_entp_commissioning_ss_certification_status]
ADD json_attribute_for_view [varchar](8000) NULL;

alter table gpd.reprocess_cc_dim_entp_comm_certstatus
add json_attribute_for_view [varchar](8000) NULL;