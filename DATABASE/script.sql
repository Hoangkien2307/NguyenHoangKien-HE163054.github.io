USE [master]
GO
/****** Object:  Database [PRJ_BL5_Assignment]    Script Date: 8/17/2022 2:09:17 AM ******/
CREATE DATABASE [PRJ_BL5_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ_BL5_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ_BL5_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ_BL5_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ_BL5_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ_BL5_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ_BL5_Assignment]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_id] [nvarchar](10) NOT NULL,
	[Employee_Name] [nvarchar](max) NOT NULL,
	[pID] [int] NOT NULL,
	[isManager] [bit] NOT NULL,
	[co_Salary] [real] NULL,
	[base_Salary] [money] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fes_Working]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fes_Working](
	[feswork_id] [int] IDENTITY(1,1) NOT NULL,
	[fesID] [int] NOT NULL,
	[Employee_id] [nvarchar](10) NOT NULL,
	[co_feswork] [real] NOT NULL,
 CONSTRAINT [PK_Fes_Working] PRIMARY KEY CLUSTERED 
(
	[feswork_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Festival]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Festival](
	[fesID] [int] IDENTITY(1,1) NOT NULL,
	[time_from] [date] NOT NULL,
	[time_to] [date] NOT NULL,
	[Festival_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Festival] PRIMARY KEY CLUSTERED 
(
	[fesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[leave_id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](10) NOT NULL,
	[cID] [int] NOT NULL,
	[reason_id] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Leave] PRIMARY KEY CLUSTERED 
(
	[leave_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Overtime]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Overtime](
	[overtime_id] [int] IDENTITY(1,1) NOT NULL,
	[work_ID] [int] NOT NULL,
	[hours] [real] NOT NULL,
 CONSTRAINT [PK_Overtime] PRIMARY KEY CLUSTERED 
(
	[overtime_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reason]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reason](
	[reason_id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[isCheck] [bit] NOT NULL,
 CONSTRAINT [PK_Reason] PRIMARY KEY CLUSTERED 
(
	[reason_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Shift]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Shift](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[time_checkin] [datetime] NOT NULL,
	[time_checkout] [datetime] NOT NULL,
	[co_work] [int] NOT NULL,
 CONSTRAINT [PK_Work_Shift] PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Working_time]    Script Date: 8/17/2022 2:09:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Working_time](
	[Employee_id] [nvarchar](10) NOT NULL,
	[cID] [int] NOT NULL,
	[time_checkin] [datetime] NOT NULL,
	[time_checkout] [datetime] NOT NULL,
	[work_ID] [int] NOT NULL,
 CONSTRAINT [PK_Working_time] PRIMARY KEY CLUSTERED 
(
	[work_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'gd01', N'Hoàng Văn Tiếng
', 10, 1, 6.5, 0.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'gd02', N'Phạm Thị Thu
', 11, 1, 5.5, 0.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'gd03', N'Bùi Văn Hiếu
', 11, 1, 5.5, 0.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'nv02', N'Vũ Xuân Hải
', 1, 0, 0, 16000000.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'nv03', N'Nguyễn Thị Thủy A
', 3, 0, 0, 6000000.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'nv04', N'Nguyễn Công Hương
', 5, 0, 0, 5000000.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'nv05', N'Ng.T Xuân Quỳnh
', 4, 0, 0, 8000000.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [isManager], [co_Salary], [base_Salary]) VALUES (N'nv06', N'Hoàng Thị Hải Yến
', 7, 0, 0, 4000000.0000)
GO
SET IDENTITY_INSERT [dbo].[Fes_Working] ON 

INSERT [dbo].[Fes_Working] ([feswork_id], [fesID], [Employee_id], [co_feswork]) VALUES (1, 1, N'nv04', 2.5)
INSERT [dbo].[Fes_Working] ([feswork_id], [fesID], [Employee_id], [co_feswork]) VALUES (2, 2, N'nv04', 2)
INSERT [dbo].[Fes_Working] ([feswork_id], [fesID], [Employee_id], [co_feswork]) VALUES (4, 2, N'nv05', 2.2)
INSERT [dbo].[Fes_Working] ([feswork_id], [fesID], [Employee_id], [co_feswork]) VALUES (5, 1, N'nv06', 2.1)
SET IDENTITY_INSERT [dbo].[Fes_Working] OFF
GO
SET IDENTITY_INSERT [dbo].[Festival] ON 

INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name]) VALUES (1, CAST(N'2022-09-01' AS Date), CAST(N'2022-09-03' AS Date), N'Ngày Quốc Khánh')
INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name]) VALUES (2, CAST(N'2022-04-09' AS Date), CAST(N'2022-04-11' AS Date), N'Ngày Giỗ Tổ')
INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name]) VALUES (3, CAST(N'2023-02-01' AS Date), CAST(N'2023-02-14' AS Date), N'Tết Âm Lịch')
SET IDENTITY_INSERT [dbo].[Festival] OFF
GO
SET IDENTITY_INSERT [dbo].[Leave] ON 

INSERT [dbo].[Leave] ([leave_id], [Employee_Id], [cID], [reason_id], [date]) VALUES (1, N'nv02', 1, 1, CAST(N'2022-09-09' AS Date))
INSERT [dbo].[Leave] ([leave_id], [Employee_Id], [cID], [reason_id], [date]) VALUES (3, N'nv02', 2, 1, CAST(N'2022-09-09' AS Date))
INSERT [dbo].[Leave] ([leave_id], [Employee_Id], [cID], [reason_id], [date]) VALUES (4, N'nv02', 3, 1, CAST(N'2022-09-09' AS Date))
INSERT [dbo].[Leave] ([leave_id], [Employee_Id], [cID], [reason_id], [date]) VALUES (5, N'nv03', 2, 2, CAST(N'2022-09-17' AS Date))
INSERT [dbo].[Leave] ([leave_id], [Employee_Id], [cID], [reason_id], [date]) VALUES (6, N'nv03', 3, 2, CAST(N'2022-09-20' AS Date))
SET IDENTITY_INSERT [dbo].[Leave] OFF
GO
SET IDENTITY_INSERT [dbo].[Overtime] ON 

INSERT [dbo].[Overtime] ([overtime_id], [work_ID], [hours]) VALUES (1, 5, 2)
SET IDENTITY_INSERT [dbo].[Overtime] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([pID], [Name]) VALUES (1, N'Trưởng Phòng Kỹ Thuật')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (2, N'Nhân Viên Kỹ Thuật')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (3, N'Kế Toán')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (4, N'Thủ Kho')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (5, N'Cấp Dưỡng')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (6, N'Lái Xe')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (7, N'Tạp Vụ')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (8, N'Nhân Viên Hành Chính')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (9, N'Kế Toán Trưởng')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (10, N'Giám Đốc')
INSERT [dbo].[Position] ([pID], [Name]) VALUES (11, N'Phó Giám Đốc')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (1, N'Nghỉ đẻ', 1)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (2, N'Nghỉ đi du lịch với người yêu', 0)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (3, N'Không có lý do', 0)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (4, N'Con Ốm', 1)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (5, N'Đi Công tác', 1)
GO
SET IDENTITY_INSERT [dbo].[Work_Shift] ON 

INSERT [dbo].[Work_Shift] ([cID], [name], [time_checkin], [time_checkout], [co_work]) VALUES (1, N'ca sáng', CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime), 1)
INSERT [dbo].[Work_Shift] ([cID], [name], [time_checkin], [time_checkout], [co_work]) VALUES (2, N'ca chiều', CAST(N'2022-08-17T13:30:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime), 1)
INSERT [dbo].[Work_Shift] ([cID], [name], [time_checkin], [time_checkout], [co_work]) VALUES (3, N'ca tối', CAST(N'2022-08-17T18:00:00.000' AS DateTime), CAST(N'2022-08-17T23:30:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Work_Shift] OFF
GO
INSERT [dbo].[Working_time] ([Employee_id], [cID], [time_checkin], [time_checkout], [work_ID]) VALUES (N'nv02', 1, CAST(N'2022-09-07T08:00:00.000' AS DateTime), CAST(N'2022-09-07T17:00:00.000' AS DateTime), 1)
INSERT [dbo].[Working_time] ([Employee_id], [cID], [time_checkin], [time_checkout], [work_ID]) VALUES (N'nv02', 3, CAST(N'2022-09-17T18:00:00.000' AS DateTime), CAST(N'2022-09-17T23:00:00.000' AS DateTime), 2)
INSERT [dbo].[Working_time] ([Employee_id], [cID], [time_checkin], [time_checkout], [work_ID]) VALUES (N'nv03', 2, CAST(N'2022-09-25T13:30:00.000' AS DateTime), CAST(N'2022-09-25T16:30:00.000' AS DateTime), 3)
INSERT [dbo].[Working_time] ([Employee_id], [cID], [time_checkin], [time_checkout], [work_ID]) VALUES (N'nv03', 1, CAST(N'2022-09-30T08:40:00.000' AS DateTime), CAST(N'2022-09-30T17:00:00.000' AS DateTime), 4)
INSERT [dbo].[Working_time] ([Employee_id], [cID], [time_checkin], [time_checkout], [work_ID]) VALUES (N'nv05', 2, CAST(N'2022-09-27T13:40:00.000' AS DateTime), CAST(N'2022-09-27T19:00:00.000' AS DateTime), 5)
GO
/****** Object:  Index [IX_Overtime]    Script Date: 8/17/2022 2:09:17 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Overtime] ON [dbo].[Overtime]
(
	[work_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([pID])
REFERENCES [dbo].[Position] ([pID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Fes_Working]  WITH CHECK ADD  CONSTRAINT [FK_Fes_Working_Employee1] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Fes_Working] CHECK CONSTRAINT [FK_Fes_Working_Employee1]
GO
ALTER TABLE [dbo].[Fes_Working]  WITH CHECK ADD  CONSTRAINT [FK_Fes_Working_Festival] FOREIGN KEY([fesID])
REFERENCES [dbo].[Festival] ([fesID])
GO
ALTER TABLE [dbo].[Fes_Working] CHECK CONSTRAINT [FK_Fes_Working_Festival]
GO
ALTER TABLE [dbo].[Leave]  WITH CHECK ADD  CONSTRAINT [FK_Leave_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Leave] CHECK CONSTRAINT [FK_Leave_Employee]
GO
ALTER TABLE [dbo].[Leave]  WITH CHECK ADD  CONSTRAINT [FK_Leave_Reason] FOREIGN KEY([reason_id])
REFERENCES [dbo].[Reason] ([reason_id])
GO
ALTER TABLE [dbo].[Leave] CHECK CONSTRAINT [FK_Leave_Reason]
GO
ALTER TABLE [dbo].[Leave]  WITH CHECK ADD  CONSTRAINT [FK_Leave_Work_Shift] FOREIGN KEY([cID])
REFERENCES [dbo].[Work_Shift] ([cID])
GO
ALTER TABLE [dbo].[Leave] CHECK CONSTRAINT [FK_Leave_Work_Shift]
GO
ALTER TABLE [dbo].[Overtime]  WITH CHECK ADD  CONSTRAINT [FK_Overtime_Working_time1] FOREIGN KEY([work_ID])
REFERENCES [dbo].[Working_time] ([work_ID])
GO
ALTER TABLE [dbo].[Overtime] CHECK CONSTRAINT [FK_Overtime_Working_time1]
GO
ALTER TABLE [dbo].[Working_time]  WITH CHECK ADD  CONSTRAINT [FK_Working_time_Employee] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Working_time] CHECK CONSTRAINT [FK_Working_time_Employee]
GO
ALTER TABLE [dbo].[Working_time]  WITH CHECK ADD  CONSTRAINT [FK_Working_time_Work_Shift] FOREIGN KEY([cID])
REFERENCES [dbo].[Work_Shift] ([cID])
GO
ALTER TABLE [dbo].[Working_time] CHECK CONSTRAINT [FK_Working_time_Work_Shift]
GO
USE [master]
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET  READ_WRITE 
GO
