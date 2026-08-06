DROP VIEW [dbo].[dim_ent_welder_qualification_active_v]
GO
CREATE VIEW [dbo].[dim_ent_welder_qualification_active_v] AS select 
[dim_ent_welder_qual_sk],[dim_ent_welder_qual_nk],[dim_ent_jcc_nk],[dim_ent_welder_nk],[dim_ent_welder_contract_nk],[dim_entp_pcm_weld_process_master_nk],
(case when [modified_date_time] is null then [created_date_time] else [modified_date_time] end) [modified_date_time],[fab_code] [Fab Code],[discipline] [Discipline],[first_qual_date] [First Qualification Date], [qual_expiry_date] [Qualification Expiry Date],
[certificate_num] [Certificate Number], [position] [Position],[witness] [Witness], [weld_code] [Weld Code],[training_reg_date] [Training Registration Date],
[training_start_date] [Training Start Date], [ndt_test_date] [NDT Test Date],[ndt_status] [NDT Status], [training_end_date] [Training End Date], 
[wqt_date] [Wqt Date],
[mech_lab_submit_date] [Mech Lab Submit Date],
[mech_test_receive_date] [Mech Test Receive Date],
[mech_status] [Mech Status],
[Jcc_no] [JCC Number],
[prod_weld_flag] [Prod Weld Flag], [Prod_weld_required] [Prod Weld Required Flag], [Prod_weld_completed] [Prod Weld Completed Flag], [prod_weld_completion_date] [Prod Weld Completion Date],
[rec_source] [Rec Source]
from [dbo].[dim_ent_welder_qual]
where active = '1';
GO