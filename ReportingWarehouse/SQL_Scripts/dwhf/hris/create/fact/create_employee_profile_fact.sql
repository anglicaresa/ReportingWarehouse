-- creating table 'employee_profile_fact'
create table [hris].[employee_profile_fact] (
    [employee_profile_key] int identity(1,1) not null
);
go

-- creating primary key on [employee_profile_key] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [pk_employee_profile_fact]
    primary key clustered ([employee_profile_key] asc);
go