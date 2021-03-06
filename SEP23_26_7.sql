USE [master]
GO
/****** Object:  Database [SEP23Team7]    Script Date: 26/7/2020 1:18:27 AM ******/
CREATE DATABASE [SEP23Team7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SEP23Team7', FILENAME = N'/var/opt/mssql/data/SEP23Team7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SEP23Team7_log', FILENAME = N'/var/opt/mssql/data/SEP23Team7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SEP23Team7] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SEP23Team7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SEP23Team7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SEP23Team7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SEP23Team7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SEP23Team7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SEP23Team7] SET ARITHABORT OFF 
GO
ALTER DATABASE [SEP23Team7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SEP23Team7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SEP23Team7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SEP23Team7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SEP23Team7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SEP23Team7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SEP23Team7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SEP23Team7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SEP23Team7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SEP23Team7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SEP23Team7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SEP23Team7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SEP23Team7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SEP23Team7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SEP23Team7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SEP23Team7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SEP23Team7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SEP23Team7] SET RECOVERY FULL 
GO
ALTER DATABASE [SEP23Team7] SET  MULTI_USER 
GO
ALTER DATABASE [SEP23Team7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SEP23Team7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SEP23Team7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SEP23Team7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SEP23Team7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SEP23Team7] SET QUERY_STORE = OFF
GO
USE [SEP23Team7]
GO
/****** Object:  User [SEP23Team7]    Script Date: 26/7/2020 1:18:27 AM ******/
CREATE USER [SEP23Team7] FOR LOGIN [SEP23Team7] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [SEP23Team7]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](128) NULL,
	[FullName] [nvarchar](128) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](128) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Gender] [bit] NULL,
	[UserId] [nvarchar](128) NULL,
	[DepartmentDisplay] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[PhoneNumber] [nvarchar](256) NOT NULL,
	[Introduction] [nvarchar](max) NULL,
	[Website] [nvarchar](100) NULL,
	[NumberOfMembers] [bigint] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Introduction] [nvarchar](max) NULL,
	[UserMainAssign] [nvarchar](max) NULL,
	[UserMainAssignDisplay] [nvarchar](max) NULL,
 CONSTRAINT [PK_Deparment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileAttachment]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileAttachment](
	[FileId] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[FileUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileAttachment] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MissionInforLeader]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MissionInforLeader](
	[MisionId] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[GroupInfor] [nvarchar](max) NULL,
	[LeaderStaff] [nvarchar](128) NULL,
 CONSTRAINT [PK_MissionInforLeader] PRIMARY KEY CLUSTERED 
(
	[MisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MissionMember]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MissionMember](
	[MissionId] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MissionMember] PRIMARY KEY CLUSTERED 
(
	[MissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Missions]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Missions](
	[Id] [uniqueidentifier] NOT NULL,
	[MissionName] [nvarchar](max) NULL,
	[MissionInfor] [nvarchar](max) NULL,
	[CreatorId] [nvarchar](128) NOT NULL,
	[DateCreate] [datetime] NULL,
	[DateDeadLine] [datetime] NULL,
	[DateStart] [datetime] NULL,
	[DateSubmit] [datetime] NULL,
	[Priority] [int] NULL,
	[Proportion] [int] NULL,
	[Status] [int] NULL,
	[Acceptance] [nvarchar](max) NULL,
 CONSTRAINT [PK_Missions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Assignedto] [nvarchar](50) NOT NULL,
	[DayCreated] [datetime] NOT NULL,
	[DayEnd] [datetime] NOT NULL,
	[Priority] [int] NULL,
	[Status] [int] NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[DayStart] [datetime] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MissionId] [uniqueidentifier] NULL,
	[SubTaskId] [uniqueidentifier] NULL,
	[Acceptance] [nvarchar](max) NULL,
	[Proportion] [int] NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskManage]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskManage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserId] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Rate] [float] NULL,
	[Priority] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaskManage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOfMission]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOfMission](
	[UserId] [nvarchar](128) NOT NULL,
	[MissionId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserOfMission] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersOfDepartments]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersOfDepartments](
	[UserId] [nvarchar](128) NOT NULL,
	[DepartmentId] [nvarchar](128) NOT NULL,
	[DateGetIn] [datetime] NULL,
 CONSTRAINT [PK_UsersOfDepartments] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOfFile]    Script Date: 26/7/2020 1:18:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOfFile](
	[TaskId] [uniqueidentifier] NULL,
	[FileId] [uniqueidentifier] NULL,
	[WOFId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_WorkOfFile] PRIMARY KEY CLUSTERED 
(
	[WOFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (4, NULL, N'Huỳnh Phú Tài', N'taihuynh5@vanlanguni.vn', N'huynhphutai123', N'Gò Vấp', N'0123456789', NULL, N'c71f5a38-b4c2-43a5-bf16-f9e4e1ba7c75', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (6, NULL, N'Huỳnh Võ Hoàng Huynh', N'HuynhVo@vanlanguni.vn', N'huynhphutai', N'82/23 XVNT, Q.BT, TP.HCM', N'0989657453', 1, N'425267e0-9360-4284-a45c-553194fd4666', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (7, NULL, N'Trang Quốc Dương', N'duong@vanlanguni.vn', N'trangquocduong123', NULL, N'2211221244', NULL, N'33bdc385-0e41-4a80-9ce6-ed92739c8205', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (11, NULL, N'Huỳnh Phước Thiện', N'hienanh2829@gmail.com', N'123123aA', NULL, N'0765458577', 1, N'b7a5c8f7-f517-4ab7-a035-73842a6b63cc', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (23, NULL, N'Lê Quang Minh', N'minh.t172642@vanlanguni.vn', N'Minh0511363888', NULL, N'0788398030', NULL, N'dd8ee30c-312f-4588-991c-ea790deda440', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (24, NULL, N'Kiet Mai', N'kietmai@vanlanguni.vn', N'123456', NULL, N'0987654321', 1, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (26, NULL, N'Huỳnh Thiện', N'thien2829@gmail.com', N'123123aA', N'220/10 Tô Ngọc Vân, Quận 12', N'0765458577', 1, N'9fefc176-5dcc-4525-9cdb-29eb1d5e5c36', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (27, NULL, N'Huỳnh Phước Thiện 1', N'thienanh@gmail.com', N'123123aA', N'220/10 Tô Ngọc Vân, Quận 12', N'0765458577', 1, N'8c4d3681-406f-45c2-91bd-ca9eb84101b8', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [FullName], [Email], [Password], [Address], [PhoneNumber], [Gender], [UserId], [DepartmentDisplay]) VALUES (28, NULL, N'Lê Quang Minh', N'minhle123@vanlanguni.vn', N'minh12345', NULL, NULL, NULL, N'53036a60-1ba1-42e8-b74e-a294c156014f', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Leader', N'Leader')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Member', N'Member')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Owner', N'Owner')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', N'Owner')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'33bdc385-0e41-4a80-9ce6-ed92739c8205', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'425267e0-9360-4284-a45c-553194fd4666', N'Owner')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'53036a60-1ba1-42e8-b74e-a294c156014f', N'Member')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8c4d3681-406f-45c2-91bd-ca9eb84101b8', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9fefc176-5dcc-4525-9cdb-29eb1d5e5c36', N'Leader')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b7a5c8f7-f517-4ab7-a035-73842a6b63cc', N'Owner')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c71f5a38-b4c2-43a5-bf16-f9e4e1ba7c75', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dd8ee30c-312f-4588-991c-ea790deda440', N'Member')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', N'kietmai@vanlanguni.vn', N'kietmai@vanlanguni.vn', 0, N'AL4rQTGewlXUDdd9o7r2JVcuVRPUYBq3t6/fx/NOqXpCLD3SBb/rwcgcFs8NGCwvHw==', N'd5138e40-4035-45e4-ad28-2b90a62610f1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'33bdc385-0e41-4a80-9ce6-ed92739c8205', N'duong@vanlanguni.vn', N'duong@vanlanguni.vn', 0, N'AI1caKOZx8iVNSEDAt6ho3DMXdJFJgu1YODxe1IpGJyhyph4c1p8JsUkV9a7krUTlg==', N'22ade564-1419-4624-95e7-4aada8321728', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'425267e0-9360-4284-a45c-553194fd4666', N'HuynhVo@vanlanguni.vn', N'HuynhVo@vanlanguni.vn', 0, N'AIChqOBZpcRio2J5uBxm9Ostxme4yjHCzvZpv/T5t5Um7qvofNQMMOOQb3qMsX017w==', N'5475db36-01c7-49ba-ba1b-491e016eac96', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53036a60-1ba1-42e8-b74e-a294c156014f', N'minhle123@vanlanguni.vn', N'minhle123@vanlanguni.vn', 0, N'ABM+3gENH9G1THfQFuB70bz6rZdHXZGCDVxdHkiQn1ir8AMM4IWb1hOTDK+RUCmkRA==', N'a51a9c5f-210a-4a77-bfc8-3eda37a2600a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8c4d3681-406f-45c2-91bd-ca9eb84101b8', N'thienanh@gmail.com', N'thienanh@gmail.com', 0, N'AHR15X0QfWmcq/1tF58IabhYNWvtPAeHb59OWVSfKhDtlXVnJGLJ5PjMm77/itVfUw==', N'd84aff3f-c8b6-48fa-ac3b-06137de799a2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9fefc176-5dcc-4525-9cdb-29eb1d5e5c36', N'thien2829@gmail.com', N'thien2829@gmail.com', 0, N'AGBKqO4lCdKQ9GeqcV2fCcxM/BlAmNm0t6PtD3yzfz+pMV8HlRSwoD25VBWscCbZZg==', N'cb904c7b-64e0-4afb-a2a9-f877f3202214', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b7a5c8f7-f517-4ab7-a035-73842a6b63cc', N'hienanh2829@gmail.com', N'hienanh2829@gmail.com', 0, N'AJc4YWHr5zXa8HPrV6O62Qp3UQ6krt2oUP2juPcosd0nZQEWla+IarGbwYu/eGuFZw==', N'8f23ae7e-e565-4945-9378-fae23f08c8ad', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c71f5a38-b4c2-43a5-bf16-f9e4e1ba7c75', N'taihuynh5@vanlanguni.vn', N'taihuynh5@vanlanguni.vn', 0, N'AIYsxFY8j9ETib5EOqndEx+m5UV1MHEaRrP0RM9nlKjt8yjmLAEOq0P0MCxHbRvQJA==', N'5f095dd8-4c28-4a88-a547-aeaf77f65e36', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dd8ee30c-312f-4588-991c-ea790deda440', N'minh.t172642@vanlanguni.vn', N'minh.t172642@vanlanguni.vn', 0, N'AILXTDvKviypzOqDhqfPwHi67rpnF/jvSvT52KBG4qeKZe78zKY7yzLO4AZyppWD/g==', N'6be79575-18f4-4816-af73-11d37ec62985', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Department] ([Id], [Name], [Introduction], [UserMainAssign], [UserMainAssignDisplay]) VALUES (N'42d45635-6eb8-4edc-968a-a01fba71e573', N'Cục đá ', N'hahaa', N'33bdc385-0e41-4a80-9ce6-ed92739c8205', NULL)
INSERT [dbo].[Department] ([Id], [Name], [Introduction], [UserMainAssign], [UserMainAssignDisplay]) VALUES (N'dee39447-b660-4efc-8bde-7a8de1a3bee1', N'Cục súc', N'kkk', N'c71f5a38-b4c2-43a5-bf16-f9e4e1ba7c75', NULL)
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'2eb575db-5722-4f36-b093-19e84c7c87cd', N'KPI_nCoV_TestPlan_Ver0.1', N'.docx', N'UpLoadedFiles/KPI_nCoV_TestPlan_Ver0.1.docx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'509b6ec2-83b3-483d-b0cc-2fad022d921e', N'KPI_nCoV_ProcessDecision_Ver1.0.docx', N'.docx', N'UpLoadedFiles/KPI_nCoV_ProcessDecision_Ver1.0.docx.docx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'1613318f-97f2-4b24-b7c9-52e63dc979aa', N'KPI_nCoV_ReleasePlan_Ver0.3', N'.xlsx', N'UpLoadedFiles/KPI_nCoV_ReleasePlan_Ver0.3.xlsx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'1c4d46d9-2cf8-4de6-b3db-6ffe6c4ab210', N'KPI_nCoV_TeamCharter_Ver1.2', N'.docx', N'UpLoadedFiles/KPI_nCoV_TeamCharter_Ver1.2.docx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'5c37edaf-6ac3-4959-8aed-76b16c0ed9f3', N'KPI_nCoV_ProcessDecision_Ver1.0.docx', N'.docx', N'UpLoadedFiles/KPI_nCoV_ProcessDecision_Ver1.0.docx.docx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'87ee4dcd-93bc-42c8-b5d5-de3612141eec', N'KPI_nCoV_ProcessDecision_Ver1.0.docx', N'.docx', N'UpLoadedFiles/KPI_nCoV_ProcessDecision_Ver1.0.docx.docx')
INSERT [dbo].[FileAttachment] ([FileId], [FileName], [FileType], [FileUrl]) VALUES (N'132dd0ce-795c-4f56-a308-f5f4c0756195', N'KPI_nCoV_TeamCharter_Ver1.2', N'.docx', N'UpLoadedFiles/KPI_nCoV_TeamCharter_Ver1.2.docx')
INSERT [dbo].[MissionInforLeader] ([MisionId], [GroupName], [GroupInfor], [LeaderStaff]) VALUES (N'6efffe82-e216-4d97-a335-71497227a221', NULL, NULL, N'425267e0-9360-4284-a45c-553194fd4666')
INSERT [dbo].[MissionInforLeader] ([MisionId], [GroupName], [GroupInfor], [LeaderStaff]) VALUES (N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', NULL, NULL, N'425267e0-9360-4284-a45c-553194fd4666')
INSERT [dbo].[MissionMember] ([MissionId], [TaskId]) VALUES (N'6efffe82-e216-4d97-a335-71497227a221', NULL)
INSERT [dbo].[MissionMember] ([MissionId], [TaskId]) VALUES (N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', NULL)
INSERT [dbo].[Missions] ([Id], [MissionName], [MissionInfor], [CreatorId], [DateCreate], [DateDeadLine], [DateStart], [DateSubmit], [Priority], [Proportion], [Status], [Acceptance]) VALUES (N'6efffe82-e216-4d97-a335-71497227a221', N'Khảo sát quy trình khuyến khích sinh viên học nhóm', N'Khảo sát quy trình khuyến khích sinh viên học nhóm của trường Văn Lang. Học nhóm cần dược tổ chức kịp thời. Và tổ chức ngoài trời!!!', N'33bdc385-0e41-4a80-9ce6-ed92739c8205', CAST(N'2020-06-20T20:53:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Missions] ([Id], [MissionName], [MissionInfor], [CreatorId], [DateCreate], [DateDeadLine], [DateStart], [DateSubmit], [Priority], [Proportion], [Status], [Acceptance]) VALUES (N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', N'Trao học bổng cho sinh viên có thành tích tốt', N'Trao học bổng cho sinh viên có thành tích tốt khuyến khích sinh viên của trường Văn Lang. ', N'33bdc385-0e41-4a80-9ce6-ed92739c8205', CAST(N'2020-06-30T21:07:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), CAST(N'2020-06-30T21:07:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'baeb0769-5206-4e52-af4b-0e51309111a7', N'Khoa Nguyên Lý Cơ Bản', N'Cho thằng Khôi khùng', CAST(N'2020-07-15T12:18:00.000' AS DateTime), CAST(N'2020-07-25T12:18:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-25T12:18:00.000' AS DateTime), N'Làm chgo lẹ di, không là cho nhịn đói', N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', N'baeb0769-5206-4e52-af4b-0e51309111a7', NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'144c1705-a0d9-49f0-ae35-63c6c081df0c', N'Gửi Email cho sinh viên', N'Cho thằng Khôi khùng', CAST(N'2020-07-14T13:49:00.000' AS DateTime), CAST(N'2020-07-25T13:49:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-31T13:49:00.000' AS DateTime), N'Gửi Email cho tất cả các sinh viên cần thết, phải gửi luôn cho hiệu trưởng danh sách sinh viên', NULL, NULL, NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'91c4fdb4-fcce-4932-a252-98ec6ad419f5', N'Đi tập hợp học sinh sinh viên', N'Cho thằng Khôi khùng', CAST(N'2020-07-09T12:29:00.000' AS DateTime), CAST(N'2020-07-15T12:29:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-08-01T12:29:00.000' AS DateTime), NULL, N'6efffe82-e216-4d97-a335-71497227a221', N'baeb0769-5206-4e52-af4b-0e51309111a7', NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'dde769b3-b17b-4385-be67-9e1352666470', N'thien', N'Thien', CAST(N'2020-07-01T13:18:00.000' AS DateTime), CAST(N'2020-07-03T13:18:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-25T13:18:00.000' AS DateTime), N'11215646', N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', NULL, NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'6bcd63cd-e513-483e-b9e3-a06a4b3e176d', N'Khoa Triết học', N'Cho thằng Khôi khùng', CAST(N'2020-07-17T12:35:00.000' AS DateTime), CAST(N'2020-07-25T12:35:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-31T12:35:00.000' AS DateTime), NULL, N'6efffe82-e216-4d97-a335-71497227a221', N'baeb0769-5206-4e52-af4b-0e51309111a7', NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'8e1027f5-f564-48b8-b2ef-b8aab82a67d1', N'Bầu các thành viên chủ chốt', N'Cho thằng Khôi khùng', CAST(N'2020-07-09T13:37:00.000' AS DateTime), CAST(N'2020-07-18T16:37:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-25T13:37:00.000' AS DateTime), N'Làm nhanh, xong trong ngày, không là cho nhịn đói nguyên tuần', NULL, NULL, NULL, NULL)
INSERT [dbo].[Task] ([Id], [Name], [Assignedto], [DayCreated], [DayEnd], [Priority], [Status], [UserId], [DayStart], [Description], [MissionId], [SubTaskId], [Acceptance], [Proportion]) VALUES (N'd9271af8-5e9a-4537-a33c-e6cc755c4433', N'Khoa Nguyên Lý Cơ Bản', N'Cho thằng Khôi khùng', CAST(N'2020-07-16T12:34:00.000' AS DateTime), CAST(N'2020-07-18T12:34:00.000' AS DateTime), NULL, NULL, N'0eff6ea0-2d98-4d06-ab2a-2e0579cd428d', CAST(N'2020-07-25T12:34:00.000' AS DateTime), NULL, N'7ab0d7e0-5415-4e36-9cf0-bf042002b463', N'baeb0769-5206-4e52-af4b-0e51309111a7', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaskManage] ON 

INSERT [dbo].[TaskManage] ([Id], [Name], [CreatedDate], [StartDate], [EndDate], [UserId], [Description], [Rate], [Priority], [Status]) VALUES (1, N'Test', CAST(N'2020-07-25T23:51:16.000' AS DateTime), NULL, NULL, N'33bdc385-0e41-4a80-9ce6-ed92739c8205', N'Test Description', NULL, N'Low', N'Todo')
SET IDENTITY_INSERT [dbo].[TaskManage] OFF
INSERT [dbo].[WorkOfFile] ([TaskId], [FileId], [WOFId]) VALUES (N'd9271af8-5e9a-4537-a33c-e6cc755c4433', NULL, N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[WorkOfFile] ([TaskId], [FileId], [WOFId]) VALUES (N'd9271af8-5e9a-4537-a33c-e6cc755c4433', N'1c4d46d9-2cf8-4de6-b3db-6ffe6c4ab210', N'59296cea-023b-432f-ba14-278c698921ae')
INSERT [dbo].[WorkOfFile] ([TaskId], [FileId], [WOFId]) VALUES (N'd9271af8-5e9a-4537-a33c-e6cc755c4433', N'509b6ec2-83b3-483d-b0cc-2fad022d921e', N'fe37d6a0-041c-4234-9a04-77f1b671b29c')
INSERT [dbo].[WorkOfFile] ([TaskId], [FileId], [WOFId]) VALUES (N'd9271af8-5e9a-4537-a33c-e6cc755c4433', N'132dd0ce-795c-4f56-a308-f5f4c0756195', N'd9271af8-5e9a-4537-a33c-e6cc755c4133')
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[MissionInforLeader]  WITH CHECK ADD  CONSTRAINT [FK_MissionInforLeader_AspNetUsers] FOREIGN KEY([LeaderStaff])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MissionInforLeader] CHECK CONSTRAINT [FK_MissionInforLeader_AspNetUsers]
GO
ALTER TABLE [dbo].[MissionInforLeader]  WITH CHECK ADD  CONSTRAINT [FK_MissionInforLeader_MissionMember] FOREIGN KEY([MisionId])
REFERENCES [dbo].[MissionMember] ([MissionId])
GO
ALTER TABLE [dbo].[MissionInforLeader] CHECK CONSTRAINT [FK_MissionInforLeader_MissionMember]
GO
ALTER TABLE [dbo].[MissionInforLeader]  WITH CHECK ADD  CONSTRAINT [FK_MissionInforLeader_Missions] FOREIGN KEY([MisionId])
REFERENCES [dbo].[Missions] ([Id])
GO
ALTER TABLE [dbo].[MissionInforLeader] CHECK CONSTRAINT [FK_MissionInforLeader_Missions]
GO
ALTER TABLE [dbo].[Missions]  WITH CHECK ADD  CONSTRAINT [FK_Missions_AspNetUsers] FOREIGN KEY([CreatorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Missions] CHECK CONSTRAINT [FK_Missions_AspNetUsers]
GO
ALTER TABLE [dbo].[Missions]  WITH CHECK ADD  CONSTRAINT [FK_Missions_MissionMember] FOREIGN KEY([Id])
REFERENCES [dbo].[MissionMember] ([MissionId])
GO
ALTER TABLE [dbo].[Missions] CHECK CONSTRAINT [FK_Missions_MissionMember]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_AspNetUsers]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_MissionMember] FOREIGN KEY([MissionId])
REFERENCES [dbo].[MissionMember] ([MissionId])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_MissionMember]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Task1] FOREIGN KEY([SubTaskId])
REFERENCES [dbo].[Task] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Task1]
GO
ALTER TABLE [dbo].[UserOfMission]  WITH CHECK ADD  CONSTRAINT [FK_UserOfMission_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserOfMission] CHECK CONSTRAINT [FK_UserOfMission_AspNetUsers]
GO
ALTER TABLE [dbo].[WorkOfFile]  WITH CHECK ADD  CONSTRAINT [FK_WorkOfFile_FileAttachment] FOREIGN KEY([FileId])
REFERENCES [dbo].[FileAttachment] ([FileId])
GO
ALTER TABLE [dbo].[WorkOfFile] CHECK CONSTRAINT [FK_WorkOfFile_FileAttachment]
GO
ALTER TABLE [dbo].[WorkOfFile]  WITH CHECK ADD  CONSTRAINT [FK_WorkOfFile_Task] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Task] ([Id])
GO
ALTER TABLE [dbo].[WorkOfFile] CHECK CONSTRAINT [FK_WorkOfFile_Task]
GO
USE [master]
GO
ALTER DATABASE [SEP23Team7] SET  READ_WRITE 
GO
