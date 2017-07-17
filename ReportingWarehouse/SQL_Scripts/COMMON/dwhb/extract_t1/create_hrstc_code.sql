-- creating table 'hrstc_code'
create table [extract].[hrstc_code] (
    [code_type] varchar(30)  not null,
    [code_id] varchar(20)  not null,
    [code_descr] varchar(64)  null,
    [active_flag] varchar(1)  null,
    [seq_no] int  null,
    [modifiable_by_user] varchar(1)  null,
    [able_change_desc] varchar(1)  null,
    [cruser] varchar(14)  null,
    [crdatei] datetime  null,
    [crtimei] int  null,
    [crterm] varchar(10)  null,
    [crwindow] varchar(8)  null,
    [last_mod_user] varchar(14)  null,
    [last_mod_datei] datetime  null,
    [last_mod_timei] int  null,
    [last_mod_term] varchar(10)  null,
    [last_mod_window] varchar(8)  null,
    [vers] int  null
);
go

-- creating primary key on [code_type], [code_id] in table 'hrstc_code'
alter table [extract].[hrstc_code]
add constraint [pk_hrstc_code]
    primary key clustered ([code_type], [code_id] asc);
go