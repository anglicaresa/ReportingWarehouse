-- creating table 'hrsys_hierarch_lvl'
create table extract.[hrsys_hierarch_lvl] (
    [company_code] int  not null,
    [hierarchy_type] varchar(10)  not null,
    [hierarchy_level] int  not null,
    [level_desc] varchar(50)  null,
    [comments] varchar(255)  null,
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
    [vers] int  null,
    [techone_fld1] varchar(40)  null,
    [techone_fld2] varchar(40)  null,
    [techone_fld3] varchar(40)  null,
    [techone_fld4] varchar(40)  null,
    [techone_fld5] varchar(40)  null
);
go