CREATE TABLE extract_comcare.[FC_Transaction_Type](
	[FC_Transaction_Type_ID] [tinyint] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Statement_Display_Order] [int] NULL,
	[Print_Statement_If_Transaction_Present] [bit] NULL,
	[Print_On_Statement] [bit] NULL,
	[Transaction_Type_Category_Code] [varchar](6) NULL,
 CONSTRAINT [PK_FC_TRANSACTION_TYPE] PRIMARY KEY CLUSTERED 
(
	[FC_Transaction_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO