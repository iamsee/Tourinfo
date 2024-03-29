USE [master]
GO
/****** Object:  Database [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF]    Script Date: 2014/9/24 15:02:59 ******/
CREATE DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tourinfo', FILENAME = N'C:\Tourinfo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tourinfo_log', FILENAME = N'C:\Tourinfo_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF', N'ON'
GO
USE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF]
GO
/****** Object:  Table [dbo].[Tab_Comp]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tab_Comp](
	[CompID] [bigint] NULL,
	[CompName] [bigint] NULL,
	[UserID] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tab_Order]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tab_Order](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[PathID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Paid] [bit] NOT NULL,
 CONSTRAINT [PK_Tab_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tab_Path]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tab_Path](
	[PathID] [bigint] IDENTITY(1,1) NOT NULL,
	[PathName] [varchar](20) NOT NULL,
	[CompID] [bigint] NULL,
	[UserID] [bigint] NULL,
	[TotalPeople] [int] NOT NULL,
	[NowPeople] [int] NOT NULL,
	[GuideName] [varchar](20) NOT NULL,
	[Dining] [varchar](50) NOT NULL,
	[Stay] [varchar](50) NOT NULL,
	[Bus] [varchar](50) NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[Price] [float] NOT NULL,
	[Pathed] [bit] NOT NULL,
	[PathedData] [datetime] NOT NULL,
 CONSTRAINT [PK_Tab_Path] PRIMARY KEY CLUSTERED 
(
	[PathID] ASC,
	[PathName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tab_Scenic]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tab_Scenic](
	[ScenicID] [bigint] IDENTITY(1,1) NOT NULL,
	[PathID] [bigint] NULL,
	[ScenicName] [varchar](50) NOT NULL,
	[ScenicDes] [varchar](50) NOT NULL,
	[ScenicGra] [float] NOT NULL,
 CONSTRAINT [PK_Tab_Scenic] PRIMARY KEY CLUSTERED 
(
	[ScenicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tab_Userinfo]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tab_Userinfo](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompID] [bigint] NULL,
	[UserName] [varchar](20) NOT NULL,
	[CompName] [varbinary](50) NULL,
	[UserMail] [varchar](50) NOT NULL,
	[UserPwd] [varchar](32) NOT NULL,
	[Verify] [bit] NULL,
	[Permission] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_1]    Script Date: 2014/9/24 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT   dbo.Tab_Userinfo.*, dbo.Tab_Comp.CompID, dbo.Tab_Comp.CompName
FROM      dbo.Tab_Comp CROSS JOIN
                dbo.Tab_Userinfo

GO
SET IDENTITY_INSERT [dbo].[Tab_Path] ON 

INSERT [dbo].[Tab_Path] ([PathID], [PathName], [CompID], [UserID], [TotalPeople], [NowPeople], [GuideName], [Dining], [Stay], [Bus], [Description], [Price], [Pathed], [PathedData]) VALUES (20, N'张家口一日游', NULL, NULL, 100, 0, N'2', N'2', N'2', N'2', N'1', 1, 1, CAST(0x000007DC00000000 AS DateTime))
INSERT [dbo].[Tab_Path] ([PathID], [PathName], [CompID], [UserID], [TotalPeople], [NowPeople], [GuideName], [Dining], [Stay], [Bus], [Description], [Price], [Pathed], [PathedData]) VALUES (21, N'张家口两日游', NULL, NULL, 100, 0, N'1', N'1', N'1', N'1', N'1', 1, 1, CAST(0x000007DC00000000 AS DateTime))
INSERT [dbo].[Tab_Path] ([PathID], [PathName], [CompID], [UserID], [TotalPeople], [NowPeople], [GuideName], [Dining], [Stay], [Bus], [Description], [Price], [Pathed], [PathedData]) VALUES (25, N'张家口三日游', NULL, NULL, 100, 20, N'1', N'1', N'1', N'1', N'1', 1, 1, CAST(0x000007DC00000000 AS DateTime))
INSERT [dbo].[Tab_Path] ([PathID], [PathName], [CompID], [UserID], [TotalPeople], [NowPeople], [GuideName], [Dining], [Stay], [Bus], [Description], [Price], [Pathed], [PathedData]) VALUES (27, N'张家口两日游', NULL, NULL, 100, 22, N'1', N'1', N'1', N'1', N'1', 1, 1, CAST(0x000007DC00000000 AS DateTime))
INSERT [dbo].[Tab_Path] ([PathID], [PathName], [CompID], [UserID], [TotalPeople], [NowPeople], [GuideName], [Dining], [Stay], [Bus], [Description], [Price], [Pathed], [PathedData]) VALUES (28, N'张家口两日游', NULL, NULL, 111, 1, N'1', N'1', N'1', N'1', N'1', 1, 1, CAST(0x000007DC00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tab_Path] OFF
SET IDENTITY_INSERT [dbo].[Tab_Scenic] ON 

INSERT [dbo].[Tab_Scenic] ([ScenicID], [PathID], [ScenicName], [ScenicDes], [ScenicGra]) VALUES (1, 21, N'安家沟', N'还行', 12)
INSERT [dbo].[Tab_Scenic] ([ScenicID], [PathID], [ScenicName], [ScenicDes], [ScenicGra]) VALUES (2, 21, N'赐儿山', N'挺高', 10)
INSERT [dbo].[Tab_Scenic] ([ScenicID], [PathID], [ScenicName], [ScenicDes], [ScenicGra]) VALUES (8, 20, N'aa', N'22', 12)
INSERT [dbo].[Tab_Scenic] ([ScenicID], [PathID], [ScenicName], [ScenicDes], [ScenicGra]) VALUES (9, 20, N'aa', N'3', 321)
SET IDENTITY_INSERT [dbo].[Tab_Scenic] OFF
SET IDENTITY_INSERT [dbo].[Tab_Userinfo] ON 

INSERT [dbo].[Tab_Userinfo] ([UserID], [CompID], [UserName], [CompName], [UserMail], [UserPwd], [Verify], [Permission]) VALUES (1, NULL, N'21', NULL, N'12', N'3c59dc048e8850243be8079a5c74d079', 0, 0)
INSERT [dbo].[Tab_Userinfo] ([UserID], [CompID], [UserName], [CompName], [UserMail], [UserPwd], [Verify], [Permission]) VALUES (2, NULL, N'21', NULL, N'12', N'3c59dc048e8850243be8079a5c74d079', 0, 0)
INSERT [dbo].[Tab_Userinfo] ([UserID], [CompID], [UserName], [CompName], [UserMail], [UserPwd], [Verify], [Permission]) VALUES (3, NULL, N'iamsee', NULL, N'admin@iamsee.com', N'5e5f6b87c5f986c95b9ba0fbd54fb7d1', 0, 0)
SET IDENTITY_INSERT [dbo].[Tab_Userinfo] OFF
ALTER TABLE [dbo].[Tab_Order] ADD  CONSTRAINT [DF_Tab_Order_Paid]  DEFAULT ((0)) FOR [Paid]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_PathName]  DEFAULT ('张家口7日游') FOR [PathName]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_UserID]  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_TotalPeople]  DEFAULT ((100)) FOR [TotalPeople]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_NowPeople]  DEFAULT ((0)) FOR [NowPeople]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_Bus]  DEFAULT ('bus1') FOR [Bus]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_Pathed]  DEFAULT ((0)) FOR [Pathed]
GO
ALTER TABLE [dbo].[Tab_Path] ADD  CONSTRAINT [DF_Tab_Path_PathedData]  DEFAULT (((2014)-(1))-(1)) FOR [PathedData]
GO
ALTER TABLE [dbo].[Tab_Userinfo] ADD  CONSTRAINT [DF_Tab_Userinfo_CompName]  DEFAULT (NULL) FOR [CompName]
GO
ALTER TABLE [dbo].[Tab_Userinfo] ADD  CONSTRAINT [DF_Tab_Userinfo_Verify]  DEFAULT ((0)) FOR [Verify]
GO
ALTER TABLE [dbo].[Tab_Userinfo] ADD  CONSTRAINT [DF_Tab_Userinfo_Permission]  DEFAULT ((0)) FOR [Permission]
GO
ALTER TABLE [dbo].[Tab_Scenic]  WITH CHECK ADD  CONSTRAINT [FK_Tab_Scenic_Tab_Scenic] FOREIGN KEY([ScenicID])
REFERENCES [dbo].[Tab_Scenic] ([ScenicID])
GO
ALTER TABLE [dbo].[Tab_Scenic] CHECK CONSTRAINT [FK_Tab_Scenic_Tab_Scenic]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单标识ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Order', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路线标识ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Order', @level2type=N'COLUMN',@level2name=N'PathID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出发日期（yyyy-mm-dd）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Order', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Order', @level2type=N'COLUMN',@level2name=N'Paid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路线标识ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'PathID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导游名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'GuideName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'餐饮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'Dining'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住宿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'Stay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大巴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'Bus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点描述（路过景点相关注意）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路线价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Path', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Scenic', @level2type=N'COLUMN',@level2name=N'ScenicName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Scenic', @level2type=N'COLUMN',@level2name=N'ScenicDes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tab_Scenic', @level2type=N'COLUMN',@level2name=N'ScenicGra'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tab_Comp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 127
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tab_Userinfo"
            Begin Extent = 
               Top = 6
               Left = 235
               Bottom = 146
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [D:\WORKSPACES\ASP.NETCODE\TOURINFO资料包\TOURSYSTEM\APP_DATA\TOURINFO.MDF] SET  READ_WRITE 
GO
