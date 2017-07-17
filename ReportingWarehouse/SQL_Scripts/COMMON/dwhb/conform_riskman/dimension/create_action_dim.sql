create table [conform_riskman].[action_dim] (
    [action_key] int identity(1,1) not null,
	[preventative_corrective_action] varchar(255),
	[specific_preventative_corrective_action] varchar(500),
	[action_due_date] datetime,
	[action_completed_date] datetime,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null
	);
go
-- PK
alter table [conform_riskman].[action_dim]
add constraint [pk_action_dim]
    primary key clustered ([action_key] asc);
go


