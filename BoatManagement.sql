
USE [BoatAppDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 02-Oct-18 8:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Role] [varchar](20) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoatInfo]    Script Date: 02-Oct-18 8:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoatInfo](
	[BoatId] [int] IDENTITY(1,1) NOT NULL,
	[BoatName] [varchar](50) NULL,
	[BoatRegNo] [varchar](50) NULL,
	[OwnerName] [varchar](50) NULL,
	[OwnerNidNo] [varchar](50) NULL,
	[OwnerMobileNo] [varchar](50) NULL,
	[StartingTime] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[FinishDate] [varchar](50) NULL,
	[TotalPerson] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BoatInfo] PRIMARY KEY CLUSTERED 
(
	[BoatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fishermans]    Script Date: 02-Oct-18 8:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fishermans](
	[FishermanId] [int] IDENTITY(1,1) NOT NULL,
	[FishermanName] [varchar](50) NULL,
	[FishermanMobileNo] [varchar](50) NULL,
	[BoatId] [int] NULL,
 CONSTRAINT [PK_Fishermans] PRIMARY KEY CLUSTERED 
(
	[FishermanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sailors]    Script Date: 02-Oct-18 8:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sailors](
	[SailorId] [int] IDENTITY(1,1) NOT NULL,
	[SailorName] [varchar](50) NULL,
	[SailorMobileNo] [varchar](50) NULL,
	[BoatId] [int] NULL,
 CONSTRAINT [PK_Sailors] PRIMARY KEY CLUSTERED 
(
	[SailorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 02-Oct-18 8:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolunteerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[VolunteerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fishermans]  WITH CHECK ADD  CONSTRAINT [FK_Fishermans_BoatInfo] FOREIGN KEY([BoatId])
REFERENCES [dbo].[BoatInfo] ([BoatId])
GO
ALTER TABLE [dbo].[Fishermans] CHECK CONSTRAINT [FK_Fishermans_BoatInfo]
GO
ALTER TABLE [dbo].[Sailors]  WITH CHECK ADD  CONSTRAINT [FK_Sailors_BoatInfo] FOREIGN KEY([BoatId])
REFERENCES [dbo].[BoatInfo] ([BoatId])
GO
ALTER TABLE [dbo].[Sailors] CHECK CONSTRAINT [FK_Sailors_BoatInfo]
GO
