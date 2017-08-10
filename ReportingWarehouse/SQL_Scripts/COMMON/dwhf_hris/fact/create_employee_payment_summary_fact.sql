
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/10/2017 14:38:54
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhf\hris\hris_physical.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHF];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_date_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_date_key];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_employee_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_employee_key];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_portfolio_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_portfolio_key];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_position_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_position_key];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_program_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_program_key];
GO
IF OBJECT_ID(N'[hris].[fk_employee_payment_summary_fact_service_stream_key]', 'F') IS NOT NULL
    ALTER TABLE [hris].[employee_payment_summary_fact] DROP CONSTRAINT [fk_employee_payment_summary_fact_service_stream_key];
GO
IF OBJECT_ID(N'[hris].[employee_payment_summary_fact]', 'U') IS NOT NULL
    DROP TABLE [hris].[employee_payment_summary_fact];
GO

-- Creating table 'employee_payment_summary_fact'
CREATE TABLE [hris].[employee_payment_summary_fact] (
    [employee_payment_key] int  NOT NULL,
    [portfolio_key] int  NOT NULL,
    [service_stream_key] int  NOT NULL,
    [program_key] int  NOT NULL,
    [position_key] int  NOT NULL,
    [employee_key] int  NOT NULL,
    [employee_id] int  NOT NULL,
    [employee_name] varchar(50)  NULL,
    [pay_period_date_key] int  NOT NULL,
    [period_amount] decimal(10,4)  NULL,
    [count] int  NULL
);
GO


-- Creating primary key on [employee_payment_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [PK_employee_payment_summary_fact]
    PRIMARY KEY CLUSTERED ([employee_payment_key] ASC);
GO


-- Creating foreign key on [pay_period_date_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_date_key]
    FOREIGN KEY ([pay_period_date_key])
    REFERENCES [hris].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_date_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_date_key]
ON [hris].[employee_payment_summary_fact]
    ([pay_period_date_key]);
GO

-- Creating foreign key on [employee_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_employee_key]
    FOREIGN KEY ([employee_key])
    REFERENCES [hris].[employee_dim]
        ([employee_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_employee_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_employee_key]
ON [hris].[employee_payment_summary_fact]
    ([employee_key]);
GO

-- Creating foreign key on [portfolio_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_portfolio_key]
    FOREIGN KEY ([portfolio_key])
    REFERENCES [hris].[portfolio_dim]
        ([portfolio_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_portfolio_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_portfolio_key]
ON [hris].[employee_payment_summary_fact]
    ([portfolio_key]);
GO

-- Creating foreign key on [position_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_position_key]
    FOREIGN KEY ([position_key])
    REFERENCES [hris].[position_dim]
        ([position_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_position_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_position_key]
ON [hris].[employee_payment_summary_fact]
    ([position_key]);
GO

-- Creating foreign key on [program_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_program_key]
    FOREIGN KEY ([program_key])
    REFERENCES [hris].[program_dim]
        ([program_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_program_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_program_key]
ON [hris].[employee_payment_summary_fact]
    ([program_key]);
GO

-- Creating foreign key on [service_stream_key] in table 'employee_payment_summary_fact'
ALTER TABLE [hris].[employee_payment_summary_fact]
ADD CONSTRAINT [fk_employee_payment_summary_fact_service_stream_key]
    FOREIGN KEY ([service_stream_key])
    REFERENCES [hris].[service_stream_dim]
        ([service_stream_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_employee_payment_summary_fact_service_stream_key'
CREATE INDEX [IX_fk_employee_payment_summary_fact_service_stream_key]
ON [hris].[employee_payment_summary_fact]
    ([service_stream_key]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------