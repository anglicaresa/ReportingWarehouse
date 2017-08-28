
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/08/2017 11:40:02
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhb\conform_riskman\conform_riskman_conceptual.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHB];
GO


-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[conform_riskman].[fk_incident_action_fact_action_dim]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_action_fact] DROP CONSTRAINT [fk_incident_action_fact_action_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_action_fact_incident_fact]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_action_fact] DROP CONSTRAINT [fk_incident_action_fact_incident_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_closed_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_closed_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_deleted_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_deleted_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_employee_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_history_fact] DROP CONSTRAINT [fk_incident_fact_employee_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_incident_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_incident_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_incident_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_history_fact] DROP CONSTRAINT [fk_incident_fact_incident_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_investigation_completed_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_investigation_completed_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_investigation_initiated_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_investigation_initiated_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_manager_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_history_fact] DROP CONSTRAINT [fk_incident_fact_manager_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_notified_date_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_notified_date_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_person_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_person_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_portfolio_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_portfolio_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_program_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_program_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_fact_service_stream_key]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_fact] DROP CONSTRAINT [fk_incident_fact_service_stream_key];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_type_fact_incident_fact]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_type_fact] DROP CONSTRAINT [fk_incident_type_fact_incident_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[fk_incident_type_fact_incident_type_dim]', 'F') IS NOT NULL
    ALTER TABLE [conform_riskman].[incident_type_fact] DROP CONSTRAINT [fk_incident_type_fact_incident_type_dim];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[conform_riskman].[action_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[action_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[date_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[date_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[employee_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[employee_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[incident_action_fact]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[incident_action_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[incident_fact]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[incident_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[incident_history_fact]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[incident_history_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[incident_type_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[incident_type_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[incident_type_fact]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[incident_type_fact];
GO
IF OBJECT_ID(N'[conform_riskman].[person_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[person_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[portfolio_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[portfolio_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[prgram_map_CustomerSite]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[prgram_map_CustomerSite];
GO
IF OBJECT_ID(N'[conform_riskman].[program_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[program_dim];
GO
IF OBJECT_ID(N'[conform_riskman].[program_mapping]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[program_mapping];
GO
IF OBJECT_ID(N'[conform_riskman].[service_stream_dim]', 'U') IS NOT NULL
    DROP TABLE [conform_riskman].[service_stream_dim];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'date_dim'
CREATE TABLE [conform_riskman].[date_dim] (
    [date_key] int  NOT NULL,
    [full_date] datetime  NULL,
    [display_date] varchar(10)  NULL,
    [year] int  NULL,
    [quarter] int  NULL,
    [quarter_name] varchar(9)  NULL,
    [month_no] int  NULL,
    [month_name] varchar(9)  NULL,
    [day_of_month] int  NULL,
    [day_of_week] int  NULL,
    [day_name] varchar(9)  NULL,
    [is_public_holiday] varchar(3)  NULL,
    [public_holiday_name] varchar(50)  NULL,
    [financial_year] varchar(11)  NULL,
    [fbt_range] varchar(11)  NULL,
    [pay_period_end] varchar(3)  NULL,
    [financial_month_no] int  NULL,
    [max_temperature] decimal(5,2)  NULL,
    [min_temperature] decimal(5,2)  NULL,
    [rainfall] decimal(5,2)  NULL,
    [max_wind_speed] decimal(5,2)  NULL
);
GO

-- Creating table 'employee_dim'
CREATE TABLE [conform_riskman].[employee_dim] (
    [employee_key] int IDENTITY(1,1) NOT NULL,
    [id_number] int  NULL,
    [given_name] varchar(50)  NULL,
    [family_name] varchar(50)  NULL,
    [preferred_name] varchar(50)  NULL,
    [gender] varchar(10)  NULL,
    [date_of_birth] datetime  NULL,
    [passport_number] varchar(30)  NULL,
    [visa_number] varchar(30)  NULL,
    [country_of_origin] varchar(50)  NULL,
    [employee_type] varchar(20)  NULL,
    [employee_class] varchar(20)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] nvarchar(1)  NULL,
    [pay_per_period] decimal(12,6)  NULL,
    [units_per_period] decimal(9,6)  NULL,
    [rem_level] varchar(60)  NULL,
    [rem_range] varchar(60)  NULL,
    [car_flag] varchar(3)  NULL,
    [phone_flag] varchar(3)  NULL,
    [salary_continuance] varchar(60)  NULL,
    [street_address_line1] varchar(50)  NULL,
    [street_address_line2] varchar(50)  NULL,
    [street_address_line3] varchar(50)  NULL,
    [street_city] varchar(50)  NULL,
    [street_state] varchar(50)  NULL,
    [street_post_code] varchar(10)  NULL,
    [street_country_code] varchar(10)  NULL,
    [street_telephone1] varchar(20)  NULL,
    [street_telephone2] varchar(20)  NULL,
    [street_telephone3] varchar(20)  NULL,
    [street_mobile1] varchar(20)  NULL,
    [street_mobile2] varchar(20)  NULL,
    [street_email1] varchar(100)  NULL,
    [street_email2] varchar(100)  NULL,
    [postal_address_line1] varchar(50)  NULL,
    [postal_address_line2] varchar(50)  NULL,
    [postal_address_line3] varchar(50)  NULL,
    [postal_city] varchar(50)  NULL,
    [postal_state] varchar(50)  NULL,
    [postal_post_code] varchar(10)  NULL,
    [postal_country_code] varchar(10)  NULL,
    [postal_telephone1] varchar(20)  NULL,
    [postal_telephone2] varchar(20)  NULL,
    [postal_telephone3] varchar(20)  NULL,
    [postal_mobile1] varchar(20)  NULL,
    [postal_mobile2] varchar(20)  NULL,
    [postal_email1] varchar(100)  NULL,
    [postal_email2] varchar(100)  NULL,
    [ethnic_group] varchar(10)  NULL,
    [pay_period_unit] varchar(1)  NULL,
    [visa_type] varchar(64)  NULL,
    [fte] decimal(7,6)  NULL,
    [salary] decimal(18,6)  NULL,
    [contact_family_name] varchar(50)  NULL,
    [contact_given_name] varchar(50)  NULL,
    [contact_dependant_flag] varchar(1)  NULL,
    [contact_type] varchar(20)  NULL,
    [contact_address_line1] varchar(50)  NULL,
    [contact_address_line2] varchar(50)  NULL,
    [contact_address_line3] varchar(50)  NULL,
    [contact_address_city] varchar(50)  NULL,
    [contact_address_state] varchar(50)  NULL,
    [contact_address_post_code] varchar(10)  NULL,
    [contact_address_country_code] varchar(10)  NULL,
    [contact_telephone1] varchar(20)  NULL,
    [contact_telephone2] varchar(20)  NULL,
    [contact_telephone3] varchar(20)  NULL,
    [contact_mobile1] varchar(20)  NULL,
    [contact_mobile2] varchar(20)  NULL,
    [contact_email1] varchar(100)  NULL,
    [contact_email2] varchar(100)  NULL,
    [user_id] varchar(14)  NULL,
    [AD_UserID] varchar(100)  NULL,
    [ASA_Email] varchar(100)  NULL
);
GO

-- Creating table 'incident_type_dim'
CREATE TABLE [conform_riskman].[incident_type_dim] (
    [incident_type_key] int IDENTITY(1,1) NOT NULL,
    [super_group] varchar(50)  NULL,
    [incident_class] varchar(50)  NULL,
    [definitions] varchar(50)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'person_dim'
CREATE TABLE [conform_riskman].[person_dim] (
    [person_key] int IDENTITY(1,1) NOT NULL,
    [given_name] varchar(50)  NULL,
    [family_name] varchar(50)  NULL,
    [date_of_birth] datetime  NULL,
    [gender] varchar(10)  NULL,
    [contact_phone] varchar(20)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'portfolio_dim'
CREATE TABLE [conform_riskman].[portfolio_dim] (
    [portfolio_key] int IDENTITY(1,1) NOT NULL,
    [portfolio_name] varchar(50)  NULL,
    [portfolio_code] varchar(20)  NOT NULL,
    [change_reason_code] nvarchar(5)  NULL,
    [change_reason_description] nvarchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] nvarchar(1)  NULL
);
GO

-- Creating table 'program_dim'
CREATE TABLE [conform_riskman].[program_dim] (
    [program_key] int IDENTITY(1,1) NOT NULL,
    [program_name] varchar(50)  NULL,
    [program_code] varchar(20)  NOT NULL,
    [program_street] varchar(50)  NOT NULL,
    [program_suburb] varchar(50)  NOT NULL,
    [program_postcode] varchar(5)  NOT NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'action_dim'
CREATE TABLE [conform_riskman].[action_dim] (
    [action_key] int IDENTITY(1,1) NOT NULL,
    [preventative_corrective_action] varchar(255)  NULL,
    [specific_preventative_corrective_action] varchar(500)  NULL,
    [action_due_date] datetime  NULL,
    [action_completed_date] datetime  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL,
    [ch_id] int  NULL
);
GO

-- Creating table 'service_stream_dim'
CREATE TABLE [conform_riskman].[service_stream_dim] (
    [service_stream_key] int IDENTITY(1,1) NOT NULL,
    [service_stream_name] varchar(50)  NULL,
    [service_stream_code] varchar(20)  NOT NULL,
    [service_stream_region] varchar(50)  NOT NULL,
    [change_reason_code] nvarchar(5)  NULL,
    [change_reason_description] nvarchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] nvarchar(1)  NULL
);
GO

-- Creating table 'incident_fact'
CREATE TABLE [conform_riskman].[incident_fact] (
    [incident_key] int IDENTITY(1,1) NOT NULL,
    [id] int  NOT NULL,
    [base_id] int  NOT NULL,
    [display_id] int  NOT NULL,
    [person_key] int  NOT NULL,
    [portfolio_key] int  NOT NULL,
    [service_stream_key] int  NOT NULL,
    [program_key] int  NOT NULL,
    [closed_date_key] int  NOT NULL,
    [incident_date_key] int  NOT NULL,
    [notified_date_key] int  NOT NULL,
    [deleted_date_key] int  NOT NULL,
    [investigation_initiated_date_key] int  NOT NULL,
    [investigation_completed_date_key] int  NOT NULL,
    [incident_time] datetime  NULL,
    [age] int  NULL,
    [severity] varchar(20)  NULL,
    [status] varchar(20)  NULL,
    [location] varchar(50)  NULL,
    [area_room] varchar(50)  NULL,
    [incident_involved] varchar(50)  NULL,
    [deceased] varchar(3)  NULL,
    [coroner_notified] varchar(3)  NULL,
    [autopsy] varchar(3)  NULL,
    [next_of_kin_notified] varchar(3)  NULL,
    [notification_reason] varchar(20)  NULL,
    [transfer_location] varchar(20)  NULL,
    [employee_site] varchar(50)  NULL,
    [nature_of_injury] varchar(50)  NULL,
    [summary] varchar(255)  NULL,
    [lti_incurred] varchar(3)  NULL,
    [investigation_initiated] varchar(3)  NULL,
    [safeworksa_notified] varchar(3)  NULL,
    [staff_injury] varchar(3)  NULL,
    [preventative_corrective_action_required] varchar(3)  NULL,
    [police_notified] varchar(3)  NULL,
    [fire_brigade_notified] varchar(3)  NULL,
    [ambulance__notified] varchar(3)  NULL,
    [human_services_notified] varchar(3)  NULL,
    [health_sa_notified] varchar(3)  NULL,
    [crisis_intervention_notified] varchar(3)  NULL,
    [carl_notified] varchar(3)  NULL,
    [ag_notified] varchar(3)  NULL,
    [housing_regulator_notified] varchar(3)  NULL,
    [funder_notified] varchar(3)  NULL,
    [parent_guardian_notified] varchar(3)  NULL,
    [detail] varchar(255)  NULL,
    [cust_service] varchar(100)  NULL,
    [customer_site] varchar(200)  NULL,
	[site]  varchar(200) NULL
);
GO

-- Creating table 'incident_action_fact'
CREATE TABLE [conform_riskman].[incident_action_fact] (
    [incident_action_fact_key] int IDENTITY(1,1) NOT NULL,
    [incident_key] int  NOT NULL,
    [action_key] int  NOT NULL
);
GO

-- Creating table 'incident_history_fact'
CREATE TABLE [conform_riskman].[incident_history_fact] (
    [incident_history_key] int IDENTITY(1,1) NOT NULL,
    [employee_key] int  NOT NULL,
    [incident_key] int  NOT NULL,
    [manager_key] int  NOT NULL,
    [entered_date] datetime  NULL
);
GO

-- Creating table 'incident_type_fact'
CREATE TABLE [conform_riskman].[incident_type_fact] (
    [incident_type_fact_key] int IDENTITY(1,1) NOT NULL,
    [incident_key] int  NOT NULL,
    [incident_type_key] int  NOT NULL
);
GO

-- Creating table 'program_mapping'
CREATE TABLE [conform_riskman].[program_mapping] (
    [program_mapping_key] int IDENTITY(1,1) NOT NULL,
    [system] varchar(30)  NULL,
    [table1] varchar(100)  NULL,
    [name1] varchar(100)  NULL,
    [value1] varchar(100)  NULL,
    [table2] varchar(100)  NULL,
    [name2] varchar(100)  NULL,
    [value2] varchar(100)  NULL,
    [table3] varchar(100)  NULL,
    [name3] varchar(100)  NULL,
    [value3] varchar(100)  NULL,
    [table4] varchar(100)  NULL,
    [name4] varchar(100)  NULL,
    [value4] varchar(100)  NULL,
    [table5] varchar(100)  NULL,
    [name5] varchar(100)  NULL,
    [value5] varchar(100)  NULL,
    [mapping_type] varchar(20)  NULL,
    [program_name] varchar(50)  NULL,
    [program_key] int  NULL
);
GO

-- Creating table 'prgram_map_CustomerSite'
CREATE TABLE [conform_riskman].[prgram_map_CustomerSite] (
    [CustomerSite] nvarchar(255)  NOT NULL,
    [Record_Number] float  NULL,
    [T1_Program] nvarchar(255)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [date_key] in table 'date_dim'
ALTER TABLE [conform_riskman].[date_dim]
ADD CONSTRAINT [PK_date_dim]
    PRIMARY KEY CLUSTERED ([date_key] ASC);
GO

-- Creating primary key on [employee_key] in table 'employee_dim'
ALTER TABLE [conform_riskman].[employee_dim]
ADD CONSTRAINT [PK_employee_dim]
    PRIMARY KEY CLUSTERED ([employee_key] ASC);
GO

-- Creating primary key on [incident_type_key] in table 'incident_type_dim'
ALTER TABLE [conform_riskman].[incident_type_dim]
ADD CONSTRAINT [PK_incident_type_dim]
    PRIMARY KEY CLUSTERED ([incident_type_key] ASC);
GO

-- Creating primary key on [person_key] in table 'person_dim'
ALTER TABLE [conform_riskman].[person_dim]
ADD CONSTRAINT [PK_person_dim]
    PRIMARY KEY CLUSTERED ([person_key] ASC);
GO

-- Creating primary key on [portfolio_key] in table 'portfolio_dim'
ALTER TABLE [conform_riskman].[portfolio_dim]
ADD CONSTRAINT [PK_portfolio_dim]
    PRIMARY KEY CLUSTERED ([portfolio_key] ASC);
GO

-- Creating primary key on [program_key] in table 'program_dim'
ALTER TABLE [conform_riskman].[program_dim]
ADD CONSTRAINT [PK_program_dim]
    PRIMARY KEY CLUSTERED ([program_key] ASC);
GO

-- Creating primary key on [action_key] in table 'action_dim'
ALTER TABLE [conform_riskman].[action_dim]
ADD CONSTRAINT [PK_action_dim]
    PRIMARY KEY CLUSTERED ([action_key] ASC);
GO

-- Creating primary key on [service_stream_key] in table 'service_stream_dim'
ALTER TABLE [conform_riskman].[service_stream_dim]
ADD CONSTRAINT [PK_service_stream_dim]
    PRIMARY KEY CLUSTERED ([service_stream_key] ASC);
GO

-- Creating primary key on [incident_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [PK_incident_fact]
    PRIMARY KEY CLUSTERED ([incident_key] ASC);
GO

-- Creating primary key on [incident_action_fact_key] in table 'incident_action_fact'
ALTER TABLE [conform_riskman].[incident_action_fact]
ADD CONSTRAINT [PK_incident_action_fact]
    PRIMARY KEY CLUSTERED ([incident_action_fact_key] ASC);
GO

-- Creating primary key on [incident_history_key] in table 'incident_history_fact'
ALTER TABLE [conform_riskman].[incident_history_fact]
ADD CONSTRAINT [PK_incident_history_fact]
    PRIMARY KEY CLUSTERED ([incident_history_key] ASC);
GO

-- Creating primary key on [incident_type_fact_key] in table 'incident_type_fact'
ALTER TABLE [conform_riskman].[incident_type_fact]
ADD CONSTRAINT [PK_incident_type_fact]
    PRIMARY KEY CLUSTERED ([incident_type_fact_key] ASC);
GO

-- Creating primary key on [program_mapping_key] in table 'program_mapping'
ALTER TABLE [conform_riskman].[program_mapping]
ADD CONSTRAINT [PK_program_mapping]
    PRIMARY KEY CLUSTERED ([program_mapping_key] ASC);
GO

-- Creating primary key on [CustomerSite] in table 'prgram_map_CustomerSite'
ALTER TABLE [conform_riskman].[prgram_map_CustomerSite]
ADD CONSTRAINT [PK_prgram_map_CustomerSite]
    PRIMARY KEY CLUSTERED ([CustomerSite] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [closed_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_closed_date_key]
    FOREIGN KEY ([closed_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_closed_date_key'
CREATE INDEX [IX_fk_incident_fact_closed_date_key]
ON [conform_riskman].[incident_fact]
    ([closed_date_key]);
GO

-- Creating foreign key on [deleted_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_deleted_date_key]
    FOREIGN KEY ([deleted_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_deleted_date_key'
CREATE INDEX [IX_fk_incident_fact_deleted_date_key]
ON [conform_riskman].[incident_fact]
    ([deleted_date_key]);
GO

-- Creating foreign key on [incident_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_incident_date_key]
    FOREIGN KEY ([incident_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_incident_date_key'
CREATE INDEX [IX_fk_incident_fact_incident_date_key]
ON [conform_riskman].[incident_fact]
    ([incident_date_key]);
GO

-- Creating foreign key on [investigation_completed_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_investigation_completed_date_key]
    FOREIGN KEY ([investigation_completed_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_investigation_completed_date_key'
CREATE INDEX [IX_fk_incident_fact_investigation_completed_date_key]
ON [conform_riskman].[incident_fact]
    ([investigation_completed_date_key]);
GO

-- Creating foreign key on [investigation_initiated_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_investigation_initiated_date_key]
    FOREIGN KEY ([investigation_initiated_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_investigation_initiated_date_key'
CREATE INDEX [IX_fk_incident_fact_investigation_initiated_date_key]
ON [conform_riskman].[incident_fact]
    ([investigation_initiated_date_key]);
GO

-- Creating foreign key on [notified_date_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_notified_date_key]
    FOREIGN KEY ([notified_date_key])
    REFERENCES [conform_riskman].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_notified_date_key'
CREATE INDEX [IX_fk_incident_fact_notified_date_key]
ON [conform_riskman].[incident_fact]
    ([notified_date_key]);
GO

-- Creating foreign key on [person_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_person_key]
    FOREIGN KEY ([person_key])
    REFERENCES [conform_riskman].[person_dim]
        ([person_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_person_key'
CREATE INDEX [IX_fk_incident_fact_person_key]
ON [conform_riskman].[incident_fact]
    ([person_key]);
GO

-- Creating foreign key on [portfolio_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_portfolio_key]
    FOREIGN KEY ([portfolio_key])
    REFERENCES [conform_riskman].[portfolio_dim]
        ([portfolio_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_portfolio_key'
CREATE INDEX [IX_fk_incident_fact_portfolio_key]
ON [conform_riskman].[incident_fact]
    ([portfolio_key]);
GO

-- Creating foreign key on [program_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_program_key]
    FOREIGN KEY ([program_key])
    REFERENCES [conform_riskman].[program_dim]
        ([program_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_program_key'
CREATE INDEX [IX_fk_incident_fact_program_key]
ON [conform_riskman].[incident_fact]
    ([program_key]);
GO

-- Creating foreign key on [service_stream_key] in table 'incident_fact'
ALTER TABLE [conform_riskman].[incident_fact]
ADD CONSTRAINT [fk_incident_fact_service_stream_key]
    FOREIGN KEY ([service_stream_key])
    REFERENCES [conform_riskman].[service_stream_dim]
        ([service_stream_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_service_stream_key'
CREATE INDEX [IX_fk_incident_fact_service_stream_key]
ON [conform_riskman].[incident_fact]
    ([service_stream_key]);
GO

-- Creating foreign key on [action_key] in table 'incident_action_fact'
ALTER TABLE [conform_riskman].[incident_action_fact]
ADD CONSTRAINT [fk_incident_action_fact_action_dim]
    FOREIGN KEY ([action_key])
    REFERENCES [conform_riskman].[action_dim]
        ([action_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_action_fact_action_dim'
CREATE INDEX [IX_fk_incident_action_fact_action_dim]
ON [conform_riskman].[incident_action_fact]
    ([action_key]);
GO

-- Creating foreign key on [employee_key] in table 'incident_history_fact'
ALTER TABLE [conform_riskman].[incident_history_fact]
ADD CONSTRAINT [fk_incident_fact_employee_key]
    FOREIGN KEY ([employee_key])
    REFERENCES [conform_riskman].[employee_dim]
        ([employee_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_employee_key'
CREATE INDEX [IX_fk_incident_fact_employee_key]
ON [conform_riskman].[incident_history_fact]
    ([employee_key]);
GO

-- Creating foreign key on [manager_key] in table 'incident_history_fact'
ALTER TABLE [conform_riskman].[incident_history_fact]
ADD CONSTRAINT [fk_incident_fact_manager_key]
    FOREIGN KEY ([manager_key])
    REFERENCES [conform_riskman].[employee_dim]
        ([employee_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_manager_key'
CREATE INDEX [IX_fk_incident_fact_manager_key]
ON [conform_riskman].[incident_history_fact]
    ([manager_key]);
GO

-- Creating foreign key on [incident_key] in table 'incident_action_fact'
ALTER TABLE [conform_riskman].[incident_action_fact]
ADD CONSTRAINT [fk_incident_action_fact_incident_fact]
    FOREIGN KEY ([incident_key])
    REFERENCES [conform_riskman].[incident_fact]
        ([incident_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_action_fact_incident_fact'
CREATE INDEX [IX_fk_incident_action_fact_incident_fact]
ON [conform_riskman].[incident_action_fact]
    ([incident_key]);
GO

-- Creating foreign key on [incident_key] in table 'incident_history_fact'
ALTER TABLE [conform_riskman].[incident_history_fact]
ADD CONSTRAINT [fk_incident_fact_incident_key]
    FOREIGN KEY ([incident_key])
    REFERENCES [conform_riskman].[incident_fact]
        ([incident_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_fact_incident_key'
CREATE INDEX [IX_fk_incident_fact_incident_key]
ON [conform_riskman].[incident_history_fact]
    ([incident_key]);
GO

-- Creating foreign key on [incident_key] in table 'incident_type_fact'
ALTER TABLE [conform_riskman].[incident_type_fact]
ADD CONSTRAINT [fk_incident_type_fact_incident_fact]
    FOREIGN KEY ([incident_key])
    REFERENCES [conform_riskman].[incident_fact]
        ([incident_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_type_fact_incident_fact'
CREATE INDEX [IX_fk_incident_type_fact_incident_fact]
ON [conform_riskman].[incident_type_fact]
    ([incident_key]);
GO

-- Creating foreign key on [incident_type_key] in table 'incident_type_fact'
ALTER TABLE [conform_riskman].[incident_type_fact]
ADD CONSTRAINT [fk_incident_type_fact_incident_type_dim]
    FOREIGN KEY ([incident_type_key])
    REFERENCES [conform_riskman].[incident_type_dim]
        ([incident_type_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_incident_type_fact_incident_type_dim'
CREATE INDEX [IX_fk_incident_type_fact_incident_type_dim]
ON [conform_riskman].[incident_type_fact]
    ([incident_type_key]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------