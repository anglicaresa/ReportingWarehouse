USE [DWHF]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_service_stream_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_program_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_position_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_position_end_date_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_position_effective_date_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_portfolio_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_manager_position_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_manager_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_employee_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact] DROP CONSTRAINT [fk_conform_non_primary_positions_fact_contract_expire_date_key]
GO

/****** Object:  Table [hris].[non_primary_positions_fact]    Script Date: 21/09/2017 3:16:27 PM ******/
DROP TABLE [hris].[non_primary_positions_fact]
GO

/****** Object:  Table [hris].[non_primary_positions_fact]    Script Date: 21/09/2017 3:16:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [hris].[non_primary_positions_fact](
	[non_primary_position_key] [int] NOT NULL,
	[portfolio_key] [int] NOT NULL,
	[service_stream_key] [int] NOT NULL,
	[program_key] [int] NOT NULL,
	[position_key] [int] NOT NULL,
	[employee_key] [int] NOT NULL,
	[position_type] [varchar](100) NULL,
	[position_code] [varchar](100) NULL,
	[manager_key] [int] NOT NULL,
	[manager_position_key] [int] NOT NULL,
	[contract_expire_date_key] [int] NULL,
	[position_effective_date_key] [int] NULL,
	[position_end_date_key] [int] NULL,
	[pay_rate] [decimal](18,6) NULL,
 CONSTRAINT [pk_non_primary_positions_fact] PRIMARY KEY CLUSTERED 
(
	[non_primary_position_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_contract_expire_date_key] FOREIGN KEY([contract_expire_date_key])
REFERENCES [hris].[date_dim] ([date_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_contract_expire_date_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_employee_key] FOREIGN KEY([employee_key])
REFERENCES [hris].[employee_dim] ([employee_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_employee_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_manager_key] FOREIGN KEY([manager_key])
REFERENCES [hris].[employee_dim] ([employee_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_manager_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_manager_position_key] FOREIGN KEY([manager_position_key])
REFERENCES [hris].[position_dim] ([position_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_manager_position_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_portfolio_key] FOREIGN KEY([portfolio_key])
REFERENCES [hris].[portfolio_dim] ([portfolio_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_portfolio_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_position_effective_date_key] FOREIGN KEY([position_effective_date_key])
REFERENCES [hris].[date_dim] ([date_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_position_effective_date_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_position_end_date_key] FOREIGN KEY([position_end_date_key])
REFERENCES [hris].[date_dim] ([date_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_position_end_date_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_position_key] FOREIGN KEY([position_key])
REFERENCES [hris].[position_dim] ([position_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_position_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_program_key] FOREIGN KEY([program_key])
REFERENCES [hris].[program_dim] ([program_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_program_key]
GO

ALTER TABLE [hris].[non_primary_positions_fact]  WITH CHECK ADD  CONSTRAINT [fk_conform_non_primary_positions_fact_service_stream_key] FOREIGN KEY([service_stream_key])
REFERENCES [hris].[service_stream_dim] ([service_stream_key])
GO

ALTER TABLE [hris].[non_primary_positions_fact] CHECK CONSTRAINT [fk_conform_non_primary_positions_fact_service_stream_key]
GO


