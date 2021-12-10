USE [antri]
GO

CREATE TABLE [dbo].[sequences](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NOT NULL,
	[status] [nchar](10) NOT NULL,
	[station] [nchar](32) NULL,
	[post] [nchar](32) NOT NULL,
	[source] [nchar](32) NULL,
	[date] [date] NOT NULL,
	[starttime] [datetime] NOT NULL,
	[calltime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[call2time] [datetime] NULL,
 CONSTRAINT [PK_sequences] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[sequences] ADD  DEFAULT (N'WAITING') FOR [status]
GO

ALTER TABLE [dbo].[sequences] ADD  CONSTRAINT [DF_sequences_date]  DEFAULT (getdate()) FOR [date]
GO

ALTER TABLE [dbo].[sequences] ADD  DEFAULT (getdate()) FOR [starttime]
GO


