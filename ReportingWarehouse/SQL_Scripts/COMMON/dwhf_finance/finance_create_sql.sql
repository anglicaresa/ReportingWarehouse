
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/24/2017 13:57:18
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhb\finance\finance_physical.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dwhf_finance];
GO
IF SCHEMA_ID(N'finance') IS NULL EXECUTE(N'CREATE SCHEMA [finance]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_account_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_account_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_accounting_period_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_accounting_period_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_cost_centre_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_cost_centre_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_date_processed_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_date_processed_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_date_received_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_date_received_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_ledger_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_ledger_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_portfolio_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_portfolio_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_program_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_program_key];
GO
IF OBJECT_ID(N'[finance].[fk_finance_DEBTOR_FACT_service_stream_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[debtor_fact] DROP CONSTRAINT [fk_finance_DEBTOR_FACT_service_stream_key];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[finance].[account_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[account_dim];
GO
IF OBJECT_ID(N'[finance].[accounting_period_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[accounting_period_dim];
GO
IF OBJECT_ID(N'[finance].[cost_centre_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[cost_centre_dim];
GO
IF OBJECT_ID(N'[finance].[date_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[date_dim];
GO
IF OBJECT_ID(N'[finance].[debtor_fact]', 'U') IS NOT NULL
    DROP TABLE [finance].[debtor_fact];
GO
IF OBJECT_ID(N'[finance].[ledger_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[ledger_dim];
GO
IF OBJECT_ID(N'[finance].[portfolio_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[portfolio_dim];
GO
IF OBJECT_ID(N'[finance].[program_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[program_dim];
GO
IF OBJECT_ID(N'[finance].[service_stream_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[service_stream_dim];
GO
IF OBJECT_ID(N'[finance].[program_mapping]', 'U') IS NOT NULL
    DROP TABLE [finance].[program_mapping];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'account_dim'
CREATE TABLE [finance].[account_dim] (
    [account_key] int  NOT NULL,
    [account_name] varchar(60)  NULL,
    [account_number] varchar(32)  NULL,
    [entity] varchar(32)  NULL,
    [debtor] varchar(32)  NULL,
    [costing] varchar(32)  NULL,
    [activity_account] varchar(32)  NULL,
    [natural_account] varchar(32)  NULL,
    [chart_name] varchar(8)  NULL,
    [short_description] varchar(15)  NULL,
    [post_name] varchar(120)  NULL,
    [pay_name] varchar(120)  NULL,
    [address_line_1] varchar(50)  NULL,
    [address_line_2] varchar(50)  NULL,
    [address_line_3] varchar(50)  NULL,
    [city] varchar(50)  NULL,
    [state] varchar(50)  NULL,
    [postcode] varchar(15)  NULL,
    [telephone] varchar(20)  NULL,
    [abn] varchar(20)  NULL,
    [contact_name] varchar(60)  NULL,
    [contact_details] varchar(40)  NULL,
    [bank_name] varchar(40)  NULL,
    [bsb_code] varchar(20)  NULL,
    [bank_account] varchar(50)  NULL,
    [credit_limit] decimal(14,2)  NULL,
    [payment_term_days] int  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'cost_centre_dim'
CREATE TABLE [finance].[cost_centre_dim] (
    [cost_centre_key] int  NOT NULL,
    [name] varchar(50)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'date_dim'
CREATE TABLE [finance].[date_dim] (
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

-- Creating table 'debtor_fact'
CREATE TABLE [finance].[debtor_fact] (
    [debtor_key] int  NOT NULL,
    [account_key] int  NOT NULL,
    [cost_centre_key] int  NOT NULL,
    [portfolio_key] int  NOT NULL,
    [service_stream_key] int  NOT NULL,
    [program_key] int  NOT NULL,
    [accounting_period_key] int  NOT NULL,
    [date_received_key] int  NOT NULL,
    [date_processed_key] int  NOT NULL,
    [ledger_key] int  NOT NULL,
    [reference] varchar(30)  NULL,
    [amount] decimal(15,2)  NULL
);
GO

-- Creating table 'ledger_dim'
CREATE TABLE [finance].[ledger_dim] (
    [ledger_key] int  NOT NULL,
    [name] varchar(50)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL
);
GO

-- Creating table 'portfolio_dim'
CREATE TABLE [finance].[portfolio_dim] (
    [portfolio_key] int  NOT NULL,
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
CREATE TABLE [finance].[program_dim] (
    [program_key] int  NOT NULL,
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

-- Creating table 'service_stream_dim'
CREATE TABLE [finance].[service_stream_dim] (
    [service_stream_key] int  NOT NULL,
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

-- Creating table 'program_mapping'
CREATE TABLE [finance].[program_mapping] (
    [program_mapping_key] int  NOT NULL,
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

-- Creating table 'accounting_period_dim'
CREATE TABLE [finance].[accounting_period_dim] (
    [accounting_period_key] int  NOT NULL,
    [period_no] int  NULL,
    [quarter] int  NULL,
    [description] varchar(50)  NULL,
    [fiscal_year] varchar(11)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL,
    [full_date] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [account_key] in table 'account_dim'
ALTER TABLE [finance].[account_dim]
ADD CONSTRAINT [PK_account_dim]
    PRIMARY KEY CLUSTERED ([account_key] ASC);
GO

-- Creating primary key on [cost_centre_key] in table 'cost_centre_dim'
ALTER TABLE [finance].[cost_centre_dim]
ADD CONSTRAINT [PK_cost_centre_dim]
    PRIMARY KEY CLUSTERED ([cost_centre_key] ASC);
GO

-- Creating primary key on [date_key] in table 'date_dim'
ALTER TABLE [finance].[date_dim]
ADD CONSTRAINT [PK_date_dim]
    PRIMARY KEY CLUSTERED ([date_key] ASC);
GO

-- Creating primary key on [debtor_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [PK_debtor_fact]
    PRIMARY KEY CLUSTERED ([debtor_key] ASC);
GO

-- Creating primary key on [ledger_key] in table 'ledger_dim'
ALTER TABLE [finance].[ledger_dim]
ADD CONSTRAINT [PK_ledger_dim]
    PRIMARY KEY CLUSTERED ([ledger_key] ASC);
GO

-- Creating primary key on [portfolio_key] in table 'portfolio_dim'
ALTER TABLE [finance].[portfolio_dim]
ADD CONSTRAINT [PK_portfolio_dim]
    PRIMARY KEY CLUSTERED ([portfolio_key] ASC);
GO

-- Creating primary key on [program_key] in table 'program_dim'
ALTER TABLE [finance].[program_dim]
ADD CONSTRAINT [PK_program_dim]
    PRIMARY KEY CLUSTERED ([program_key] ASC);
GO

-- Creating primary key on [service_stream_key] in table 'service_stream_dim'
ALTER TABLE [finance].[service_stream_dim]
ADD CONSTRAINT [PK_service_stream_dim]
    PRIMARY KEY CLUSTERED ([service_stream_key] ASC);
GO

-- Creating primary key on [program_mapping_key] in table 'program_mapping'
ALTER TABLE [finance].[program_mapping]
ADD CONSTRAINT [PK_program_mapping]
    PRIMARY KEY CLUSTERED ([program_mapping_key] ASC);
GO

-- Creating primary key on [accounting_period_key] in table 'accounting_period_dim'
ALTER TABLE [finance].[accounting_period_dim]
ADD CONSTRAINT [PK_accounting_period_dim]
    PRIMARY KEY CLUSTERED ([accounting_period_key] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [account_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_account_key]
    FOREIGN KEY ([account_key])
    REFERENCES [finance].[account_dim]
        ([account_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_account_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_account_key]
ON [finance].[debtor_fact]
    ([account_key]);
GO

-- Creating foreign key on [cost_centre_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_cost_centre_key]
    FOREIGN KEY ([cost_centre_key])
    REFERENCES [finance].[cost_centre_dim]
        ([cost_centre_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_cost_centre_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_cost_centre_key]
ON [finance].[debtor_fact]
    ([cost_centre_key]);
GO

-- Creating foreign key on [date_processed_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_date_processed_key]
    FOREIGN KEY ([date_processed_key])
    REFERENCES [finance].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_date_processed_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_date_processed_key]
ON [finance].[debtor_fact]
    ([date_processed_key]);
GO

-- Creating foreign key on [date_received_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_date_received_key]
    FOREIGN KEY ([date_received_key])
    REFERENCES [finance].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_date_received_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_date_received_key]
ON [finance].[debtor_fact]
    ([date_received_key]);
GO

-- Creating foreign key on [ledger_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_ledger_key]
    FOREIGN KEY ([ledger_key])
    REFERENCES [finance].[ledger_dim]
        ([ledger_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_ledger_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_ledger_key]
ON [finance].[debtor_fact]
    ([ledger_key]);
GO

-- Creating foreign key on [portfolio_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_portfolio_key]
    FOREIGN KEY ([portfolio_key])
    REFERENCES [finance].[portfolio_dim]
        ([portfolio_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_portfolio_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_portfolio_key]
ON [finance].[debtor_fact]
    ([portfolio_key]);
GO

-- Creating foreign key on [program_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_program_key]
    FOREIGN KEY ([program_key])
    REFERENCES [finance].[program_dim]
        ([program_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_program_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_program_key]
ON [finance].[debtor_fact]
    ([program_key]);
GO

-- Creating foreign key on [service_stream_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_service_stream_key]
    FOREIGN KEY ([service_stream_key])
    REFERENCES [finance].[service_stream_dim]
        ([service_stream_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_service_stream_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_service_stream_key]
ON [finance].[debtor_fact]
    ([service_stream_key]);
GO

-- Creating foreign key on [accounting_period_key] in table 'debtor_fact'
ALTER TABLE [finance].[debtor_fact]
ADD CONSTRAINT [fk_finance_DEBTOR_FACT_accounting_period_key]
    FOREIGN KEY ([accounting_period_key])
    REFERENCES [finance].[accounting_period_dim]
        ([accounting_period_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_finance_DEBTOR_FACT_accounting_period_key'
CREATE INDEX [IX_fk_finance_DEBTOR_FACT_accounting_period_key]
ON [finance].[debtor_fact]
    ([accounting_period_key]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
