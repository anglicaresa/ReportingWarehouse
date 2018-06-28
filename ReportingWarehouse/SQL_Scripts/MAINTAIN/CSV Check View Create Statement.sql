USE [DWHB]
GO

/****** Object:  View [management].[v_csv_check]    Script Date: 21/06/2018 1:53:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [management].[v_csv_check]
as
SELECT top 1 left(checktime,10) as checkDate, count(ID) as [count]
  FROM [DWHB].[management].[CSVCheckLog]
  group by left(checktime,10)
  order by checkDate desc
GO


