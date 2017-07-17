-- creating table 'job_control'
create table [management].[job_control] (
    [job_key] int identity(1,1) not null,
    [source_table_key] int  not null,
    [job_enabled_flag] nvarchar(max)  not null,
    [destination_table_key] int  not null,
    [package_key] int  not null,
	[priority] int,
	[frequency] varchar(20) null
	
);

-- creating primary key on [job_key] in table 'job_control'
alter table [management].[job_control]
add constraint [pk_job_control]
    primary key clustered ([job_key] asc);

-- creating foreign key on [source_table_key] in table 'job_control'
alter table [management].[job_control]
add constraint [fk_table_dimjob_schedule]
    foreign key ([source_table_key])
    references [management].[table_dim]
        ([table_key])
    on delete no action on update no action;


	-- creating foreign key on [destination_table_key] in table 'job_control'
alter table [management].[job_control]
add constraint [fk_table_dimjob_control]
    foreign key ([destination_table_key])
    references [management].[table_dim]
        ([table_key])
    on delete no action on update no action;

		-- creating foreign key on [package_key] in table 'job_control'
alter table [management].[job_control]
add constraint [fk_package_dimjob_control]
    foreign key ([package_key])
    references [management].[package_dim]
        ([package_key])
    on delete no action on update no action;


-- creating non-clustered index for foreign key 'fk_table_dimjob_schedule'
create index [ix_fk_table_dimjob_schedule]
on [management].[job_control]
    ([source_table_key]);


-- creating non-clustered index for foreign key 'fk_table_dimjob_control'
create index [ix_fk_table_dimjob_control]
on [management].[job_control]
    ([destination_table_key]);



	-- creating non-clustered index for foreign key 'fk_package_dimjob_control'
create index [ix_fk_package_dimjob_control]
on [management].[job_control]
    ([package_key]);