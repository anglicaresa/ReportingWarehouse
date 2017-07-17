

-- creating table 'contractor_dim'
create table [conform].[contractor_dim] (
    [contractor_key] int identity(1,1) not null
);
go

-- creating table 'employee_benefit_dim'
create table [conform].[employee_benefit_dim] (
    [employee_benefit_key] int identity(1,1) not null
);
go

-- creating table 'accreditation_dim'
create table [conform].[accreditation_dim] (
    [accreditation_key] int identity(1,1) not null
);
go

-- creating table 'volunteer_dim'
create table [conform].[volunteer_dim] (
    [volunteer_key] int identity(1,1) not null
);
go

-- creating table 'employee_payment_dim'
create table [conform].[employee_payment_dim] (
    [employee_payment_key] int identity(1,1) not null
);
go

-- creating table 'student_dim'
create table [conform].[student_dim] (
    [student_key] int identity(1,1) not null
);
go

-- creating table 'item_dim'
create table [conform].[item_dim] (
    [item_key] int identity(1,1) not null
);
go

-- creating table 'employee_visa_dim'
create table [conform].[employee_visa_dim] (
    [employee_visa_key] int identity(1,1) not null
);
go

-- creating table 'recruitment_agency_dim'
create table [conform].[recruitment_agency_dim] (
    [recruitment_agency_key] int identity(1,1) not null
);
go

-- creating table 'applicant_dim'
create table [conform].[applicant_dim] (
    [applicant_key] int identity(1,1) not null
);
go

-- creating table 'training_course_dim'
create table [conform].[training_course_dim] (
    [training_course_key] int identity(1,1) not null
);
go

-- creating table 'employee_recruitment_fact'
create table [conform].[employee_recruitment_fact] (
    [employee_recruitment_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [position_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [date_dim_date_key] int  not null
);
go

-- creating table 'training_attendance_fact'
create table [conform].[training_attendance_fact] (
    [training_attendance_key] int identity(1,1) not null
);
go

-- creating table 'applicant_process_fact'
create table [conform].[applicant_process_fact] (
    [id] int identity(1,1) not null
);
go

-- creating table 'recruitment_authorisation_fact'
create table [conform].[recruitment_authorisation_fact] (
    [recruitment_authorisation_key] int identity(1,1) not null
);
go






-- creating table 'employee_leave_accrued_fact'
create table [conform].[employee_leave_accrued_fact] (
    [employee_leave_accrued_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [accrued_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [leave_accrued] nvarchar(max)  not null,
    [leave_type_key] int  not null
);
go

-- creating table 'employee_leave_accrued_snapshot_fact'
create table [conform].[employee_leave_accrued_snapshot_fact] (
    [employee_leave_accrued_snapshot_key] int identity(1,1) not null
);
go

-- creating table 'employee_leave_booking_fact'
create table [conform].[employee_leave_booking_fact] (
    [employee_leave_booking_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [booking_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [leave_booked] nvarchar(max)  not null,
    [leave_type_key] int  not null
);
go

-- creating table 'employee_leave_booking_snapshot_fact'
create table [conform].[employee_leave_booking_snapshot_fact] (
    [employee_leave_booking_snapshot_key] int identity(1,1) not null
);
go



-- creating table 'volunteer_recruitment_fact'
create table [conform].[volunteer_recruitment_fact] (
    [volunteer_recruitment_key] int identity(1,1) not null
);
go

-- creating table 'volunteer_profile_fact'
create table [conform].[volunteer_profile_fact] (
    [volunteer_profile_key] int identity(1,1) not null
);
go

-- creating table 'volunteer_position_fact'
create table [conform].[volunteer_position_fact] (
    [volunteer_position_key] int identity(1,1) not null
);
go

-- creating table 'volunteer_accreditation_fact'
create table [conform].[volunteer_accreditation_fact] (
    [volunteer_accreditation_key] int identity(1,1) not null
);
go

-- creating table 'volunteer_training_attendance_fact'
create table [conform].[volunteer_training_attendance_fact] (
    [volunteer_training_attendance_key] int identity(1,1) not null
);
go

-- creating table 'student_profile_fact'
create table [conform].[student_profile_fact] (
    [student_profile_key] int identity(1,1) not null
);
go

-- creating table 'student_training_attendance_fact'
create table [conform].[student_training_attendance_fact] (
    [student_training_attendance_key] int identity(1,1) not null
);
go

-- creating table 'date_dim'
create table [conform].[date_dim] (
    [date_key] int  not null,
    [full_date] datetime  null,
    [year] char(4)  null,
    [quarter_number] char(1)  null,
    [quarter_name] varchar(9)  null,
    [month] varchar(2)  null,
    [month_name] varchar(9)  null,
    [day_of_month] varchar(2)  null,
    [day_of_week] varchar(1)  null,
    [day_name] varchar(9)  null,
    [is_public_holiday] varchar(1)  null,
    [public_holiday_name] varchar(50)  null
);
go



-- creating table 'leave_type_dim'
create table [conform].[leave_type_dim] (
    [leave_type_key] int identity(1,1) not null,
    [leave_name] nvarchar(max)  not null
);
go

-- --------------------------------------------------
-- creating all primary key constraints
-- --------------------------------------------------

-- creating primary key on [employee_key] in table 'employee_dim'
alter table [conform].[employee_dim]
add constraint [pk_employee_dim]
    primary key clustered ([employee_key] asc);
go

-- creating primary key on [position_key] in table 'position_dim'
alter table [conform].[position_dim]
add constraint [pk_position_dim]
    primary key clustered ([position_key] asc);
go

-- creating primary key on [organisation_key] in table 'organisation_dim'
alter table [conform].[organisation_dim]
add constraint [pk_organisation_dim]
    primary key clustered ([organisation_key] asc);
go

-- creating primary key on [portfolio_key] in table 'portfolio_dim'
alter table [conform].[portfolio_dim]
add constraint [pk_portfolio_dim]
    primary key clustered ([portfolio_key] asc);
go

-- creating primary key on [service_stream_key] in table 'service_stream_dim'
alter table [conform].[service_stream_dim]
add constraint [pk_service_stream_dim]
    primary key clustered ([service_stream_key] asc);
go

-- creating primary key on [program_key] in table 'program_dim'
alter table [conform].[program_dim]
add constraint [pk_program_dim]
    primary key clustered ([program_key] asc);
go

-- creating primary key on [month_key] in table 'month_dim'
alter table [conform].[month_dim]
add constraint [pk_month_dim]
    primary key clustered ([month_key] asc);
go

-- creating primary key on [contractor_key] in table 'contractor_dim'
alter table [conform].[contractor_dim]
add constraint [pk_contractor_dim]
    primary key clustered ([contractor_key] asc);
go

-- creating primary key on [employee_benefit_key] in table 'employee_benefit_dim'
alter table [conform].[employee_benefit_dim]
add constraint [pk_employee_benefit_dim]
    primary key clustered ([employee_benefit_key] asc);
go

-- creating primary key on [accreditation_key] in table 'accreditation_dim'
alter table [conform].[accreditation_dim]
add constraint [pk_accreditation_dim]
    primary key clustered ([accreditation_key] asc);
go

-- creating primary key on [volunteer_key] in table 'volunteer_dim'
alter table [conform].[volunteer_dim]
add constraint [pk_volunteer_dim]
    primary key clustered ([volunteer_key] asc);
go

-- creating primary key on [employee_payment_key] in table 'employee_payment_dim'
alter table [conform].[employee_payment_dim]
add constraint [pk_employee_payment_dim]
    primary key clustered ([employee_payment_key] asc);
go

-- creating primary key on [student_key] in table 'student_dim'
alter table [conform].[student_dim]
add constraint [pk_student_dim]
    primary key clustered ([student_key] asc);
go

-- creating primary key on [item_key] in table 'item_dim'
alter table [conform].[item_dim]
add constraint [pk_item_dim]
    primary key clustered ([item_key] asc);
go

-- creating primary key on [employee_visa_key] in table 'employee_visa_dim'
alter table [conform].[employee_visa_dim]
add constraint [pk_employee_visa_dim]
    primary key clustered ([employee_visa_key] asc);
go

-- creating primary key on [recruitment_agency_key] in table 'recruitment_agency_dim'
alter table [conform].[recruitment_agency_dim]
add constraint [pk_recruitment_agency_dim]
    primary key clustered ([recruitment_agency_key] asc);
go

-- creating primary key on [applicant_key] in table 'applicant_dim'
alter table [conform].[applicant_dim]
add constraint [pk_applicant_dim]
    primary key clustered ([applicant_key] asc);
go

-- creating primary key on [training_course_key] in table 'training_course_dim'
alter table [conform].[training_course_dim]
add constraint [pk_training_course_dim]
    primary key clustered ([training_course_key] asc);
go

-- creating primary key on [employee_recruitment_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [pk_employee_recruitment_fact]
    primary key clustered ([employee_recruitment_key] asc);
go

-- creating primary key on [training_attendance_key] in table 'training_attendance_fact'
alter table [conform].[training_attendance_fact]
add constraint [pk_training_attendance_fact]
    primary key clustered ([training_attendance_key] asc);
go


-- creating primary key on [id] in table 'applicant_process_fact'
alter table [conform].[applicant_process_fact]
add constraint [pk_applicant_process_fact]
    primary key clustered ([id] asc);
go

-- creating primary key on [recruitment_authorisation_key] in table 'recruitment_authorisation_fact'
alter table [conform].[recruitment_authorisation_fact]
add constraint [pk_recruitment_authorisation_fact]
    primary key clustered ([recruitment_authorisation_key] asc);
go



-- creating primary key on [employee_benefit_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [pk_employee_benefit_fact]
    primary key clustered ([employee_benefit_key] asc);
go







-- creating primary key on [employee_leave_accrued_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [pk_employee_leave_accrued_fact]
    primary key clustered ([employee_leave_accrued_key] asc);
go

-- creating primary key on [employee_leave_accrued_snapshot_key] in table 'employee_leave_accrued_snapshot_fact'
alter table [conform].[employee_leave_accrued_snapshot_fact]
add constraint [pk_employee_leave_accrued_snapshot_fact]
    primary key clustered ([employee_leave_accrued_snapshot_key] asc);
go

-- creating primary key on [employee_leave_booking_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [pk_employee_leave_booking_fact]
    primary key clustered ([employee_leave_booking_key] asc);
go

-- creating primary key on [employee_leave_booking_snapshot_key] in table 'employee_leave_booking_snapshot_fact'
alter table [conform].[employee_leave_booking_snapshot_fact]
add constraint [pk_employee_leave_booking_snapshot_fact]
    primary key clustered ([employee_leave_booking_snapshot_key] asc);
go



-- creating primary key on [volunteer_recruitment_key] in table 'volunteer_recruitment_fact'
alter table [conform].[volunteer_recruitment_fact]
add constraint [pk_volunteer_recruitment_fact]
    primary key clustered ([volunteer_recruitment_key] asc);
go

-- creating primary key on [volunteer_profile_key] in table 'volunteer_profile_fact'
alter table [conform].[volunteer_profile_fact]
add constraint [pk_volunteer_profile_fact]
    primary key clustered ([volunteer_profile_key] asc);
go

-- creating primary key on [volunteer_position_key] in table 'volunteer_position_fact'
alter table [conform].[volunteer_position_fact]
add constraint [pk_volunteer_position_fact]
    primary key clustered ([volunteer_position_key] asc);
go

-- creating primary key on [volunteer_accreditation_key] in table 'volunteer_accreditation_fact'
alter table [conform].[volunteer_accreditation_fact]
add constraint [pk_volunteer_accreditation_fact]
    primary key clustered ([volunteer_accreditation_key] asc);
go

-- creating primary key on [volunteer_training_attendance_key] in table 'volunteer_training_attendance_fact'
alter table [conform].[volunteer_training_attendance_fact]
add constraint [pk_volunteer_training_attendance_fact]
    primary key clustered ([volunteer_training_attendance_key] asc);
go

-- creating primary key on [student_profile_key] in table 'student_profile_fact'
alter table [conform].[student_profile_fact]
add constraint [pk_student_profile_fact]
    primary key clustered ([student_profile_key] asc);
go

-- creating primary key on [student_training_attendance_key] in table 'student_training_attendance_fact'
alter table [conform].[student_training_attendance_fact]
add constraint [pk_student_training_attendance_fact]
    primary key clustered ([student_training_attendance_key] asc);
go


-- creating primary key on [date_key] in table 'date_dim'
alter table [conform].[date_dim]
add constraint [pk_date_dim]
    primary key clustered ([date_key] asc);
go



-- creating primary key on [leave_type_key] in table 'leave_type_dim'
alter table [conform].[leave_type_dim]
add constraint [pk_leave_type_dim]
    primary key clustered ([leave_type_key] asc);
go

-- --------------------------------------------------
-- creating all foreign key constraints
-- --------------------------------------------------

-- creating foreign key on [date_dim_date_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_date_dimemployee_recruitment_fact]
    foreign key ([date_dim_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_recruitment_fact'
create index [ix_fk_date_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([date_dim_date_key]);
go

-- creating foreign key on [position_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_position_dimemployee_recruitment_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_recruitment_fact'
create index [ix_fk_position_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([position_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_organisation_dimemployee_recruitment_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_recruitment_fact'
create index [ix_fk_organisation_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_portfolio_dimemployee_recruitment_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_recruitment_fact'
create index [ix_fk_portfolio_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_service_stream_dimemployee_recruitment_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_recruitment_fact'
create index [ix_fk_service_stream_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_program_dimemployee_recruitment_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_recruitment_fact'
create index [ix_fk_program_dimemployee_recruitment_fact]
on [conform].[employee_recruitment_fact]
    ([program_key]);
go


-- creating foreign key on [employee_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_employee_dimemployee_recruitment_fact1]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_recruitment_fact1'
create index [ix_fk_employee_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([employee_key]);
go

-- creating foreign key on [position_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_position_dimemployee_recruitment_fact1]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_recruitment_fact1'
create index [ix_fk_position_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([position_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_organisation_dimemployee_recruitment_fact1]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_recruitment_fact1'
create index [ix_fk_organisation_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_portfolio_dimemployee_recruitment_fact1]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_recruitment_fact1'
create index [ix_fk_portfolio_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_service_stream_dimemployee_recruitment_fact1]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_recruitment_fact1'
create index [ix_fk_service_stream_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_program_dimemployee_recruitment_fact1]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_recruitment_fact1'
create index [ix_fk_program_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([program_key]);
go

-- creating foreign key on [date_dim_date_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_date_dimemployee_recruitment_fact1]
    foreign key ([date_dim_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_recruitment_fact1'
create index [ix_fk_date_dimemployee_recruitment_fact1]
on [conform].[employee_recruitment_fact]
    ([date_dim_date_key]);
go






-- creating foreign key on [employee_payment_dim_employee_payment_key] in table 'employee_dim'
alter table [conform].[employee_dim]
add constraint [fk_employee_payment_dimemployee_dim]
    foreign key ([employee_payment_dim_employee_payment_key])
    references [conform].[employee_payment_dim]
        ([employee_payment_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_payment_dimemployee_dim'
create index [ix_fk_employee_payment_dimemployee_dim]
on [conform].[employee_dim]
    ([employee_payment_dim_employee_payment_key]);
go




-- creating foreign key on [employee_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_employee_dimemployee_leave_accrued_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_leave_accrued_fact'
create index [ix_fk_employee_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([employee_key]);
go

-- creating foreign key on [accrued_date_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_date_dimemployee_leave_accrued_fact]
    foreign key ([accrued_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_leave_accrued_fact'
create index [ix_fk_date_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([accrued_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_organisation_dimemployee_leave_accrued_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_leave_accrued_fact'
create index [ix_fk_organisation_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_portfolio_dimemployee_leave_accrued_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_leave_accrued_fact'
create index [ix_fk_portfolio_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_service_stream_dimemployee_leave_accrued_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_leave_accrued_fact'
create index [ix_fk_service_stream_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_program_dimemployee_leave_accrued_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_leave_accrued_fact'
create index [ix_fk_program_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_position_dimemployee_leave_accrued_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_leave_accrued_fact'
create index [ix_fk_position_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([position_key]);
go

-- creating foreign key on [employee_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_employee_dimemployee_leave_booking_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_leave_booking_fact'
create index [ix_fk_employee_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([employee_key]);
go

-- creating foreign key on [booking_date_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_date_dimemployee_leave_booking_fact]
    foreign key ([booking_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_leave_booking_fact'
create index [ix_fk_date_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([booking_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_organisation_dimemployee_leave_booking_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_leave_booking_fact'
create index [ix_fk_organisation_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_portfolio_dimemployee_leave_booking_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_leave_booking_fact'
create index [ix_fk_portfolio_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_service_stream_dimemployee_leave_booking_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_leave_booking_fact'
create index [ix_fk_service_stream_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_program_dimemployee_leave_booking_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_leave_booking_fact'
create index [ix_fk_program_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_position_dimemployee_leave_booking_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_leave_booking_fact'
create index [ix_fk_position_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([position_key]);
go

-- creating foreign key on [leave_type_key] in table 'employee_leave_booking_fact'
alter table [conform].[employee_leave_booking_fact]
add constraint [fk_leave_type_dimemployee_leave_booking_fact]
    foreign key ([leave_type_key])
    references [conform].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_leave_type_dimemployee_leave_booking_fact'
create index [ix_fk_leave_type_dimemployee_leave_booking_fact]
on [conform].[employee_leave_booking_fact]
    ([leave_type_key]);
go



-- creating foreign key on [leave_type_key] in table 'employee_leave_accrued_fact'
alter table [conform].[employee_leave_accrued_fact]
add constraint [fk_leave_type_dimemployee_leave_accrued_fact]
    foreign key ([leave_type_key])
    references [conform].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_leave_type_dimemployee_leave_accrued_fact'
create index [ix_fk_leave_type_dimemployee_leave_accrued_fact]
on [conform].[employee_leave_accrued_fact]
    ([leave_type_key]);
go

-- creating foreign key on [leave_type_key] in table 'employee_leave_snapshot_fact'
alter table [conform].[employee_leave_snapshot_fact]
add constraint [fk_leave_type_dimemployee_leave_snapshot_fact]
    foreign key ([leave_type_key])
    references [conform].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_leave_type_dimemployee_leave_snapshot_fact'
create index [ix_fk_leave_type_dimemployee_leave_snapshot_fact]
on [conform].[employee_leave_snapshot_fact]
    ([leave_type_key]);
go

-- creating foreign key on [date_dim_date_key] in table 'employee_recruitment_fact'
alter table [conform].[employee_recruitment_fact]
add constraint [fk_date_dimemployee_recruitment_fact2]
    foreign key ([date_dim_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_recruitment_fact2'
create index [ix_fk_date_dimemployee_recruitment_fact2]
on [conform].[employee_recruitment_fact]
    ([date_dim_date_key]);
go

-- --------------------------------------------------
-- script has ended
-- --------------------------------------------------