CREATE NONCLUSTERED INDEX [Employeesap_person_number] ON dbo.dim_ent_employee
(
                sap_person_number ASC
)WITH (DROP_EXISTING = OFF)


go

CREATE NONCLUSTERED INDEX [time_office_employee_master_empno] ON dbo.dim_ent_time_office_employee_master
(
                empno ASC
)WITH (DROP_EXISTING = OFF)

go

CREATE NONCLUSTERED INDEX [fab_rotasap_number_] ON dbo.dim_ent_fab_rota
(
                sap_number ASC
)WITH (DROP_EXISTING = OFF)

go

CREATE NONCLUSTERED INDEX [dim_ent_turnstyle_daily_punch_person_no_external] ON [dbo].[dim_ent_turnstyle_daily_punch]
(
                person_no_external ASC
)WITH (DROP_EXISTING = OFF)

go

CREATE NONCLUSTERED INDEX [dim_ent_turnstyle_daily_punch_ts_date] ON [dbo].[dim_ent_turnstyle_daily_punch]
(
                ts_date ASC
)WITH (DROP_EXISTING = OFF)

go

CREATE NONCLUSTERED INDEX [dim_ent_employee_sap_person_number_active] ON dbo.dim_ent_employee
(
                sap_person_number,active ASC
)WITH (DROP_EXISTING = OFF)

go

CREATE NONCLUSTERED INDEX [idx_dim_ent_clinic_daily_visit_employee_date] ON dbo.dim_ent_clinic_daily_visit(employee_id,leave_start_date,leave_end_date ASC)WITH (DROP_EXISTING = OFF)

go


