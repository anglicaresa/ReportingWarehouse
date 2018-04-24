create table conform_riskman.SkinTear_Fact
(
ST_key  int identity(1,1),
Incident_ID int,
Location_on_body nvarchar(max),
Other_location nvarchar(max),
Skin_Tear_Category nvarchar(max),
Care_setting_where_skintear_developed nvarchar(max),
Other_care_setting nvarchar(max),
Other_Site nvarchar(max),
How_skin_tear_developed nvarchar(max))
	go

-- PK
alter table [conform_riskman].[SkinTear_Fact]
add constraint [pk_SkinTear_Fact]
    primary key clustered ([ST_key] asc);
go
