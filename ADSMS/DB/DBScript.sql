USE [master]
GO
/****** Object:  Database [stationery]    Script Date: 03/20/2014 18:45:55 ******/
CREATE DATABASE [stationery] ON  PRIMARY 
( NAME = N'stationery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\stationery.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'stationery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\stationery_log.ldf' , SIZE = 10176KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [stationery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stationery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stationery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [stationery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [stationery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [stationery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [stationery] SET ARITHABORT OFF
GO
ALTER DATABASE [stationery] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [stationery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [stationery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [stationery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [stationery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [stationery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [stationery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [stationery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [stationery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [stationery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [stationery] SET  DISABLE_BROKER
GO
ALTER DATABASE [stationery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [stationery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [stationery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [stationery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [stationery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [stationery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [stationery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [stationery] SET  READ_WRITE
GO
ALTER DATABASE [stationery] SET RECOVERY FULL
GO
ALTER DATABASE [stationery] SET  MULTI_USER
GO
ALTER DATABASE [stationery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [stationery] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'stationery', N'ON'
GO
USE [stationery]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 03/20/2014 18:45:55 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[role]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[role] ([RoleID], [RoleName]) VALUES (1, N'Store Manager')
INSERT [dbo].[role] ([RoleID], [RoleName]) VALUES (2, N'Store Supervisor')
INSERT [dbo].[role] ([RoleID], [RoleName]) VALUES (3, N'Store Clerk')
INSERT [dbo].[role] ([RoleID], [RoleName]) VALUES (4, N'Department Head')
INSERT [dbo].[role] ([RoleID], [RoleName]) VALUES (5, N'Department Employee')
/****** Object:  Table [dbo].[supplier]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierContactName] [nvarchar](50) NOT NULL,
	[SupplierContactNumber] [int] NOT NULL,
	[SupplierContactAddress] [nvarchar](max) NOT NULL,
	[SupplierFax] [int] NOT NULL,
	[SupplierGSTRegNumber] [nvarchar](50) NOT NULL,
	[SupplierEmail] [nvarchar](100) NOT NULL,
	[SupplierCollectionPointID] [int] NOT NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[supplier] ON
INSERT [dbo].[supplier] ([SupplierID], [SupplierCode], [SupplierName], [SupplierContactName], [SupplierContactNumber], [SupplierContactAddress], [SupplierFax], [SupplierGSTRegNumber], [SupplierEmail], [SupplierCollectionPointID]) VALUES (1, N'ALPA', N'ALPHA Office Supplies', N'Ms Irene Tan', 4619928, N'Blk 1128, Ang Mo Kio Industrial Park #02-1108 Ang Mo Kio Street 62 Singapore 622262', 4612238, N'MR-8500440-2', N'alpa@alpa.com', 1)
INSERT [dbo].[supplier] ([SupplierID], [SupplierCode], [SupplierName], [SupplierContactName], [SupplierContactNumber], [SupplierContactAddress], [SupplierFax], [SupplierGSTRegNumber], [SupplierEmail], [SupplierCollectionPointID]) VALUES (3, N'CHEP', N'Cheap Stationer', N'Mr Soh Kway Koh', 3543234, N'Blk 34, Clementi Road #07-02 Ban Ban Soh Building Singapore 110525', 4742434, N'Nil', N'chep@chep.com', 2)
INSERT [dbo].[supplier] ([SupplierID], [SupplierCode], [SupplierName], [SupplierContactName], [SupplierContactNumber], [SupplierContactAddress], [SupplierFax], [SupplierGSTRegNumber], [SupplierEmail], [SupplierCollectionPointID]) VALUES (4, N'BANE', N'BANES Shop', N'Mr Loh Ah Pek', 4781234, N'Blk 124, Alexandra Road #03-04 Banes Building Singapore 550315', 4792434, N'MR-8200420-2', N'bane@bane.com', 3)
INSERT [dbo].[supplier] ([SupplierID], [SupplierCode], [SupplierName], [SupplierContactName], [SupplierContactNumber], [SupplierContactAddress], [SupplierFax], [SupplierGSTRegNumber], [SupplierEmail], [SupplierCollectionPointID]) VALUES (5, N'OMEG', N'OMEGA Stationery Supplier', N'Mr Ronnie Ho', 7671233, N'Blk 11, Hillview Avenue #03-04, Singapore 679036', 7671234, N'MR-85555330-1', N'omeg@omeg.com', 4)
SET IDENTITY_INSERT [dbo].[supplier] OFF
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'c9423020-a0ca-4d48-94af-6a1d168147d0', NULL)
/****** Object:  Table [dbo].[collectionPoint]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collectionPoint](
	[CollectionPointID] [int] NOT NULL,
	[CollectionPointName] [nvarchar](50) NOT NULL,
	[CollectionPointAddress] [nvarchar](max) NOT NULL,
	[CollectionPointTime] [nvarchar](50) NULL,
	[CollectionPointDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_CollectionPoint] PRIMARY KEY CLUSTERED 
(
	[CollectionPointID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (1, N'Main Collection Point NUS', N'Eusoff Hall, 25 Heng Mui Keng Terrace, Singapore-119615', N'9:00AM', N'27/3/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (2, N'School of Engineering', N'Block E5 #02-09 Engineering Drive Singapore 117576', N'9:10AM', N'24/03/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (3, N'School of Computing', N'13 Computing Drive Singapore 117417', N'9:20AM', N'24/03/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (4, N'School of Life Sciences', N'Life Sciences Drive Singapore 117576', N'9:30AM', N'24/03/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (5, N'School of Media Studies', N'Block D8 #04-01 Media Studies Drive Singapore 117576', N'9:45AM', N'24/03/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (6, N'School of Biology', N'Block B1 #09-02 Biology Drive Singapore 117576', N'10:00AM', N'24/3/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (8, N'School of Business', N'NUS Business School Singapore 119245', N'10:10AM', N'24/3/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (9, N'School of Radiotherapy', N'Block G2 #01-01 Radiotherapy Drive Singapore 117576', N'10:20AM', N'24/03/2014')
INSERT [dbo].[collectionPoint] ([CollectionPointID], [CollectionPointName], [CollectionPointAddress], [CollectionPointTime], [CollectionPointDate]) VALUES (10, N'School of Psychology', N'Block P1 #07-05 Psychology Drive Singapore 117576', N'10:30AM', N'24/03/2014')
/****** Object:  Table [dbo].[category]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (1, N'Clip')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (2, N'Envelope')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (3, N'Eraser')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (4, N'Exercise')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (5, N'File')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (6, N'Pen')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (7, N'Hole Puncher')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (8, N'Pad')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (9, N'Paper')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (10, N'Ruler')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (11, N'Scissors')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (12, N'Tape')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (13, N'Sharpener')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (14, N'Shorthand')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (15, N'Stapler')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (16, N'Tacks')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (17, N'Transparency')
INSERT [dbo].[category] ([CategoryID], [CategoryName]) VALUES (18, N'Tray')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[bin]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bin](
	[BinID] [int] IDENTITY(1,1) NOT NULL,
	[BinNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_bin] PRIMARY KEY CLUSTERED 
(
	[BinID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bin] ON
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (1, N'A1')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (2, N'A5')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (3, N'A3')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (4, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (6, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (7, N'A7')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (8, N'A8')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (9, N'A9')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (10, N'A10')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (11, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (14, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (15, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (16, N'A5')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (17, N'A7')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (18, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (19, N'A1')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (20, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (21, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (22, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (23, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (24, N'A2')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (25, N'A3')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (26, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (27, N'A5')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (28, N'A3')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (29, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (30, N'A3')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (31, N'A2')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (32, N'A5')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (33, N'A6')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (34, N'A2')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (35, N'A4')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (36, N'A9')
INSERT [dbo].[bin] ([BinID], [BinNumber]) VALUES (37, N'A4')
SET IDENTITY_INSERT [dbo].[bin] OFF
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'157ee981-4fc4-4e50-a5dd-89c9fb9e6ec9', N'ada@gmail.com', N'ada@gmail.com', NULL, 0, CAST(0x0000A2F400349551 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'45529eec-2478-44b5-854c-a1c685d42212', N'ashwin@gmail.com', N'ashwin@gmail.com', NULL, 0, CAST(0x0000A2F400628175 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'505b771b-17b5-4e13-919e-4ca8919a75a5', N'barney@gmail.com', N'barney@gmail.com', NULL, 0, CAST(0x0000A2F300CA0B57 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'f60ebad7-c484-4ed5-95ae-978e7c4945af', N'F60EBAD7-C484-4ED5-95AE-978E7C4945AF', N'F60EBAD7-C484-4ED5-95AE-978E7C4945AF', NULL, 0, CAST(0x0000A2F100E3B4BB AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'44c462e7-290e-408a-a170-a4a1b2b9a0d6', N'frank@gmail.com', N'frank@gmail.com', NULL, 0, CAST(0x0000A2F300C8DE71 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'3a657850-71e1-4a06-9986-de18a69598ca', N'fred@gmail.com', N'fred@gmail.com', NULL, 0, CAST(0x0000A2F300CAFEBB AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'cb198657-ac57-4439-be32-062cd9e658ec', N'gab@gmail.com', N'gab@gmail.com', NULL, 0, CAST(0x0000A2F40063FF01 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'593281e3-ca03-4891-8c1b-1ed6486f3e62', N'gong@gmail.com', N'gong@gmail.com', NULL, 0, CAST(0x0000A2F400986884 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'7b7e281f-c6ae-4f87-9f80-c74e113d2d70', N'hsmaheen@gmail.com', N'hsmaheen@gmail.com', NULL, 0, CAST(0x0000A2F4009984C2 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'08d7fe01-af0f-4246-9402-6b5300035fee', N'huang@gmail.com', N'huang@gmail.com', NULL, 0, CAST(0x0000A2F400287392 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'f145e848-3071-4839-a961-1cc7324dad88', N'jack@gmail.com', N'jack@gmail.com', NULL, 0, CAST(0x0000A2ED00D2A62C AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e4b8f301-ec84-4d6b-bee0-d09fe01b9962', N'jas@gmail.com', N'jas@gmail.com', NULL, 0, CAST(0x0000A2F40062D9AC AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e4b4278f-763a-44ad-9551-36bb938a3dde', N'jenny@gmail.com', N'jenny@gmail.com', NULL, 0, CAST(0x0000A2F300C923EC AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'cb8596d3-8e12-4e18-971c-8c6018b68749', N'jill@gmail.com', N'jill@gmail.com', NULL, 0, CAST(0x0000A2F300CBC9A0 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a11d8944-42a0-4842-8111-7bf75e4b40f0', N'joey@gmail.com', N'joey@gmail.com', NULL, 0, CAST(0x0000A2F300CB3E3D AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'4bbb7e1e-dae3-4d85-bf58-27c4a8ab28b9', N'john@gmail.com', N'john@gmail.com', NULL, 0, CAST(0x0000A2F300CB7F9B AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'faa8a02c-bce4-466a-a327-2a44b5fdb277', N'mary@gmail.com', N'mary@gmail.com', NULL, 0, CAST(0x0000A2F4000F948E AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'454ec32b-5b6a-4c3d-a5c9-664a72fae112', N'mon@gmail.com', N'mon@gmail.com', NULL, 0, CAST(0x0000A2F300C9C63A AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a490af2c-b688-49f4-b20d-f44c6ca96541', N'pebble@gmail.com', N'pebble@gmail.com', NULL, 0, CAST(0x0000A2ED00D40940 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a00f79cb-3e31-420c-8aa5-4a6622c03a85', N'phoebe@gmail.com', N'phoebe@gmail.com', NULL, 0, CAST(0x0000A2ED00D36C38 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'ef80093e-4c21-4106-9980-c9c7efa3c932', N'rach@gmail.com', N'rach@gmail.com', NULL, 0, CAST(0x0000A2F40058386A AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'3b6f763f-3588-4b0f-a802-7209862b2eac', N'ross@gmail.com', N'ross@gmail.com', NULL, 0, CAST(0x0000A2ED00D346B8 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'6d5b4acd-60db-476c-a799-c3c9356cecc7', N'sachin@gmail.com', N'sachin@gmail.com', NULL, 0, CAST(0x0000A2F4005A77E8 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'254cd1cf-f5ae-4f57-9e27-5af11571a72a', N'seintsanthandarbo88@gmail.com', N'seintsanthandarbo88@gmail.com', NULL, 0, CAST(0x0000A2F40092DE1B AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'd1e73423-f69c-475c-bcbf-f5c5c92cfbbc', N'sus@gmail.com', N'sus@gmail.com', NULL, 0, CAST(0x0000A2F400A4D59E AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'8541e531-8aa4-4477-860a-e402fa6ed1d0', N'wilma@gmail.com', N'wilma@gmail.com', NULL, 0, CAST(0x0000A2F300CA9969 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e1c794a5-fd09-427e-9456-fc2315492d22', N'xie@gmail.com', N'xie@gmail.com', NULL, 0, CAST(0x0000A2F40099A8EF AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[department]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[DepID] [int] IDENTITY(1,1) NOT NULL,
	[DepName] [nvarchar](50) NOT NULL,
	[DepContactName] [nvarchar](50) NOT NULL,
	[DepContactNumber] [int] NOT NULL,
	[DepFax] [int] NOT NULL,
	[DepCollectionPointID] [int] NOT NULL,
	[DepRepName] [nvarchar](50) NULL,
	[DepHeadName] [nvarchar](50) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[DepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[department] ON
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (1, N'Institute of System Sciences', N'Iss (SystemScience)', 12345678, 678965438, 8, N'Gong Sheng Liang', N'Mr Maheen Syed')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (2, N'Department of Civil Engineering', N'Mr Kwa See Mi', 67892342, 678923459, 2, N'Gabriel', N'Mr Joseph See')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (3, N'School of Computing', N'Mr Smith', 66668888, 678978947, 6, N'Frank', N'Ms Eliza Oon')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (5, N'School of Life Sciences', N'Mr Sebastian Chan', 676856419, 634346717, 4, N'Mr Lim Ho Swee', N'Ms Jane Goh')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (7, N'School of Business', N'Ms Fawn Yang', 655534313, 655523450, 9, N'Ms Chan Mui Kong', N'Mr Leo Tan')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (9, N'School of Media Studies', N'Mr Yong Soon Fatt', 651230013, 657112145, 5, N'Mr Long Soon Koh', N'Mr Phillip Poh')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (12, N'School of Psychology', N'Mr Bo Kiat Soh', 659120134, 659001222, 2, N'Ms Lau Ji Bai', N'Mr Huang Xin')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (13, N'School of Radiotherapy', N'Ms Lau Ji Kiong', 655454511, 657879791, 3, N'Ms Fann Wong', N'Ms Zoe Tay')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (15, N'School of Biology', N'Ms Fauziah Ibrahim', 658121345, 659121245, 1, N'Mr Johnson Yeo', N'Ms Rainie Yang')
INSERT [dbo].[department] ([DepID], [DepName], [DepContactName], [DepContactNumber], [DepFax], [DepCollectionPointID], [DepRepName], [DepHeadName]) VALUES (16, N'School of Physics', N'Mr Alaric Tay', 651122345, 659555611, 10, N'Mr Joe Lim', N'Ms Loh Jin Kiat')
SET IDENTITY_INSERT [dbo].[department] OFF
/****** Object:  Table [dbo].[item]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCatID] [int] NOT NULL,
	[ItemDescription] [nvarchar](100) NOT NULL,
	[ItemReOrderLvl] [int] NOT NULL,
	[ItemReOrderQuant] [int] NOT NULL,
	[ItemUOM] [nvarchar](50) NOT NULL,
	[ItemBinID] [int] NOT NULL,
	[ItemQuant] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[item] ON
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (19, 12, N'Scoth Tape', 50, 20, N'Each', 10, 1000)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (20, 13, N'Sharpener', 55, 20, N'Each', 11, 4415)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (24, 14, N'Thumb Tacks Huge', 20, 10, N'Box', 8, 500)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (25, 16, N'Thumb Tacks Large', 100, 10, N'Box', 8, 100)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (26, 1, N'Thumb Tacks Middle', 20, 20, N'Box', 3, 403)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (27, 16, N'Thumb Tacks Small', 30, 30, N'Box', 10, 30)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (29, 11, N'Scissors', 20, 20, N'Each', 14, 899)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (30, 3, N'Eraser(hard)', 40, 50, N'Each', 15, 175)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (31, 2, N'Envelope Brown(3*6) w/Window', 600, 400, N'Each', 16, 663)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (32, 2, N'Envelope Brown(3*6)', 40, 20, N'Box', 17, 275)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (33, 2, N'Envelope Brown(5*7)', 400, 400, N'Each', 18, 600)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (34, 2, N'Envelope Brown(5*7) w/Window', 400, 400, N'Each', 19, 150)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (35, 3, N'Eraser(soft)', 40, 400, N'Each', 20, 31)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (36, 4, N'Exercise Book(100pg)', 400, 50, N'Each', 21, 149)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (37, 4, N'Exercise Book(120pg)', 200, 250, N'Each', 22, 194)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (38, 4, N'Exercise Book A4 Hardcover(100 pg)', 250, 200, N'Each', 23, 400)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (39, 4, N'Exercise Book A4 Hardcover(120 pg)', 300, 200, N'Each', 24, 400)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (40, 5, N'FIle-Blue Plain', 200, 100, N'Each', 25, 500)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (41, 5, N'FIle Separator', 60, 50, N'Set', 26, 20)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (42, 5, N'FIle-Blue with Logo', 150, 150, N'Each', 27, 133)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (43, 5, N'FIle-Brown w/o Logo', 100, 100, N'Each', 4, 170)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (44, 7, N'Hole Puncher 2 holes', 23, 323, N'2323', 29, 23)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (45, 5, N'Folder Plastic Blue', 150, 150, N'Each', 30, 173)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (46, 8, N'Pad Postit Memo 1*2', 100, 100, N'Packet', 31, -168)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (47, 8, N'Pad Postit Memo 0.5*1', 120, 130, N'Packet', 32, 94)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (48, 10, N'Ruler 12', 100, 100, N'Dozen', 33, 60)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (49, 9, N'Paper Photostat A3', 120, 60, N'Box', 34, 117)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (50, 15, N'Stapler No.28', 50, 20, N'Each', 35, 12)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (51, 17, N'Transparency Blue', 200, 200, N'Box', 36, 90)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (52, 18, N'Trays In/Out', 10, 20, N'Set', 37, 1319)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (53, 17, N'Transparency Reverse Blue', 200, 900, N'Box', 2, 100)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (54, 14, N'ShortHand Book (60 pg)', 100, 80, N'Each', 6, 900)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (55, 1, N'ShortHand Book (120 pg)', 100, 80, N'Each', 7, 990)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (56, 8, N'Pad Postit Memo 2*3', 100, 100, N'Each', 1, 200)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (57, 8, N'Pad Postit Memo 2*4', 30, 50, N'Each', 7, 100)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (58, 15, N'Stapler No.36', 200, 100, N'Box', 3, 300)
INSERT [dbo].[item] ([ItemID], [ItemCatID], [ItemDescription], [ItemReOrderLvl], [ItemReOrderQuant], [ItemUOM], [ItemBinID], [ItemQuant]) VALUES (59, 17, N'Transparency Clear', 200, 100, N'Box', 1, 300)
SET IDENTITY_INSERT [dbo].[item] OFF
/****** Object:  StoredProcedure [dbo].[getCategory]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[getCategory]
@CatID nvarchar
As
SET NOCOUNT ON;
select * from category c
where c.CategoryName=@CatID
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'10d2521c-5251-4dc7-9d0d-6df9dd609710', N'Department Employee', N'department employee', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390', N'Department Head', N'department head', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'19ba1d2e-734e-4395-ad98-084a5b14ffe0', N'Store Clerk', N'store clerk', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'354001c3-0171-410a-9be7-81eaebaa3f5c', N'Store Manager', N'store manager', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'cdc80448-f69e-4e2c-a0cb-844cb5ed0075', N'Store Supervisor', N'store supervisor', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[storeemp]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[storeemp](
	[StoreEmpID] [int] IDENTITY(1,1) NOT NULL,
	[StoreEmpName] [nvarchar](50) NOT NULL,
	[StoreEmpContact] [int] NOT NULL,
	[StoreEmpEmail] [nvarchar](100) NOT NULL,
	[StoreEmpRoleID] [int] NOT NULL,
 CONSTRAINT [PK_storeemp] PRIMARY KEY CLUSTERED 
(
	[StoreEmpID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[storeemp] ON
INSERT [dbo].[storeemp] ([StoreEmpID], [StoreEmpName], [StoreEmpContact], [StoreEmpEmail], [StoreEmpRoleID]) VALUES (14, N'Maheen Heer Syed', 86463605, N'hsmaheen@gmail.com', 3)
INSERT [dbo].[storeemp] ([StoreEmpID], [StoreEmpName], [StoreEmpContact], [StoreEmpEmail], [StoreEmpRoleID]) VALUES (15, N'Sasha', 86463604, N'seintsanthandarbo88@gmail.com', 2)
INSERT [dbo].[storeemp] ([StoreEmpID], [StoreEmpName], [StoreEmpContact], [StoreEmpEmail], [StoreEmpRoleID]) VALUES (16, N'Khin Lai Phyo Aung', 86463608, N'khinlaiphyoaung@gmail.com', 1)
INSERT [dbo].[storeemp] ([StoreEmpID], [StoreEmpName], [StoreEmpContact], [StoreEmpEmail], [StoreEmpRoleID]) VALUES (17, N'Sussane', 86463606, N'sus@gmail.com', 3)
INSERT [dbo].[storeemp] ([StoreEmpID], [StoreEmpName], [StoreEmpContact], [StoreEmpEmail], [StoreEmpRoleID]) VALUES (18, N'Mary', 89009989, N'mary@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[storeemp] OFF
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 03/20/2014 18:45:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[users]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserID] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[TransID] [int] IDENTITY(1,1) NOT NULL,
	[TransItemID] [int] NOT NULL,
	[TransDate] [datetime] NOT NULL,
	[TransReason] [nvarchar](50) NOT NULL,
	[TransItemQuant] [int] NOT NULL,
	[TransItemBalance] [int] NOT NULL,
	[TransCode] [nvarchar](50) NULL,
	[TransactionType] [nvarchar](50) NULL,
	[TranUserID] [int] NULL,
 CONSTRAINT [PK_transaction] PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[transaction] ON
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (328, 29, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 0, -1, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (329, 55, CAST(0x0000A2F300000000 AS DateTime), N'Added new Item: ShortHand Book (120 pg)', 900, 900, N'NEWITEM', N'in', 14)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (330, 19, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 10, 195, N'RTR', N'out', 14)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (331, 50, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 33, 17, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (332, 50, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 5, 12, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (333, 30, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 15, 14, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (334, 48, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 33, 67, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (335, 51, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 2, 98, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (336, 49, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 3, 117, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (337, 36, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 1, 149, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (338, 47, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 33, 97, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (339, 47, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 3, 94, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (340, 26, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 21, -9, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (341, 24, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 5, 5, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (342, 52, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 1, 19, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (343, 42, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 17, 133, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (344, 46, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 18, 132, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (345, 19, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 5, 190, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (346, 45, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 27, 173, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (347, 31, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 1, 453, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (348, 20, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 44, 4430, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (351, 58, CAST(0x0000A2F300000000 AS DateTime), N'Added new Item: Stapler No.36', 300, 300, N'NEWITEM', N'in', 14)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (352, 59, CAST(0x0000A2F300000000 AS DateTime), N'Added new Item: Transparency Clear', 300, 300, N'NEWITEM', N'in', 14)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (353, 19, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 1', 22, 157, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (354, 26, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 10, -29, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (355, 20, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 15, 4420, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (356, 20, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 2, 4415, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (357, 35, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 12, 10, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (358, 43, CAST(0x0000A2F300000000 AS DateTime), N'PO Received', 0, 20, N'PO', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (359, 52, CAST(0x0000A2F300000000 AS DateTime), N'PO Received', 0, 900, N'PO', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (360, 26, CAST(0x0000A2F300000000 AS DateTime), N'PO Received', 0, 300, N'PO', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (361, 52, CAST(0x0000A2F300000000 AS DateTime), N'PO Received', 0, 400, N'PO', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (362, 32, CAST(0x0000A2F300000000 AS DateTime), N'Monthly Adjustment run', 10, 20, N'ADF', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (363, 26, CAST(0x0000A2F300000000 AS DateTime), N'PO Received', 0, 18, N'PO', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (364, 35, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 2, 9, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (365, 35, CAST(0x0000A2F300000000 AS DateTime), N'Retrived For Department 2', 1, 9, N'RTR', N'out', 14)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (366, 35, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 2', 1, 31, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (367, 19, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 2', 8, 149, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (368, 19, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 7', 7, 142, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (369, 19, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 3', 8, 134, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (370, 51, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 2', 4, 96, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (371, 51, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 5', 8, 90, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (372, 32, CAST(0x0000A2F400000000 AS DateTime), N'Recieved Purchase Order from Supplier', 200, 220, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (373, 48, CAST(0x0000A2F400000000 AS DateTime), N'Monthly Adjustment run', 7, 60, N'ADF', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (374, 26, CAST(0x0000A2F4008E2715 AS DateTime), N'Recieved Purchase Order from Supplier', 35, 403, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (375, 30, CAST(0x0000A2F4008E2718 AS DateTime), N'Recieved Purchase Order from Supplier', 7, 43, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (376, 30, CAST(0x0000A2F4008E759C AS DateTime), N'Recieved Purchase Order from Supplier', 22, 65, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (377, 31, CAST(0x0000A2F4008E759D AS DateTime), N'Recieved Purchase Order from Supplier', 22, 575, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (378, 31, CAST(0x0000A2F4008ECEA2 AS DateTime), N'Recieved Purchase Order from Supplier', 22, 597, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (379, 32, CAST(0x0000A2F4008ECEA3 AS DateTime), N'Recieved Purchase Order from Supplier', 55, 275, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (380, 30, CAST(0x0000A2F40090C623 AS DateTime), N'Recieved Purchase Order from Supplier', 66, 131, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (381, 31, CAST(0x0000A2F40090C624 AS DateTime), N'Recieved Purchase Order from Supplier', 66, 663, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (382, 30, CAST(0x0000A2F40091BCC9 AS DateTime), N'Recieved Purchase Order from Supplier', 44, 175, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (383, 37, CAST(0x0000A2F40091BCCA AS DateTime), N'Recieved Purchase Order from Supplier', 44, 194, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (384, 40, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 2', 221, 50, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (385, 40, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 1', 200, 5, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (386, 40, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 5', 5, 0, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (387, 46, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 2', 200, 32, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (388, 46, CAST(0x0000A2F400000000 AS DateTime), N'Retrived For Department 1', 100, 2, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (389, 40, CAST(0x0000A2F400A60EFA AS DateTime), N'Recieved Purchase Order from Supplier', 500, 500, N'Purchase', N'in', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (390, 46, CAST(0x0000A2F400E84912 AS DateTime), N'Retrived For Department 2', 100, -98, N'RTR', N'out', 17)
INSERT [dbo].[transaction] ([TransID], [TransItemID], [TransDate], [TransReason], [TransItemQuant], [TransItemBalance], [TransCode], [TransactionType], [TranUserID]) VALUES (391, 46, CAST(0x0000A2F400E84930 AS DateTime), N'Retrived For Department 1', 70, -168, N'RTR', N'out', 17)
SET IDENTITY_INSERT [dbo].[transaction] OFF
/****** Object:  Table [dbo].[purchaseorder]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchaseorder](
	[POID] [int] IDENTITY(1,1) NOT NULL,
	[POSuppID] [int] NOT NULL,
	[POEmpID] [int] NOT NULL,
	[POReqDate] [datetime] NOT NULL,
	[PODeliverAddress] [nvarchar](50) NULL,
	[POReqDeliverDate] [datetime] NOT NULL,
	[PORecieveDate] [datetime] NULL,
 CONSTRAINT [PK_purchaseorder] PRIMARY KEY CLUSTERED 
(
	[POID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[purchaseorder] ON
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (74, 1, 17, CAST(0x0000A2E401486492 AS DateTime), N'dfsdf', CAST(0x0000A2EC00000000 AS DateTime), CAST(0x0000A2E40148A08E AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (75, 1, 17, CAST(0x0000A2E401492772 AS DateTime), N'Clement', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (76, 1, 17, CAST(0x0000A2E6014E076F AS DateTime), N'234234234', CAST(0x0000A2ED00000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (77, 1, 17, CAST(0x0000A2F30151EDC1 AS DateTime), N'', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (78, 1, 17, CAST(0x0000A2F30159944B AS DateTime), N'cck, sg', CAST(0x0000A2FA00000000 AS DateTime), CAST(0x0000A2F30168F6C1 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (79, 1, 17, CAST(0x0000A2F3015A5BEC AS DateTime), N'cck, sg', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F30166D1FA AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (80, 3, 17, CAST(0x0000A2F3015B330C AS DateTime), N'cck, sg', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F30166CDC3 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (81, 1, 17, CAST(0x0000A2F3015B384E AS DateTime), N'cck, sg', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F30166C7DB AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (82, 1, 17, CAST(0x0000A2F30166961B AS DateTime), N'cck, sg', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F30166BC09 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (83, 1, 17, CAST(0x0000A2F4005AEA40 AS DateTime), N'Logic University,Stationery Store,SIngapore 270045', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F4005B47A7 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (84, 1, 17, CAST(0x0000A2F4005FB502 AS DateTime), N'Logic University,Stationery Store,SIngapore 270045', CAST(0x0000A2F800000000 AS DateTime), CAST(0x0000A2F4005FC7E3 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (85, 1, 17, CAST(0x0000A2F4008DFACE AS DateTime), N'cck, sg', CAST(0x0000A2FC00000000 AS DateTime), CAST(0x0000A2F4008E2713 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (86, 1, 17, CAST(0x0000A2F4008E5C49 AS DateTime), N'cck, sg', CAST(0x0000A2FB00000000 AS DateTime), CAST(0x0000A2F4008E759B AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (87, 1, 17, CAST(0x0000A2F4008EB79A AS DateTime), N'cck, sg', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F4008ECEA1 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (88, 1, 17, CAST(0x0000A2F400909C12 AS DateTime), N'cck, sg', CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F40090C622 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (89, 1, 17, CAST(0x0000A2F400910521 AS DateTime), N'cck, sg', CAST(0x0000A2F400000000 AS DateTime), NULL)
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (90, 1, 17, CAST(0x0000A2F400918DEE AS DateTime), N'pku', CAST(0x0000A2FD00000000 AS DateTime), CAST(0x0000A2F40091BCC8 AS DateTime))
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (91, 1, 17, CAST(0x0000A2F4009FF1FE AS DateTime), N'', CAST(0x0000A2FC00000000 AS DateTime), NULL)
INSERT [dbo].[purchaseorder] ([POID], [POSuppID], [POEmpID], [POReqDate], [PODeliverAddress], [POReqDeliverDate], [PORecieveDate]) VALUES (92, 1, 17, CAST(0x0000A2F400A60173 AS DateTime), N'Singapore', CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F400A60EF7 AS DateTime))
SET IDENTITY_INSERT [dbo].[purchaseorder] OFF
/****** Object:  Table [dbo].[itemsupplier]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemsupplier](
	[SupplierID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[SupplierRank] [int] NOT NULL,
 CONSTRAINT [PK_tender] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 19, 100, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 20, 150, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 24, 200, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 25, 200, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 26, 120, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 27, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 29, 1, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 30, 7, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 31, 12, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 32, 3, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 33, 4, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 34, 12, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 35, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 36, 2, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 37, 3, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 38, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 39, 45, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 40, 22, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 41, 12, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 42, 3, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 43, 4, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 44, 12, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 45, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 46, 2, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 47, 3, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 48, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 49, 45, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 50, 22, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 51, 22, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 52, 11, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 54, 40, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 55, 25, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 56, 50, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 57, 50, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 58, 50, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (1, 59, 30, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 54, 39, 2)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 55, 24, 2)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 56, 40, 2)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 57, 40, 2)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 58, 30, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (3, 59, 50, 1)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 54, 38, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 55, 23, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 56, 30, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 57, 30, 3)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 58, 40, 2)
INSERT [dbo].[itemsupplier] ([SupplierID], [ItemID], [Price], [SupplierRank]) VALUES (4, 59, 40, 2)
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'157ee981-4fc4-4e50-a5dd-89c9fb9e6ec9', N'6dxHupAH2+uGGSPYAy4NxZlXggk=', 1, N'Tcqiw5YYY/1S0Nyk+qieFg==', NULL, N'ada@gmail.com', N'ada@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D23F0C AS DateTime), CAST(0x0000A2F400349551 AS DateTime), CAST(0x0000A2ED00D23F0C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'45529eec-2478-44b5-854c-a1c685d42212', N'vmwP9oyrJp/fIl5+7+XxIjWGRfM=', 1, N'4k3wOT3+T7SvaOVAuTkQCw==', NULL, N'ashwin@gmail.com', N'ashwin@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D1E020 AS DateTime), CAST(0x0000A2F400628175 AS DateTime), CAST(0x0000A2ED00D1E020 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'505b771b-17b5-4e13-919e-4ca8919a75a5', N'PDbtUbvTaD2ll8HHPkhAyBt4hzA=', 1, N'mC0nDPKVYqhYeOVcZe3HOA==', NULL, N'barney@gmail.com', N'barney@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D39410 AS DateTime), CAST(0x0000A2F300CA0B57 AS DateTime), CAST(0x0000A2ED00D39410 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'44c462e7-290e-408a-a170-a4a1b2b9a0d6', N'Z40uAlmaSG5U8lW3pV8K9gTk3/I=', 1, N'qLzFAF1OwgCUKTrZHn9ayw==', NULL, N'frank@gmail.com', N'frank@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D2C4A4 AS DateTime), CAST(0x0000A2F300C8DE71 AS DateTime), CAST(0x0000A2ED00D2C4A4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'3a657850-71e1-4a06-9986-de18a69598ca', N'c+w3URefiObEx7pufugSJmB1s1M=', 1, N'WvlfNdIZYO6cusqd5hYCtw==', NULL, N'fred@gmail.com', N'fred@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D3BF6C AS DateTime), CAST(0x0000A2F300CAFEBB AS DateTime), CAST(0x0000A2ED00D3BF6C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'cb198657-ac57-4439-be32-062cd9e658ec', N'soNURZYVl3P4CUn3/83xbWUBxuk=', 1, N'12c9wBL6CqjuuQMb8+V7mg==', NULL, N'gab@gmail.com', N'gab@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D288E0 AS DateTime), CAST(0x0000A2F40063FF01 AS DateTime), CAST(0x0000A2ED00D288E0 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'593281e3-ca03-4891-8c1b-1ed6486f3e62', N'qsrE4h3Hxx6huC9PfrBXGhz5rOs=', 1, N'0vO0WeAKe+cOfjedp/VPbg==', NULL, N'gong@gmail.com', N'gong@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D1C1A8 AS DateTime), CAST(0x0000A2F400986884 AS DateTime), CAST(0x0000A2ED00D1C1A8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'7b7e281f-c6ae-4f87-9f80-c74e113d2d70', N'57YT8yWaM9ggYs8XDJ1fjCo9nw8=', 1, N'3aIHPFvEGy1xWd3c9WADjA==', NULL, N'hsmaheen@gmail.com', N'hsmaheen@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D0A3B8 AS DateTime), CAST(0x0000A2F4009984C2 AS DateTime), CAST(0x0000A2ED00D0A3B8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'08d7fe01-af0f-4246-9402-6b5300035fee', N'O5+gm4+PBa8DoX8mbBL4K+74xIQ=', 1, N'xXOzGmB+5iEUJ+9x7683Xg==', NULL, N'huang@gmail.com', N'huang@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D26F18 AS DateTime), CAST(0x0000A2F400287392 AS DateTime), CAST(0x0000A2ED00D26F18 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'f145e848-3071-4839-a961-1cc7324dad88', N'o+V62VD8BzDA63xZDTOpbOC8y1c=', 1, N'ydQO/MsBiveeqs52lN+bCg==', NULL, N'jack@gmail.com', N'jack@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D2A62C AS DateTime), CAST(0x0000A2ED00D2A62C AS DateTime), CAST(0x0000A2ED00D2A62C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e4b8f301-ec84-4d6b-bee0-d09fe01b9962', N'TiJLVsxtRjUinYCy0VnScLjyLiQ=', 1, N'8ZIMtgjz/lHLhwO5aL4vFw==', NULL, N'jas@gmail.com', N'jas@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D1FC40 AS DateTime), CAST(0x0000A2F40062D9AC AS DateTime), CAST(0x0000A2ED00D1FC40 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e4b4278f-763a-44ad-9551-36bb938a3dde', N'XSZjxU6wbpFkESsRTZc1kxPs7Hk=', 1, N'3hTLkEliWucItZLcKr61cw==', NULL, N'jenny@gmail.com', N'jenny@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D2DD40 AS DateTime), CAST(0x0000A2F300C923EC AS DateTime), CAST(0x0000A2ED00D2DD40 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'cb8596d3-8e12-4e18-971c-8c6018b68749', N'6NKnCtk2SgdFIGw4u/eaYWy5Bno=', 1, N'BZAT9dzhKpHYJbMFju1Ylg==', NULL, N'jill@gmail.com', N'jill@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D47894 AS DateTime), CAST(0x0000A2F300CBC9A0 AS DateTime), CAST(0x0000A2ED00D47894 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a11d8944-42a0-4842-8111-7bf75e4b40f0', N'vSaCabNxj2NX+/RyMOFcJIBEhKA=', 1, N'SGm587z+UWMSvHKh+LGFVg==', NULL, N'joey@gmail.com', N'joey@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D42434 AS DateTime), CAST(0x0000A2F300CB3E3D AS DateTime), CAST(0x0000A2ED00D42434 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'4bbb7e1e-dae3-4d85-bf58-27c4a8ab28b9', N'I77JeLXvj1txGunsYlJAQ+tS1LA=', 1, N'0czdjwQ7b5De83+a3Af1qg==', NULL, N'john@gmail.com', N'john@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D45C74 AS DateTime), CAST(0x0000A2F300CB7F9B AS DateTime), CAST(0x0000A2ED00D45C74 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'f60ebad7-c484-4ed5-95ae-978e7c4945af', N'TQDc6seuq9Wi1r0HhQKP1rXvq+8=', 1, N'E3VC9bG+OgHsHJP1Wq4LLg==', NULL, N'khin@gmail.com', N'khin@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D10C04 AS DateTime), CAST(0x0000A2F100E3B4BB AS DateTime), CAST(0x0000A2ED00D10C04 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'faa8a02c-bce4-466a-a327-2a44b5fdb277', N'VIFicZ2BlAGEDXr4U5ZWZOF9PWs=', 1, N'oNQU8FAe6BwqciDfhLVD1Q==', NULL, N'mary@gmail.com', N'mary@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2F3016DBD4C AS DateTime), CAST(0x0000A2F4000F948E AS DateTime), CAST(0x0000A2F3016DBD4C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'454ec32b-5b6a-4c3d-a5c9-664a72fae112', N'V3Pec+TXO4DDSoMiXe996YWh9ug=', 1, N'yRH+qPLWkm4VL6zTjFChpg==', NULL, N'mon@gmail.com', N'mon@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D31C88 AS DateTime), CAST(0x0000A2F300C9C63A AS DateTime), CAST(0x0000A2ED00D31C88 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a490af2c-b688-49f4-b20d-f44c6ca96541', N'FsznUy4oppOufLUp3WrvtDxzAMM=', 1, N'QtKIoRsrB3mN7kblzQJESg==', NULL, N'pebble@gmail.com', N'pebble@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D40940 AS DateTime), CAST(0x0000A2ED00D40940 AS DateTime), CAST(0x0000A2ED00D40940 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'a00f79cb-3e31-420c-8aa5-4a6622c03a85', N'veDW9N4iTfIxFlqD81vZG1pA9aQ=', 1, N'XHXK/pxCbTRFp/cxa/DE7g==', NULL, N'phoebe@gmail.com', N'phoebe@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D36C38 AS DateTime), CAST(0x0000A2ED00D36C38 AS DateTime), CAST(0x0000A2ED00D36C38 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'ef80093e-4c21-4106-9980-c9c7efa3c932', N'gJxeZklrhCgzUS8WvTmHWeC9QJ8=', 1, N'Tg9unZAC0W1y6toZbnZ8Hw==', NULL, N'rach@gmail.com', N'rach@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D2FA8C AS DateTime), CAST(0x0000A2F40058386A AS DateTime), CAST(0x0000A2ED00D2FA8C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'3b6f763f-3588-4b0f-a802-7209862b2eac', N'BFjrdiKEOFzwGh1DF3dC4vtPbGU=', 1, N'GNXGSAeSkcYvauBEFeT4mQ==', NULL, N'ross@gmail.com', N'ross@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D346B8 AS DateTime), CAST(0x0000A2ED00D346B8 AS DateTime), CAST(0x0000A2ED00D346B8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'6d5b4acd-60db-476c-a799-c3c9356cecc7', N'Mbmj3VYE3wFpyD9Jvp5vN7zMj5E=', 1, N'zd/SiAuLEVwnkHbF8sRegg==', NULL, N'sachin@gmail.com', N'sachin@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D22418 AS DateTime), CAST(0x0000A2F4005A77E8 AS DateTime), CAST(0x0000A2ED00D22418 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'254cd1cf-f5ae-4f57-9e27-5af11571a72a', N'x9OxtJjUUGI+fPW+RVQhXt8RTNg=', 1, N'FgFSeWB3va6axLPrOkiuQQ==', NULL, N'sasha@gmail.com', N'sasha@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D0ED8C AS DateTime), CAST(0x0000A2F40092DE1B AS DateTime), CAST(0x0000A2ED00D0ED8C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'd1e73423-f69c-475c-bcbf-f5c5c92cfbbc', N'eRhwsXYoxvM9ZRDdSZcjGw3s2ao=', 1, N'LCYLv9kMjKaO01OSB1m73Q==', NULL, N'sus@gmail.com', N'sus@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D13D3C AS DateTime), CAST(0x0000A2F400A4D59E AS DateTime), CAST(0x0000A2ED00D13D3C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'8541e531-8aa4-4477-860a-e402fa6ed1d0', N'8ybJqojlynC4FnL+AK1N2eMnjAU=', 1, N'8XDpRtMT+NCOZ7qZ0H1Kow==', NULL, N'wilma@gmail.com', N'wilma@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D3A928 AS DateTime), CAST(0x0000A2F300CA9969 AS DateTime), CAST(0x0000A2ED00D3A928 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'c9423020-a0ca-4d48-94af-6a1d168147d0', N'e1c794a5-fd09-427e-9456-fc2315492d22', N'sAdhI/puF1wnR08AiUlym06JsyU=', 1, N'b13l8THvxQ70sAlHO19OjA==', NULL, N'xie@gmail.com', N'xie@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2ED00D19E80 AS DateTime), CAST(0x0000A2F40099A8EF AS DateTime), CAST(0x0000A2ED00D19E80 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  Table [dbo].[disbursement]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disbursement](
	[DisbID] [int] IDENTITY(1,1) NOT NULL,
	[DisbDepID] [int] NOT NULL,
	[DisbStatus] [nvarchar](50) NOT NULL,
	[DisbReceiveDate] [datetime] NULL,
	[DisbCreateDate] [datetime] NULL,
 CONSTRAINT [PK_disbursement] PRIMARY KEY CLUSTERED 
(
	[DisbID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[disbursement] ON
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (138, 1, N'received', NULL, CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (139, 2, N'received', CAST(0x0000A2F30168AD7E AS DateTime), CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (140, 2, N'received', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (141, 2, N'received', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (142, 7, N'received', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (143, 3, N'received', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (144, 5, N'received', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (145, 2, N'received', CAST(0x0000A2F400AD01EC AS DateTime), CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (146, 1, N'received', CAST(0x0000A2F400E792A2 AS DateTime), CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (147, 5, N'Ready', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (148, 2, N'Ready', NULL, CAST(0x0000A2F400000000 AS DateTime))
INSERT [dbo].[disbursement] ([DisbID], [DisbDepID], [DisbStatus], [DisbReceiveDate], [DisbCreateDate]) VALUES (149, 1, N'Received', CAST(0x0000A2F400E874FC AS DateTime), CAST(0x0000A2F400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[disbursement] OFF
/****** Object:  Table [dbo].[employee]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[EmployeeEmail] [nvarchar](100) NOT NULL,
	[EmployeeContact] [int] NOT NULL,
	[EmployeeRoleID] [int] NOT NULL,
	[EmployeeDepId] [int] NULL,
	[EmpIsDepRep] [bit] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employee] ON
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (45, N'Xie Jiabo', N'xie@gmail.com', 86463606, 4, 1, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (46, N'Gong Sheng Liang', N'gong@gmail.com', 864636089, 5, 1, 1)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (47, N'Ashwin Kumar', N'ashwin@gmail.com', 864636087, 5, 1, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (48, N'Khin Sabal', N'jas@gmail.com', 864636087, 5, 1, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (49, N'Sachin Pachari', N'sachin@gmail.com', 864678797, 4, 2, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (50, N'Adarsh Sridhar', N'ada@gmail.com', 864678797, 5, 2, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (51, N'Huang Xin', N'huang@gmail.com', 8554654, 5, 2, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (52, N'Gabriel', N'gab@gmail.com', 85546541, 5, 2, 1)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (53, N'Frank Sinatra', N'frank@gmail.com', 85789669, 5, 3, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (54, N'Jenny Goh', N'jenny@gmail.com', 85789687, 5, 3, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (55, N'Rachael', N'hsmaheen@gmail.com', 85744442, 5, 3, 1)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (56, N'Monica', N'mon@gmail.com', 7894564, 5, 3, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (57, N'Ross', N'ross@gmail.com', 7894564, 4, 3, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (58, N'Phoebe', N'phoebe@gmail.com', 6544787, 4, 5, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (59, N'Barney', N'barney@gmail.com', 7879799, 5, 5, 1)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (60, N'Wilma', N'wilma@gmail.com', 7879799, 5, 5, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (61, N'Fred', N'fred@gmail.com', 7879799, 5, 5, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (62, N'Pebbles ', N'pebble@gmail.com', 7987979, 4, 7, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (63, N'Joey', N'joey@gmail.com', 7987979, 5, 7, 1)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (64, N'John', N'john@gmail.com', 7897899, 5, 7, 0)
INSERT [dbo].[employee] ([EmployeeID], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeRoleID], [EmployeeDepId], [EmpIsDepRep]) VALUES (65, N'Jill', N'jill@gmail.com', 798789764, 5, 7, 0)
SET IDENTITY_INSERT [dbo].[employee] OFF
/****** Object:  Table [dbo].[adjustmentvoucher]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adjustmentvoucher](
	[ADVID] [int] IDENTITY(1,1) NOT NULL,
	[ADVIOrderByEmpID] [int] NOT NULL,
	[ADVDate] [date] NOT NULL,
	[ADVStatus] [nvarchar](50) NOT NULL,
	[ADVApprovedByEMpID] [int] NULL,
 CONSTRAINT [PK_adjustmentvoucher] PRIMARY KEY CLUSTERED 
(
	[ADVID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[adjustmentvoucher] ON
INSERT [dbo].[adjustmentvoucher] ([ADVID], [ADVIOrderByEmpID], [ADVDate], [ADVStatus], [ADVApprovedByEMpID]) VALUES (27, 17, CAST(0x41380B00 AS Date), N'Approved', 15)
INSERT [dbo].[adjustmentvoucher] ([ADVID], [ADVIOrderByEmpID], [ADVDate], [ADVStatus], [ADVApprovedByEMpID]) VALUES (28, 17, CAST(0x4F380B00 AS Date), N'Pending', NULL)
SET IDENTITY_INSERT [dbo].[adjustmentvoucher] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'f145e848-3071-4839-a961-1cc7324dad88', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a00f79cb-3e31-420c-8aa5-4a6622c03a85', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'3b6f763f-3588-4b0f-a802-7209862b2eac', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'6d5b4acd-60db-476c-a799-c3c9356cecc7', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a490af2c-b688-49f4-b20d-f44c6ca96541', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e1c794a5-fd09-427e-9456-fc2315492d22', N'7fd37fa0-b7ff-4830-bdcb-07cd11e10390')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'7b7e281f-c6ae-4f87-9f80-c74e113d2d70', N'19ba1d2e-734e-4395-ad98-084a5b14ffe0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd1e73423-f69c-475c-bcbf-f5c5c92cfbbc', N'19ba1d2e-734e-4395-ad98-084a5b14ffe0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'cb198657-ac57-4439-be32-062cd9e658ec', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'593281e3-ca03-4891-8c1b-1ed6486f3e62', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'4bbb7e1e-dae3-4d85-bf58-27c4a8ab28b9', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e4b4278f-763a-44ad-9551-36bb938a3dde', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'505b771b-17b5-4e13-919e-4ca8919a75a5', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'454ec32b-5b6a-4c3d-a5c9-664a72fae112', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'08d7fe01-af0f-4246-9402-6b5300035fee', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a11d8944-42a0-4842-8111-7bf75e4b40f0', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'157ee981-4fc4-4e50-a5dd-89c9fb9e6ec9', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'cb8596d3-8e12-4e18-971c-8c6018b68749', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'45529eec-2478-44b5-854c-a1c685d42212', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'44c462e7-290e-408a-a170-a4a1b2b9a0d6', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'ef80093e-4c21-4106-9980-c9c7efa3c932', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e4b8f301-ec84-4d6b-bee0-d09fe01b9962', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'3a657850-71e1-4a06-9986-de18a69598ca', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8541e531-8aa4-4477-860a-e402fa6ed1d0', N'10d2521c-5251-4dc7-9d0d-6df9dd609710')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'faa8a02c-bce4-466a-a327-2a44b5fdb277', N'354001c3-0171-410a-9be7-81eaebaa3f5c')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'f60ebad7-c484-4ed5-95ae-978e7c4945af', N'354001c3-0171-410a-9be7-81eaebaa3f5c')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'254cd1cf-f5ae-4f57-9e27-5af11571a72a', N'cdc80448-f69e-4e2c-a0cb-844cb5ed0075')
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  Table [dbo].[disbursementdetails]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disbursementdetails](
	[DisbID] [int] NOT NULL,
	[DisbItemID] [int] NOT NULL,
	[DisbItemQuantReq] [int] NOT NULL,
	[DisbItemQuantDelivered] [int] NULL,
 CONSTRAINT [PK_disbursementdetails] PRIMARY KEY CLUSTERED 
(
	[DisbID] ASC,
	[DisbItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 19, 10, 43)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 20, 44, 44)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 24, 5, 5)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 26, 21, 30)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 29, 0, 6)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 30, 15, 16)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 31, 1, 1)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 36, 1, 1)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 42, 17, 17)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 46, 18, 18)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 47, 3, 3)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 48, 33, 33)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 49, 3, 3)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 50, 5, 5)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 51, 2, 2)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (138, 52, 1, 1)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 20, 15, 15)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 26, 10, 20)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 35, 12, 11)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 45, 27, 27)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 47, 33, 33)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (139, 50, 33, 33)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (140, 35, 1, 0)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (141, 19, 8, 8)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (141, 51, 4, 2)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (142, 19, 7, 7)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (143, 19, 8, 8)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (144, 51, 8, 6)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (145, 40, 221, 50)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (145, 46, 200, 100)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (146, 40, 200, 45)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (146, 46, 100, 30)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (147, 40, 5, 5)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (148, 46, 100, 100)
INSERT [dbo].[disbursementdetails] ([DisbID], [DisbItemID], [DisbItemQuantReq], [DisbItemQuantDelivered]) VALUES (149, 46, 70, 70)
/****** Object:  Table [dbo].[delegation]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delegation](
	[DelgID] [int] IDENTITY(1,1) NOT NULL,
	[DelgEmpID] [int] NOT NULL,
	[DelgFromDate] [datetime] NOT NULL,
	[DelgToDate] [datetime] NOT NULL,
	[DelgStatus] [nvarchar](50) NULL,
	[DelApproveEmpID] [int] NOT NULL,
 CONSTRAINT [PK_delegation] PRIMARY KEY CLUSTERED 
(
	[DelgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[delegation] ON
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (22, 47, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F800000000 AS DateTime), N'cancel', 45)
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (23, 51, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F800000000 AS DateTime), N'cancel', 49)
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (24, 52, CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F500000000 AS DateTime), N'cancel', 49)
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (25, 51, CAST(0x0000A2F200000000 AS DateTime), CAST(0x0000A2F900000000 AS DateTime), N'approved', 49)
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (26, 46, CAST(0x0000A2F500000000 AS DateTime), CAST(0x0000A2F800000000 AS DateTime), N'cancel', 45)
INSERT [dbo].[delegation] ([DelgID], [DelgEmpID], [DelgFromDate], [DelgToDate], [DelgStatus], [DelApproveEmpID]) VALUES (27, 47, CAST(0x0000A2F400000000 AS DateTime), CAST(0x0000A2F600000000 AS DateTime), N'approved', 45)
SET IDENTITY_INSERT [dbo].[delegation] OFF
/****** Object:  Table [dbo].[requisition]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requisition](
	[ReqID] [int] IDENTITY(1,1) NOT NULL,
	[ReqEmpId] [int] NOT NULL,
	[ReqStatus] [nvarchar](50) NOT NULL,
	[ReqDate] [datetime] NOT NULL,
	[ReqApproveDate] [datetime] NULL,
	[ReqReason] [nvarchar](max) NULL,
	[ReqApproveEmpID] [int] NULL,
	[ReqDepID] [int] NOT NULL,
 CONSTRAINT [PK_requisition] PRIMARY KEY CLUSTERED 
(
	[ReqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[requisition] ON
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (246, 47, N'approved', CAST(0x0000A2F50120553E AS DateTime), CAST(0x0000A2E300A1B128 AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (247, 47, N'approved', CAST(0x0000A2E10120C786 AS DateTime), CAST(0x0000A2E300A1CB6B AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (248, 48, N'approved', CAST(0x0000A2E20122414B AS DateTime), CAST(0x0000A2E400A21A2C AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (249, 46, N'approved', CAST(0x0000A2E20122E723 AS DateTime), CAST(0x0000A2E400A22853 AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (250, 48, N'approved', CAST(0x0000A2E201235D1B AS DateTime), CAST(0x0000A2E400A2361C AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (251, 50, N'approved', CAST(0x0000A2E30123A3AD AS DateTime), CAST(0x0000A2E300A0F274 AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (252, 52, N'approved', CAST(0x0000A2E30124854B AS DateTime), CAST(0x0000A2E300A10C9A AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (253, 46, N'approved', CAST(0x0000A2E401265921 AS DateTime), CAST(0x0000A2E400B941BC AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (254, 50, N'approved', CAST(0x0000A2E40126E43D AS DateTime), CAST(0x0000A2E400B9DD42 AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (255, 46, N'outstanding', CAST(0x0000A2E20122E723 AS DateTime), CAST(0x0000A2E400A22853 AS DateTime), N'outstanding', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (256, 50, N'outstanding', CAST(0x0000A2E40126E43D AS DateTime), CAST(0x0000A2E400B9DD42 AS DateTime), N'outstanding', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (257, 50, N'outstanding', CAST(0x0000A2E40126E43D AS DateTime), CAST(0x0000A2E400B9DD42 AS DateTime), N'outstanding', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (258, 46, N'reject', CAST(0x0000A2F301485BEC AS DateTime), CAST(0x0000A2F300D1490B AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (259, 47, N'approved', CAST(0x0000A2F301490E95 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (260, 48, N'approved', CAST(0x0000A2F3014A05BE AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (261, 50, N'approved', CAST(0x0000A2F3014A56BF AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (262, 51, N'approved', CAST(0x0000A2F3014B63DB AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (263, 51, N'approved', CAST(0x0000A2F3014B6AA5 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (264, 51, N'approved', CAST(0x0000A2F3014BF3ED AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (265, 52, N'approved', CAST(0x0000A2F3014C962E AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (266, 53, N'approved', CAST(0x0000A2F3014CE274 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (267, 54, N'approved', CAST(0x0000A2F3014D36AA AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (268, 55, N'approved', CAST(0x0000A2F3014D8972 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (269, 56, N'approved', CAST(0x0000A2F3014DC9C8 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (270, 59, N'approved', CAST(0x0000A2F3014E28F9 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 5)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (271, 60, N'approved', CAST(0x0000A2F3014E9DA5 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 5)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (272, 61, N'approved', CAST(0x0000A2F3014EF98B AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 5)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (273, 63, N'approved', CAST(0x0000A2F3014F4287 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), NULL, NULL, 7)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (274, 64, N'pending', CAST(0x0000A2F3014F751F AS DateTime), NULL, NULL, NULL, 7)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (275, 65, N'pending', CAST(0x0000A2F3014FA7CA AS DateTime), NULL, NULL, NULL, 7)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (276, 48, N'approved', CAST(0x0000A2F30154A127 AS DateTime), CAST(0x0000A2F40058AD92 AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (284, 52, N'outstanding', CAST(0x0000A2F3014C962E AS DateTime), CAST(0x0000A2F300000000 AS DateTime), N'outstanding', NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (285, 59, N'outstanding', CAST(0x0000A2F3014E28F9 AS DateTime), CAST(0x0000A2F300000000 AS DateTime), N'outstanding', NULL, 5)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (286, 46, N'approved', CAST(0x0000A2F400A20174 AS DateTime), CAST(0x0000A2F2001F1AF9 AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (287, 46, N'approved', CAST(0x0000A2F400A22313 AS DateTime), CAST(0x0000A2F2001F2428 AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (288, 50, N'approved', CAST(0x0000A2F400A25808 AS DateTime), CAST(0x0000A2F2001F446A AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (289, 50, N'approved', CAST(0x0000A2F400A27473 AS DateTime), CAST(0x0000A2F2001F4B79 AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (290, 51, N'outstanding', CAST(0x0000A2F3014B63DB AS DateTime), CAST(0x0000A2F300000000 AS DateTime), N'outstanding', NULL, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (291, 46, N'outstanding', CAST(0x0000A2F400A22313 AS DateTime), CAST(0x0000A2F2001F2428 AS DateTime), N'outstanding', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (292, 50, N'outstanding', CAST(0x0000A2F400A25808 AS DateTime), CAST(0x0000A2F2001F446A AS DateTime), N'outstanding', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (293, 47, N'outstanding', CAST(0x0000A2E10120C786 AS DateTime), CAST(0x0000A2E300A1CB6B AS DateTime), N'outstanding', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (296, 50, N'approved', CAST(0x0000A2F400A95389 AS DateTime), CAST(0x0000A2F400262A11 AS DateTime), N'it is ok', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (297, 50, N'approved', CAST(0x0000A2F400A96F7B AS DateTime), CAST(0x0000A2F400265B08 AS DateTime), N'', 49, 2)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (298, 46, N'approved', CAST(0x0000A2F400E126B4 AS DateTime), CAST(0x0000A2F4005ED57C AS DateTime), N'', 45, 1)
INSERT [dbo].[requisition] ([ReqID], [ReqEmpId], [ReqStatus], [ReqDate], [ReqApproveDate], [ReqReason], [ReqApproveEmpID], [ReqDepID]) VALUES (299, 46, N'pending', CAST(0x0000A2F4010295C8 AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[requisition] OFF
/****** Object:  Table [dbo].[purchaseorderdetails]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchaseorderdetails](
	[POID] [int] NOT NULL,
	[POItemID] [int] NOT NULL,
	[POItemQuant] [int] NOT NULL,
	[POStatus] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_purchaseorderdetails] PRIMARY KEY CLUSTERED 
(
	[POID] ASC,
	[POItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (74, 29, 900, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (75, 43, 20, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (75, 52, 900, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (76, 26, 300, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (76, 52, 400, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (77, 26, 18, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (78, 26, 45, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (79, 55, 56, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (80, 55, 34, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (81, 26, 34, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (82, 30, 22, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (82, 35, 22, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (83, 31, 100, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (84, 32, 200, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (85, 26, 35, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (85, 30, 7, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (86, 30, 22, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (86, 31, 22, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (87, 31, 22, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (87, 32, 55, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (88, 30, 66, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (88, 31, 66, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (89, 31, 44, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (89, 44, 22, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (90, 30, 44, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (90, 37, 44, N'approved')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (91, 55, 20, N'pending')
INSERT [dbo].[purchaseorderdetails] ([POID], [POItemID], [POItemQuant], [POStatus]) VALUES (92, 40, 500, N'approved')
/****** Object:  StoredProcedure [dbo].[getCPointbyDepID]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[getCPointbyDepID]
@DepID int
As
SET NOCOUNT ON;

select e.EmployeeName,cp.CollectionPointName,dep.DepName,cp.CollectionPointAddress,e.EmployeeContact,cp.CollectionPointDate,cp.CollectionPointTime
from department dep,collectionPoint cp,employee e
where cp.CollectionPointID=dep.DepCollectionPointID and e.EmployeeDepId=dep.DepID and e.EmpIsDepRep=1 and dep.DepID=@DepID
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  Table [dbo].[adjustmentvoucherdetails]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adjustmentvoucherdetails](
	[ADVID] [int] NOT NULL,
	[ADVItemID] [int] NOT NULL,
	[ADVQuantAdj] [int] NOT NULL,
	[ADVReason] [nvarchar](100) NOT NULL,
	[ADVItemUnitCost] [int] NOT NULL,
	[ADVQuantBefore] [int] NOT NULL,
	[ADVQuantAfter] [int] NOT NULL,
	[ADVAdjustedCost] [float] NOT NULL,
 CONSTRAINT [PK_adjustmentvoucherdetails] PRIMARY KEY CLUSTERED 
(
	[ADVID] ASC,
	[ADVItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[adjustmentvoucherdetails] ([ADVID], [ADVItemID], [ADVQuantAdj], [ADVReason], [ADVItemUnitCost], [ADVQuantBefore], [ADVQuantAfter], [ADVAdjustedCost]) VALUES (27, 32, 10, N'crash', 3, 30, 20, 30)
INSERT [dbo].[adjustmentvoucherdetails] ([ADVID], [ADVItemID], [ADVQuantAdj], [ADVReason], [ADVItemUnitCost], [ADVQuantBefore], [ADVQuantAfter], [ADVAdjustedCost]) VALUES (28, 48, 7, N'Broken Items', 11, 67, 60, 77)
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  Table [dbo].[requisitiondetails]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requisitiondetails](
	[ReqID] [int] NOT NULL,
	[ReqItemID] [int] NOT NULL,
	[ReqQuantityReq] [int] NOT NULL,
	[ReqStatus] [nvarchar](100) NULL,
 CONSTRAINT [PK_requisitiondetails] PRIMARY KEY CLUSTERED 
(
	[ReqID] ASC,
	[ReqItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (246, 24, 5, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (246, 29, 6, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (246, 42, 17, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (247, 31, 1, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (247, 36, 1, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (247, 46, 18, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (247, 52, 1, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (248, 20, 33, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (248, 30, 16, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (248, 47, 3, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (249, 19, 10, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (249, 20, 11, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (249, 26, 30, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (249, 48, 33, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (249, 51, 2, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (250, 49, 3, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (250, 50, 5, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (251, 45, 4, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (252, 45, 23, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (252, 47, 33, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (252, 50, 33, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (253, 19, 33, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (254, 20, 15, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (254, 26, 20, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (254, 35, 12, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (255, 19, 5, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (256, 20, 5, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (257, 35, 2, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (258, 37, 1, N'reject')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (258, 46, 1, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (259, 29, 20, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (259, 31, 14, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (259, 47, 15, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (260, 20, 20, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (260, 26, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (260, 54, 15, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (261, 30, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (261, 38, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (261, 39, 15, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (262, 40, 21, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (262, 41, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (264, 30, 15, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (264, 35, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 19, 8, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 29, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 37, 9, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 38, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 44, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 48, 12, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 51, 4, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (265, 52, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (266, 44, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (266, 45, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (266, 56, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (266, 57, 9, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (267, 32, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (267, 33, 9, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (267, 35, 1, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (267, 57, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (268, 19, 8, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (268, 42, 9, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (268, 45, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (269, 26, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (269, 45, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (269, 50, 8, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (269, 58, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (270, 51, 8, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (270, 53, 6, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (270, 59, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (271, 20, 8, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (271, 30, 5, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (271, 56, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (272, 24, 7, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (272, 40, 5, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (273, 19, 7, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (273, 29, 4, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (273, 35, 3, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (273, 52, 2, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (274, 26, 7, NULL)
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (274, 27, 8, NULL)
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (275, 19, 2, NULL)
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (276, 20, 20, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (284, 51, 2, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (285, 51, 2, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (286, 46, 100, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (287, 40, 200, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (288, 46, 200, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (289, 40, 200, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (290, 40, 171, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (291, 40, 155, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (292, 46, 100, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (293, 46, 70, N'confirmed')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (296, 40, 100, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (296, 46, 100, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (297, 30, 100, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (297, 35, 100, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (298, 31, 20, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (298, 40, 10, N'approved')
INSERT [dbo].[requisitiondetails] ([ReqID], [ReqItemID], [ReqQuantityReq], [ReqStatus]) VALUES (299, 46, 1, NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[getChartForDepByCategoryOnly]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getChartForDepByCategoryOnly]
	-- Add the parameters for the stored procedure here
	
	@FromDate datetime,
	@ToDate datetime,
	@DepID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select c.CategoryName,SUM(dd.DisbItemQuantReq)as QuantReq
from disbursement disb,disbursementdetails dd,item i,category c,department dep
where disb.DisbID=dd.DisbID and dd.DisbItemID=i.ItemID and c.CategoryID=i.ItemCatID and dep.DepID=disb.DisbDepID and disb.DisbCreateDate>@FromDate and disb.DisbCreateDate <=@ToDate and dep.DepID=@DepID
group by c.CategoryName


END
GO
/****** Object:  StoredProcedure [dbo].[getChartForDepByCategory]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getChartForDepByCategory]
	-- Add the parameters for the stored procedure here
	
	@FromDate datetime,
	@ToDate datetime,
	@DepID int,
	@CatID int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select c.CategoryName,SUM(dd.DisbItemQuantReq)as QuantReq,disb.DisbCreateDate
from disbursement disb,disbursementdetails dd,item i,category c,department dep
where disb.DisbID=dd.DisbID and dd.DisbItemID=i.ItemID and c.CategoryID=i.ItemCatID and dep.DepID=disb.DisbDepID and disb.DisbCreateDate>@FromDate and disb.DisbCreateDate <=@ToDate and dep.DepID=@DepID and c.CategoryID=@CatID
group by c.CategoryName,disb.DisbCreateDate


END
GO
/****** Object:  StoredProcedure [dbo].[getChartbyItem]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getChartbyItem]
	-- Add the parameters for the stored procedure here
	
	@FromDate datetime,
	@ToDate datetime,
	@CatID int,
	@ItemID int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select i.ItemDescription ,SUM(dd.DisbItemQuantReq)as QuantReq,disb.DisbCreateDate,dep.DepName
from disbursement disb,disbursementdetails dd,item i,category c,department dep
where disb.DisbID=dd.DisbID and dd.DisbItemID=i.ItemID and dep.DepID=disb.DisbDepID and c.CategoryID=i.ItemCatID and c.CategoryID=@CatID and i.ItemID=@ItemID and disb.DisbCreateDate>=@FromDate and disb.DisbCreateDate <=@ToDate 
group by  i.ItemDescription,disb.DisbCreateDate,dep.DepName
END
GO
/****** Object:  StoredProcedure [dbo].[getChartbyCategoryandItem]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getChartbyCategoryandItem]
	-- Add the parameters for the stored procedure here
	
	@FromDate datetime,
	@ToDate datetime,
	@CatID int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select i.ItemDescription ,SUM(dd.DisbItemQuantReq)as QuantReq
from disbursement disb,disbursementdetails dd,item i,category c,department dep
where disb.DisbID=dd.DisbID and dd.DisbItemID=i.ItemID and dep.DepID=disb.DisbDepID and c.CategoryID=i.ItemCatID and c.CategoryID=@CatID and disb.DisbCreateDate>=@FromDate and disb.DisbCreateDate <@ToDate
group by  i.ItemDescription

END
GO
/****** Object:  StoredProcedure [dbo].[getDisbItemsByDep]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDisbItemsByDep]
	-- Add the parameters for the stored procedure here
@DepID int,
@DisbStatus nvarchar(100),
@Date datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select dd.DisbItemID,i.ItemDescription,dd.DisbItemQuantReq,dd.DisbItemQuantDelivered,i.ItemQuant,d.DisbStatus
from disbursement d,disbursementdetails dd,item i,department dep
where dep.DepID=d.DisbDepID and i.ItemID=dd.DisbItemID and d.DisbID=dd.DisbID and dep.DepID=@DepID and d.DisbStatus=@DisbStatus and d.DisbCreateDate<@Date
group by dd.DisbItemID,i.ItemDescription,dd.DisbItemQuantReq,dd.DisbItemQuantDelivered,i.ItemQuant,d.DisbStatus
order by i.ItemDescription
END
GO
/****** Object:  StoredProcedure [dbo].[getDepOrderByMonth]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDepOrderByMonth]
	-- Add the parameters for the stored procedure here
@FromDate datetime,
@ToDate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select dep.DepName,SUM(dd.DisbItemQuantDelivered) as QuantDelivered
from department dep,disbursement disb,disbursementdetails dd,item it
where dep.DepID=disb.DisbDepID and dd.DisbItemID=it.ItemID and dd.DisbID=disb.DisbID and disb.DisbCreateDate>=@FromDate and disb.DisbCreateDate<=@ToDate
group by dep.DepName

END
GO
/****** Object:  StoredProcedure [dbo].[getDepForDisb]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDepForDisb]
	@Date datetime,
	@Status nvarchar (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select dep.DepID, dep.DepName,d.DisbID,cp.CollectionPointName,d.DisbCreateDate
from disbursement d,disbursementdetails dd,department dep,collectionPoint cp
where dep.DepID=d.DisbDepID and d.DisbID=dd.DisbID and cp.CollectionPointID=dep.DepCollectionPointID and d.DisbStatus=@Status and d.DisbCreateDate<@Date
group by dep.DepID, dep.DepName,d.DisbID,cp.CollectionPointName,d.DisbCreateDate
order by dep.DepName
END
GO
/****** Object:  StoredProcedure [dbo].[getAllRequests]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAllRequests]
	-- Add the parameters for the stored procedure here
@Status nvarchar(100),
@Date datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

select i.ItemID,i.ItemDescription,SUM(rd.ReqQuantityReq)as [Order Quantity],i.ItemQuant
from requisition rq,requisitiondetails rd,item i,employee e
where rq.ReqID=rd.ReqID and rq.ReqStatus=@Status and i.ItemID=rd.ReqItemID and e.EmployeeID=rq.ReqEmpId and rq.ReqApproveDate<@Date
group by i.ItemID, i.ItemDescription,i.ItemQuant
order by i.ItemDescription

END
GO
/****** Object:  StoredProcedure [dbo].[getReqbyDep]    Script Date: 03/20/2014 18:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[getReqbyDep]
@ItemID int,
@Date datetime
As
SET NOCOUNT ON;
select  dep.DepID,i.ItemDescription,dep.DepName,SUM(rd.ReqQuantityReq) as [Required Quantity]
from requisition rq,requisitiondetails rd,item i,department dep
where rq.ReqID=rd.ReqID and rd.ReqStatus='approved' and i.ItemID=rd.ReqItemID and dep.DepID=rq.ReqDepID and i.ItemID=@ItemID and rq.ReqApproveDate<@Date
group by  dep.DepID,i.ItemDescription,dep.DepName
order by dep.DepName
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__45F365D3]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__4BAC3F29]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__4CA06362]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__4D94879B]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__18EBB532]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__02084FDA]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__245D67DE]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__60A75C0F]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4AB81AF0]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK_department_CollectionPoint]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[department]  WITH CHECK ADD  CONSTRAINT [FK_department_CollectionPoint] FOREIGN KEY([DepCollectionPointID])
REFERENCES [dbo].[collectionPoint] ([CollectionPointID])
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [FK_department_CollectionPoint]
GO
/****** Object:  ForeignKey [FK_item_bin]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_bin] FOREIGN KEY([ItemBinID])
REFERENCES [dbo].[bin] ([BinID])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_bin]
GO
/****** Object:  ForeignKey [FK_item_category]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_category] FOREIGN KEY([ItemCatID])
REFERENCES [dbo].[category] ([CategoryID])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_category]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__17F790F9]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__01142BA1]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK_storeemp_role]    Script Date: 03/20/2014 18:45:56 ******/
ALTER TABLE [dbo].[storeemp]  WITH CHECK ADD  CONSTRAINT [FK_storeemp_role] FOREIGN KEY([StoreEmpRoleID])
REFERENCES [dbo].[role] ([RoleID])
GO
ALTER TABLE [dbo].[storeemp] CHECK CONSTRAINT [FK_storeemp_role]
GO
/****** Object:  ForeignKey [FK_users_role]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[role] ([RoleID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
/****** Object:  ForeignKey [FK_transaction_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_item] FOREIGN KEY([TransItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_item]
GO
/****** Object:  ForeignKey [FK_transaction_storeemp]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_storeemp] FOREIGN KEY([TranUserID])
REFERENCES [dbo].[storeemp] ([StoreEmpID])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_storeemp]
GO
/****** Object:  ForeignKey [FK_purchaseorder_storeemp]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[purchaseorder]  WITH CHECK ADD  CONSTRAINT [FK_purchaseorder_storeemp] FOREIGN KEY([POEmpID])
REFERENCES [dbo].[storeemp] ([StoreEmpID])
GO
ALTER TABLE [dbo].[purchaseorder] CHECK CONSTRAINT [FK_purchaseorder_storeemp]
GO
/****** Object:  ForeignKey [FK_purchaseorder_supplier]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[purchaseorder]  WITH CHECK ADD  CONSTRAINT [FK_purchaseorder_supplier] FOREIGN KEY([POSuppID])
REFERENCES [dbo].[supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[purchaseorder] CHECK CONSTRAINT [FK_purchaseorder_supplier]
GO
/****** Object:  ForeignKey [FK_tender_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[itemsupplier]  WITH CHECK ADD  CONSTRAINT [FK_tender_item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[itemsupplier] CHECK CONSTRAINT [FK_tender_item]
GO
/****** Object:  ForeignKey [FK_tender_supplier]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[itemsupplier]  WITH CHECK ADD  CONSTRAINT [FK_tender_supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[itemsupplier] CHECK CONSTRAINT [FK_tender_supplier]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__25518C17]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__2645B050]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__75A278F5]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__5EBF139D]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__5FB337D6]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__1F98B2C1]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK_disbursement_department]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[disbursement]  WITH CHECK ADD  CONSTRAINT [FK_disbursement_department] FOREIGN KEY([DisbDepID])
REFERENCES [dbo].[department] ([DepID])
GO
ALTER TABLE [dbo].[disbursement] CHECK CONSTRAINT [FK_disbursement_department]
GO
/****** Object:  ForeignKey [FK_employee_department]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_department] FOREIGN KEY([EmployeeDepId])
REFERENCES [dbo].[department] ([DepID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_department]
GO
/****** Object:  ForeignKey [FK_employee_role]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_role] FOREIGN KEY([EmployeeRoleID])
REFERENCES [dbo].[role] ([RoleID])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_role]
GO
/****** Object:  ForeignKey [FK_adjustmentvoucher_storeemp]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[adjustmentvoucher]  WITH CHECK ADD  CONSTRAINT [FK_adjustmentvoucher_storeemp] FOREIGN KEY([ADVIOrderByEmpID])
REFERENCES [dbo].[storeemp] ([StoreEmpID])
GO
ALTER TABLE [dbo].[adjustmentvoucher] CHECK CONSTRAINT [FK_adjustmentvoucher_storeemp]
GO
/****** Object:  ForeignKey [FK_adjustmentvoucher_StoreHead]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[adjustmentvoucher]  WITH CHECK ADD  CONSTRAINT [FK_adjustmentvoucher_StoreHead] FOREIGN KEY([ADVApprovedByEMpID])
REFERENCES [dbo].[storeemp] ([StoreEmpID])
GO
ALTER TABLE [dbo].[adjustmentvoucher] CHECK CONSTRAINT [FK_adjustmentvoucher_StoreHead]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__07C12930]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__06CD04F7]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK_disbursementdetails_disbursement]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[disbursementdetails]  WITH CHECK ADD  CONSTRAINT [FK_disbursementdetails_disbursement] FOREIGN KEY([DisbID])
REFERENCES [dbo].[disbursement] ([DisbID])
GO
ALTER TABLE [dbo].[disbursementdetails] CHECK CONSTRAINT [FK_disbursementdetails_disbursement]
GO
/****** Object:  ForeignKey [FK_disbursementdetails_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[disbursementdetails]  WITH CHECK ADD  CONSTRAINT [FK_disbursementdetails_item] FOREIGN KEY([DisbItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[disbursementdetails] CHECK CONSTRAINT [FK_disbursementdetails_item]
GO
/****** Object:  ForeignKey [FK_delegation_DepHead]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[delegation]  WITH CHECK ADD  CONSTRAINT [FK_delegation_DepHead] FOREIGN KEY([DelApproveEmpID])
REFERENCES [dbo].[employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[delegation] CHECK CONSTRAINT [FK_delegation_DepHead]
GO
/****** Object:  ForeignKey [FK_delegation_employee]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[delegation]  WITH CHECK ADD  CONSTRAINT [FK_delegation_employee] FOREIGN KEY([DelgEmpID])
REFERENCES [dbo].[employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[delegation] CHECK CONSTRAINT [FK_delegation_employee]
GO
/****** Object:  ForeignKey [FK_requisition_department]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[requisition]  WITH CHECK ADD  CONSTRAINT [FK_requisition_department] FOREIGN KEY([ReqDepID])
REFERENCES [dbo].[department] ([DepID])
GO
ALTER TABLE [dbo].[requisition] CHECK CONSTRAINT [FK_requisition_department]
GO
/****** Object:  ForeignKey [FK_requisition_DepheadID]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[requisition]  WITH CHECK ADD  CONSTRAINT [FK_requisition_DepheadID] FOREIGN KEY([ReqApproveEmpID])
REFERENCES [dbo].[employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[requisition] CHECK CONSTRAINT [FK_requisition_DepheadID]
GO
/****** Object:  ForeignKey [FK_requisition_employee]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[requisition]  WITH CHECK ADD  CONSTRAINT [FK_requisition_employee] FOREIGN KEY([ReqEmpId])
REFERENCES [dbo].[employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[requisition] CHECK CONSTRAINT [FK_requisition_employee]
GO
/****** Object:  ForeignKey [FK_purchaseorderdetails_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[purchaseorderdetails]  WITH CHECK ADD  CONSTRAINT [FK_purchaseorderdetails_item] FOREIGN KEY([POItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[purchaseorderdetails] CHECK CONSTRAINT [FK_purchaseorderdetails_item]
GO
/****** Object:  ForeignKey [FK_purchaseorderdetails_purchaseorder]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[purchaseorderdetails]  WITH CHECK ADD  CONSTRAINT [FK_purchaseorderdetails_purchaseorder] FOREIGN KEY([POID])
REFERENCES [dbo].[purchaseorder] ([POID])
GO
ALTER TABLE [dbo].[purchaseorderdetails] CHECK CONSTRAINT [FK_purchaseorderdetails_purchaseorder]
GO
/****** Object:  ForeignKey [FK_adjustmentvoucherdetails_adjustmentvoucher]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[adjustmentvoucherdetails]  WITH CHECK ADD  CONSTRAINT [FK_adjustmentvoucherdetails_adjustmentvoucher] FOREIGN KEY([ADVID])
REFERENCES [dbo].[adjustmentvoucher] ([ADVID])
GO
ALTER TABLE [dbo].[adjustmentvoucherdetails] CHECK CONSTRAINT [FK_adjustmentvoucherdetails_adjustmentvoucher]
GO
/****** Object:  ForeignKey [FK_adjustmentvoucherdetails_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[adjustmentvoucherdetails]  WITH CHECK ADD  CONSTRAINT [FK_adjustmentvoucherdetails_item] FOREIGN KEY([ADVItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[adjustmentvoucherdetails] CHECK CONSTRAINT [FK_adjustmentvoucherdetails_item]
GO
/****** Object:  ForeignKey [FK_requisitiondetails_item]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[requisitiondetails]  WITH CHECK ADD  CONSTRAINT [FK_requisitiondetails_item] FOREIGN KEY([ReqItemID])
REFERENCES [dbo].[item] ([ItemID])
GO
ALTER TABLE [dbo].[requisitiondetails] CHECK CONSTRAINT [FK_requisitiondetails_item]
GO
/****** Object:  ForeignKey [FK_requisitiondetails_requisition]    Script Date: 03/20/2014 18:45:57 ******/
ALTER TABLE [dbo].[requisitiondetails]  WITH CHECK ADD  CONSTRAINT [FK_requisitiondetails_requisition] FOREIGN KEY([ReqID])
REFERENCES [dbo].[requisition] ([ReqID])
GO
ALTER TABLE [dbo].[requisitiondetails] CHECK CONSTRAINT [FK_requisitiondetails_requisition]
GO
