USE [DWHF]
GO

ALTER TABLE [hris].[labour_turnover_fact] DROP CONSTRAINT [fk_labour_turnover_fact_service_stream_key]
GO

ALTER TABLE [hris].[labour_turnover_fact] DROP CONSTRAINT [fk_labour_turnover_fact_portfolio_key]
GO

ALTER TABLE [hris].[labour_turnover_fact] DROP CONSTRAINT [fk_labour_turnover_fact_month_date_key]
GO

/****** Object:  Table [hris].[labour_turnover_fact]    Script Date: 22/06/2017 2:57:25 PM ******/
DROP TABLE [hris].[labour_turnover_fact]
GO

/****** Object:  Table [hris].[labour_turnover_fact]    Script Date: 22/06/2017 2:57:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [hris].[labour_turnover_fact](
	[labour_turnover_key] [int] NOT NULL,
	[month_date_key] [int] NOT NULL,
	[portfolio_key] [int] NOT NULL,
	[service_stream_key] [int] NOT NULL,

	[permanent_ft_total] [int] NULL,
	[permanent_pt_total] [int] NULL,
	[contract_ft_total] [int] NULL,
	[contract_pt_total] [int] NULL,
	[casual_total] [int] NULL,
	[total] [int] NULL,

	[permanent_ft_lost] [int] NULL,
	[permanent_pt_lost] [int] NULL,
	[contract_ft_lost] [int] NULL,
	[contract_pt_lost] [int] NULL,
	[casual_lost] [int] NULL,
	[total_lost] [int] NULL,

	[permanent_ft_turnover] [decimal](10, 4) NULL,
	[permanent_pt_turnover] [decimal](10, 4) NULL,
	[contract_ft_turnover] [decimal](10, 4) NULL,
	[contract_pt_turnover] [decimal](10, 4) NULL,
	[casual_turnover] [decimal](10, 4) NULL,
	[total_turnover] [decimal](10, 4) NULL,
 CONSTRAINT [pk_labour_turnover_fact] PRIMARY KEY CLUSTERED 
(
	[labour_turnover_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [hris].[labour_turnover_fact]  WITH CHECK ADD  CONSTRAINT [fk_labour_turnover_fact_month_date_key] FOREIGN KEY([month_date_key])
REFERENCES [hris].[month_dim] ([month_key])
GO

ALTER TABLE [hris].[labour_turnover_fact] CHECK CONSTRAINT [fk_labour_turnover_fact_month_date_key]
GO

ALTER TABLE [hris].[labour_turnover_fact]  WITH CHECK ADD  CONSTRAINT [fk_labour_turnover_fact_portfolio_key] FOREIGN KEY([portfolio_key])
REFERENCES [hris].[portfolio_dim] ([portfolio_key])
GO

ALTER TABLE [hris].[labour_turnover_fact] CHECK CONSTRAINT [fk_labour_turnover_fact_portfolio_key]
GO

ALTER TABLE [hris].[labour_turnover_fact]  WITH CHECK ADD  CONSTRAINT [fk_labour_turnover_fact_service_stream_key] FOREIGN KEY([service_stream_key])
REFERENCES [hris].[service_stream_dim] ([service_stream_key])
GO

ALTER TABLE [hris].[labour_turnover_fact] CHECK CONSTRAINT [fk_labour_turnover_fact_service_stream_key]
GO


