USE [master]
GO
/****** Object:  Database [EquipmentRepair]    Script Date: 05.11.2024 23:14:15 ******/
CREATE DATABASE [EquipmentRepair]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EquipmentRepair', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EquipmentRepair.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EquipmentRepair_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\EquipmentRepair_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EquipmentRepair] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EquipmentRepair].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ARITHABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EquipmentRepair] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EquipmentRepair] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EquipmentRepair] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EquipmentRepair] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EquipmentRepair] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EquipmentRepair] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EquipmentRepair] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EquipmentRepair] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EquipmentRepair] SET RECOVERY FULL 
GO
ALTER DATABASE [EquipmentRepair] SET  MULTI_USER 
GO
ALTER DATABASE [EquipmentRepair] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EquipmentRepair] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EquipmentRepair] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EquipmentRepair] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EquipmentRepair] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EquipmentRepair] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EquipmentRepair', N'ON'
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE = ON
GO
ALTER DATABASE [EquipmentRepair] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EquipmentRepair]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[second_name] [nvarchar](50) NOT NULL,
	[first_name] [nchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[phone_number] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priorities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Requests] [int] NOT NULL,
	[time] [int] NOT NULL,
	[sum] [money] NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportsAndMaterials]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsAndMaterials](
	[id_report] [int] NOT NULL,
	[id_material] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_RequestsAndMaterials] PRIMARY KEY CLUSTERED 
(
	[id_report] ASC,
	[id_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datetime_created] [datetime] NOT NULL,
	[datetime_closed] [datetime] NULL,
	[id_priority] [int] NOT NULL,
	[id_equipment] [int] NOT NULL,
	[serial_number_of_equipment] [nvarchar](50) NULL,
	[id_type_of_problem] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[id_client] [int] NOT NULL,
	[id_worker] [int] NOT NULL,
	[id_status] [int] NULL,
 CONSTRAINT [PK_requests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types_of_problems]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types_of_problems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Types_of_problems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[id_role] [int] NOT NULL,
	[id_worker] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 05.11.2024 23:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[second_name] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[phone_number] [nvarchar](11) NOT NULL,
	[date_of_birthday] [date] NOT NULL,
	[id_role] [int] NOT NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id], [second_name], [first_name], [last_name], [phone_number]) VALUES (1, N'Иванов', N'Петр                                              ', N'Сергеевич', N'82332335326')
INSERT [dbo].[Clients] ([id], [second_name], [first_name], [last_name], [phone_number]) VALUES (2, N'Алексеев', N'Семён                                             ', N'Иванович', N'89234003454')
INSERT [dbo].[Clients] ([id], [second_name], [first_name], [last_name], [phone_number]) VALUES (3, N'Арканов', N'Армен                                             ', N'Арменович', N'89345608976')
INSERT [dbo].[Clients] ([id], [second_name], [first_name], [last_name], [phone_number]) VALUES (4, N'Сидоров', N'Иван                                              ', N'Иванович', N'89789008242')
INSERT [dbo].[Clients] ([id], [second_name], [first_name], [last_name], [phone_number]) VALUES (5, N'Андреев', N'Андрей                                            ', N'Андреевич', N'89531227766')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([id], [name]) VALUES (1, N'Ноутбук Lenovo')
INSERT [dbo].[Equipment] ([id], [name]) VALUES (2, N'Ноутбук ASUS')
INSERT [dbo].[Equipment] ([id], [name]) VALUES (3, N'ПК')
INSERT [dbo].[Equipment] ([id], [name]) VALUES (4, N'Моноблок MSI')
INSERT [dbo].[Equipment] ([id], [name]) VALUES (5, N'Моноблок Lenovo')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([id], [name]) VALUES (1, N'Видеокарта                                        ')
INSERT [dbo].[Materials] ([id], [name]) VALUES (2, N'Процессор                                         ')
INSERT [dbo].[Materials] ([id], [name]) VALUES (3, N'Жесткий диск                                      ')
INSERT [dbo].[Materials] ([id], [name]) VALUES (4, N'Оперативная память                                ')
INSERT [dbo].[Materials] ([id], [name]) VALUES (5, N'Блок питания                                      ')
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Priorities] ON 

INSERT [dbo].[Priorities] ([id], [name]) VALUES (1, N'Бессрочный')
INSERT [dbo].[Priorities] ([id], [name]) VALUES (2, N'Низкий')
INSERT [dbo].[Priorities] ([id], [name]) VALUES (3, N'Средний')
INSERT [dbo].[Priorities] ([id], [name]) VALUES (4, N'Высокий')
INSERT [dbo].[Priorities] ([id], [name]) VALUES (5, N'Срочный')
SET IDENTITY_INSERT [dbo].[Priorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Reports] ON 

INSERT [dbo].[Reports] ([id], [id_Requests], [time], [sum], [description]) VALUES (1, 1, 2690, 30000.0000, N'Была заменена видеокарта')
INSERT [dbo].[Reports] ([id], [id_Requests], [time], [sum], [description]) VALUES (3, 2, 2788, 25999.0000, N'Был заменен процессор')
INSERT [dbo].[Reports] ([id], [id_Requests], [time], [sum], [description]) VALUES (4, 3, 3040, 6000.0000, N'Был заменен жесткий диск')
INSERT [dbo].[Reports] ([id], [id_Requests], [time], [sum], [description]) VALUES (5, 6, 223, 12000.0000, N'Была заменена оперативная память')
INSERT [dbo].[Reports] ([id], [id_Requests], [time], [sum], [description]) VALUES (6, 7, 185, 5500.0000, N'Был заменён жесткий диск')
SET IDENTITY_INSERT [dbo].[Reports] OFF
GO
INSERT [dbo].[ReportsAndMaterials] ([id_report], [id_material], [count]) VALUES (1, 1, 1)
INSERT [dbo].[ReportsAndMaterials] ([id_report], [id_material], [count]) VALUES (3, 2, 1)
INSERT [dbo].[ReportsAndMaterials] ([id_report], [id_material], [count]) VALUES (4, 3, 1)
INSERT [dbo].[ReportsAndMaterials] ([id_report], [id_material], [count]) VALUES (5, 4, 2)
INSERT [dbo].[ReportsAndMaterials] ([id_report], [id_material], [count]) VALUES (6, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Requests] ON 

INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (1, CAST(N'2024-11-01T15:32:22.000' AS DateTime), CAST(N'2024-11-03T12:22:10.000' AS DateTime), 3, 1, N'ABF2384G83', 1, NULL, 1, 5, 5)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (2, CAST(N'2024-11-02T13:44:12.000' AS DateTime), CAST(N'2024-11-04T12:12:12.000' AS DateTime), 3, 2, N'SDFN32N2K234', 2, NULL, 2, 5, 5)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (3, CAST(N'2024-11-03T17:10:01.000' AS DateTime), CAST(N'2024-11-05T19:50:51.000' AS DateTime), 3, 3, N'DSSF334AK234', 3, NULL, 3, 5, 4)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (4, CAST(N'2024-11-04T10:01:10.000' AS DateTime), NULL, 4, 3, N'KAFAFE34N34', 4, NULL, 4, 5, 3)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (5, CAST(N'2024-11-05T14:17:54.000' AS DateTime), NULL, 2, 4, N'DSOJF35BPG', 5, NULL, 5, 5, 2)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (6, CAST(N'2024-10-07T10:17:32.000' AS DateTime), CAST(N'2024-10-07T14:00:23.000' AS DateTime), 5, 5, N'SPWTPN35N7N2', 4, NULL, 2, 5, 5)
INSERT [dbo].[Requests] ([id], [datetime_created], [datetime_closed], [id_priority], [id_equipment], [serial_number_of_equipment], [id_type_of_problem], [description], [id_client], [id_worker], [id_status]) VALUES (7, CAST(N'2024-10-08T18:55:12.000' AS DateTime), CAST(N'2024-10-08T22:00:47.000' AS DateTime), 5, 3, N'KLOFKFMNF45N4', 3, NULL, 4, 5, 5)
SET IDENTITY_INSERT [dbo].[Requests] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'Директор')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'Администратор')
INSERT [dbo].[Roles] ([id], [name]) VALUES (3, N'Инженер')
INSERT [dbo].[Roles] ([id], [name]) VALUES (4, N'Бухгалтер')
INSERT [dbo].[Roles] ([id], [name]) VALUES (5, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([id], [name]) VALUES (1, N'Принят')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (2, N'В ожидании')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (3, N'В работе')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (4, N'Выполнено')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (5, N'Сдано')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Types_of_problems] ON 

INSERT [dbo].[Types_of_problems] ([id], [name]) VALUES (1, N'Выход из строя видеокарты')
INSERT [dbo].[Types_of_problems] ([id], [name]) VALUES (2, N'Выход из строя процессора')
INSERT [dbo].[Types_of_problems] ([id], [name]) VALUES (3, N'Выход из строя жесткого диска')
INSERT [dbo].[Types_of_problems] ([id], [name]) VALUES (4, N'Выход из строя оперативной памяти')
INSERT [dbo].[Types_of_problems] ([id], [name]) VALUES (5, N'Выход из строя блока питания')
SET IDENTITY_INSERT [dbo].[Types_of_problems] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [login], [password], [id_role], [id_worker]) VALUES (3, N'admin', N'admin', 1, 3)
INSERT [dbo].[Users] ([id], [login], [password], [id_role], [id_worker]) VALUES (4, N'worker1', N'worker1', 2, 4)
INSERT [dbo].[Users] ([id], [login], [password], [id_role], [id_worker]) VALUES (5, N'worker2', N'worker2', 3, 5)
INSERT [dbo].[Users] ([id], [login], [password], [id_role], [id_worker]) VALUES (6, N'worker3', N'worker3', 4, 6)
INSERT [dbo].[Users] ([id], [login], [password], [id_role], [id_worker]) VALUES (7, N'worker4', N'worker4', 5, 7)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Workers] ON 

INSERT [dbo].[Workers] ([id], [second_name], [first_name], [lastname], [phone_number], [date_of_birthday], [id_role]) VALUES (3, N'Гущин', N'Павел                                             ', N'Алексеевич', N'89841003329', CAST(N'2005-07-14' AS Date), 1)
INSERT [dbo].[Workers] ([id], [second_name], [first_name], [lastname], [phone_number], [date_of_birthday], [id_role]) VALUES (4, N'Петров', N'Петр                                              ', N'Петрович', N'89221092465', CAST(N'2000-08-24' AS Date), 2)
INSERT [dbo].[Workers] ([id], [second_name], [first_name], [lastname], [phone_number], [date_of_birthday], [id_role]) VALUES (5, N'Иванов', N'Иван                                              ', N'Иванович', N'89241234312', CAST(N'2001-09-12' AS Date), 3)
INSERT [dbo].[Workers] ([id], [second_name], [first_name], [lastname], [phone_number], [date_of_birthday], [id_role]) VALUES (6, N'Сидоров', N'Семён                                             ', N'Семёнович', N'89345435675', CAST(N'1998-12-12' AS Date), 4)
INSERT [dbo].[Workers] ([id], [second_name], [first_name], [lastname], [phone_number], [date_of_birthday], [id_role]) VALUES (7, N'Иванько', N'Иван                                              ', N'Иванович', N'89541234567', CAST(N'2003-01-01' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Workers] OFF
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Requests] FOREIGN KEY([id_Requests])
REFERENCES [dbo].[Requests] ([id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Requests]
GO
ALTER TABLE [dbo].[ReportsAndMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ReportsAndMaterials_Materials] FOREIGN KEY([id_material])
REFERENCES [dbo].[Materials] ([id])
GO
ALTER TABLE [dbo].[ReportsAndMaterials] CHECK CONSTRAINT [FK_ReportsAndMaterials_Materials]
GO
ALTER TABLE [dbo].[ReportsAndMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ReportsAndMaterials_Reports] FOREIGN KEY([id_report])
REFERENCES [dbo].[Reports] ([id])
GO
ALTER TABLE [dbo].[ReportsAndMaterials] CHECK CONSTRAINT [FK_ReportsAndMaterials_Reports]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Clients]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Equipment] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[Equipment] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Equipment]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Priorities] FOREIGN KEY([id_priority])
REFERENCES [dbo].[Priorities] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Priorities]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Statuses] FOREIGN KEY([id_status])
REFERENCES [dbo].[Statuses] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Statuses]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Types_of_problems] FOREIGN KEY([id_type_of_problem])
REFERENCES [dbo].[Types_of_problems] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Types_of_problems]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Workers] FOREIGN KEY([id_worker])
REFERENCES [dbo].[Workers] ([id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Workers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Workers] FOREIGN KEY([id_worker])
REFERENCES [dbo].[Workers] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Workers]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Roles]
GO
USE [master]
GO
ALTER DATABASE [EquipmentRepair] SET  READ_WRITE 
GO
