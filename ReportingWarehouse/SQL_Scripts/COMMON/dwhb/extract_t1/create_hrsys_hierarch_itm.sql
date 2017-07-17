-- creating table 'hrsys_hierarch_itm'
create table extract.[hrsys_hierarch_itm] (
    [company_code] int  null,
    [hierarchy_type] varchar(10)  null,
    [hierarchy_code] varchar(10)  null,
    [parent_type] varchar(10)  null,
    [parent_node] varchar(10)  null,
    [tree_index] varchar(40)  not null,
    [parent_index] varchar(40)  null,
    [current_level] int  null,
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
    [org_key] varchar(40)  null,
    [seq_num] int  null,
    [parent_num] int  not null
);
go