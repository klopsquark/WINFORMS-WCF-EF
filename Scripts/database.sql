
CREATE DATABASE [LeaveSample]

USE [LeaveSample]
GO
/****** Object:  Table [dbo].[Leaves]    Script Date: 6/6/2013 3:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Leaves](
	[LeaveID] [bigint] IDENTITY(1,1) NOT NULL,
	[CorrelationID] [uniqueidentifier] NULL,
	[Category] [tinyint] NULL,
	[Employee] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[Duration] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[IsCompleted] [bit] NULL,
	[Remarks] [varchar](255) NULL,
	[DateSubmitted] [datetime] NULL,
 CONSTRAINT [PK_Leaves] PRIMARY KEY CLUSTERED 
(
	[LeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveStatusLogs]    Script Date: 6/6/2013 3:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveStatusLogs](
	[LogID] [bigint] IDENTITY(1,1) NOT NULL,
	[LeaveID] [bigint] NULL,
	[Status] [tinyint] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_LeaveStatusLogs] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LeaveStatusLogs]  WITH CHECK ADD  CONSTRAINT [FK_LeaveStatusLogs_Leaves] FOREIGN KEY([LeaveID])
REFERENCES [dbo].[Leaves] ([LeaveID])
GO
ALTER TABLE [dbo].[LeaveStatusLogs] CHECK CONSTRAINT [FK_LeaveStatusLogs_Leaves]
GO
