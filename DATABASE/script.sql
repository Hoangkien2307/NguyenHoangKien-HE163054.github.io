USE [master]
GO
/****** Object:  Database [PRJ_BL5_Assignment]    Script Date: 8/19/2022 12:36:27 PM ******/
CREATE DATABASE [PRJ_BL5_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ_BL5_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ_BL5_Assignment.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ_BL5_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ_BL5_Assignment_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Allowance]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allowance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Allowance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_Insurance]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Insurance](
	[Employee_id] [nvarchar](10) NOT NULL,
	[ins_id] [int] NOT NULL,
 CONSTRAINT [PK_Emp_Insurance] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC,
	[ins_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_id] [nvarchar](10) NOT NULL,
	[Employee_Name] [nvarchar](max) NOT NULL,
	[pID] [int] NOT NULL,
	[base_Salary] [money] NOT NULL,
	[isurance_money] [money] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Allowance]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Allowance](
	[Employee_id] [nvarchar](10) NOT NULL,
	[Allow_id] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[month] [int] NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Employee_Allowance] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC,
	[Allow_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Festival]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Festival](
	[fesID] [int] IDENTITY(1,1) NOT NULL,
	[time_from] [date] NOT NULL,
	[time_to] [date] NOT NULL,
	[Festival_Name] [nvarchar](max) NOT NULL,
	[co_feswork] [real] NOT NULL,
 CONSTRAINT [PK_Festival] PRIMARY KEY CLUSTERED 
(
	[fesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[percent] [real] NOT NULL,
 CONSTRAINT [PK_Insurance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[leave_id] [int] NOT NULL,
	[Employee_Id] [nvarchar](10) NOT NULL,
	[cID] [int] NOT NULL,
	[reason_id] [int] NOT NULL,
	[from] [datetime] NOT NULL,
	[to] [datetime] NOT NULL,
 CONSTRAINT [PK_Leave] PRIMARY KEY CLUSTERED 
(
	[leave_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[over_EMP]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[over_EMP](
	[overtime_id] [int] NOT NULL,
	[Employee_id] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_over_EMP] PRIMARY KEY CLUSTERED 
(
	[overtime_id] ASC,
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Overtime]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Overtime](
	[overtime_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[Hour] [real] NOT NULL,
	[isCheck] [bit] NOT NULL,
 CONSTRAINT [PK_Overtime] PRIMARY KEY CLUSTERED 
(
	[overtime_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 8/19/2022 12:36:27 PM ******/
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
/****** Object:  Table [dbo].[Reason]    Script Date: 8/19/2022 12:36:27 PM ******/
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
/****** Object:  Table [dbo].[Working_time]    Script Date: 8/19/2022 12:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Working_time](
	[work_ID] [int] IDENTITY(1,1) NOT NULL,
	[work_date] [date] NOT NULL,
	[Employee_id] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Working_time] PRIMARY KEY CLUSTERED 
(
	[work_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Allowance] ON 

INSERT [dbo].[Allowance] ([id], [name]) VALUES (1, N'Tiền điện thoại')
INSERT [dbo].[Allowance] ([id], [name]) VALUES (2, N'Tiền Trách Nhiệm')
SET IDENTITY_INSERT [dbo].[Allowance] OFF
GO
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv01', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv01', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv01', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv01', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv02', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv02', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv02', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv02', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv03', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv03', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv03', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv03', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv04', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv04', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv04', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv04', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv05', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv05', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv05', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv05', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv06', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv06', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv06', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv06', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv07', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv07', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv07', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv07', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv08', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv08', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv08', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv08', 4)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv09', 1)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv09', 2)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv09', 3)
INSERT [dbo].[Emp_Insurance] ([Employee_id], [ins_id]) VALUES (N'nv09', 4)
GO
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv01', N'Lê Hoàng Anh
', 1, 17000000.0000, 5585000.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv02', N'Nguyễn Quang Hòa
', 2, 6000000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv03', N'Hoàng Thị H.Khuyên
', 3, 7000000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv04', N'Nguyễn Công Hương
', 4, 7000000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv05', N'Phạm Thị Thu
', 4, 5800000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv06', N'Vũ Minh Hiếu
', 4, 6500000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv07', N'Phan Trần Hướng
', 4, 5700000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv08', N'Nguyễn Thị Cải
', 4, 5500000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv09', N'Ng.T Xuân Quỳnh
', 4, 5500000.0000, 3306300.0000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv10', N'Lương Thị Cảnh
', 4, 5000000.0000, NULL)
INSERT [dbo].[Employee] ([Employee_id], [Employee_Name], [pID], [base_Salary], [isurance_money]) VALUES (N'nv11', N'Tiêu Đức Hiệp
', 4, 4000000.0000, NULL)
GO
INSERT [dbo].[Employee_Allowance] ([Employee_id], [Allow_id], [amount], [month], [year]) VALUES (N'nv03', 1, 200000.0000, 11, 2020)
INSERT [dbo].[Employee_Allowance] ([Employee_id], [Allow_id], [amount], [month], [year]) VALUES (N'nv04', 2, 500000.0000, 11, 2020)
GO
SET IDENTITY_INSERT [dbo].[Festival] ON 

INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name], [co_feswork]) VALUES (1, CAST(N'2020-09-01' AS Date), CAST(N'2020-09-03' AS Date), N'Ngày Quốc Khánh', 4)
INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name], [co_feswork]) VALUES (3, CAST(N'2020-01-23' AS Date), CAST(N'2020-01-30' AS Date), N'Tết Nguyên Đán', 3)
INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name], [co_feswork]) VALUES (4, CAST(N'2020-04-02' AS Date), CAST(N'2020-04-02' AS Date), N'Giỗ Tổ Hùng Vương', 4)
INSERT [dbo].[Festival] ([fesID], [time_from], [time_to], [Festival_Name], [co_feswork]) VALUES (5, CAST(N'2020-04-30' AS Date), CAST(N'2020-05-01' AS Date), N'Ngày quốc tế lao động', 4)
SET IDENTITY_INSERT [dbo].[Festival] OFF
GO
SET IDENTITY_INSERT [dbo].[Insurance] ON 

INSERT [dbo].[Insurance] ([id], [name], [percent]) VALUES (1, N'BHXH', 0.08)
INSERT [dbo].[Insurance] ([id], [name], [percent]) VALUES (2, N'BHYT', 0.015)
INSERT [dbo].[Insurance] ([id], [name], [percent]) VALUES (3, N'BHTN', 0.01)
INSERT [dbo].[Insurance] ([id], [name], [percent]) VALUES (4, N'KPCD', 0.01)
SET IDENTITY_INSERT [dbo].[Insurance] OFF
GO
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (1, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (2, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (3, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (4, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (5, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (6, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (7, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (8, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (9, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (10, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (11, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (12, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (13, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (14, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (15, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (16, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (17, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (18, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (19, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (20, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (21, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (22, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (23, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (24, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (25, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (26, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (27, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (28, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (29, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (30, N'nv04')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (34, N'nv08')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (35, N'nv08')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (36, N'nv08')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (37, N'nv07')
INSERT [dbo].[over_EMP] ([overtime_id], [Employee_id]) VALUES (39, N'nv01')
GO
SET IDENTITY_INSERT [dbo].[Overtime] ON 

INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (1, CAST(N'2020-11-01' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (2, CAST(N'2020-11-02' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (3, CAST(N'2020-11-03' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (4, CAST(N'2020-11-04' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (5, CAST(N'2020-11-05' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (6, CAST(N'2020-11-06' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (7, CAST(N'2020-11-07' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (8, CAST(N'2020-11-08' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (9, CAST(N'2020-11-09' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (10, CAST(N'2020-11-10' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (11, CAST(N'2020-11-11' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (12, CAST(N'2020-11-12' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (13, CAST(N'2020-11-13' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (14, CAST(N'2020-11-14' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (15, CAST(N'2020-11-15' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (16, CAST(N'2020-11-16' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (17, CAST(N'2020-11-17' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (18, CAST(N'2020-11-18' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (19, CAST(N'2020-11-19' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (20, CAST(N'2020-11-20' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (21, CAST(N'2020-11-21' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (22, CAST(N'2020-11-22' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (23, CAST(N'2020-11-23' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (24, CAST(N'2020-11-24' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (25, CAST(N'2020-11-25' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (26, CAST(N'2020-11-26' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (27, CAST(N'2020-11-27' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (28, CAST(N'2020-11-28' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (29, CAST(N'2020-11-29' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (30, CAST(N'2020-11-30' AS Date), 3, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (34, CAST(N'2020-11-14' AS Date), 4, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (35, CAST(N'2020-11-15' AS Date), 4, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (36, CAST(N'2020-11-26' AS Date), 4, 1)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (37, CAST(N'2020-11-01' AS Date), 3.5, 0)
INSERT [dbo].[Overtime] ([overtime_id], [date], [Hour], [isCheck]) VALUES (39, CAST(N'2020-11-18' AS Date), 2.5, 0)
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
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (1, N'Nghỉ đẻ', 1)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (2, N'Nghỉ đi du lịch với người yêu', 0)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (3, N'Không có lý do', 0)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (4, N'Con Ốm', 1)
INSERT [dbo].[Reason] ([reason_id], [Name], [isCheck]) VALUES (5, N'Đi Công tác', 1)
GO
SET IDENTITY_INSERT [dbo].[Working_time] ON 

INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (94, CAST(N'2020-11-01' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (95, CAST(N'2020-11-02' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (96, CAST(N'2020-11-03' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (97, CAST(N'2020-11-04' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (98, CAST(N'2020-11-05' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (99, CAST(N'2020-11-06' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (100, CAST(N'2020-11-07' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (101, CAST(N'2020-11-08' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (102, CAST(N'2020-11-09' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (103, CAST(N'2020-11-10' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (104, CAST(N'2020-11-11' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (105, CAST(N'2020-11-12' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (106, CAST(N'2020-11-13' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (107, CAST(N'2020-11-14' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (108, CAST(N'2020-11-15' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (109, CAST(N'2020-11-16' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (110, CAST(N'2020-11-17' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (111, CAST(N'2020-11-18' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (112, CAST(N'2020-11-19' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (113, CAST(N'2020-11-20' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (114, CAST(N'2020-11-21' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (115, CAST(N'2020-11-22' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (116, CAST(N'2020-11-23' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (117, CAST(N'2020-11-24' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (118, CAST(N'2020-11-25' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (119, CAST(N'2020-11-26' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (120, CAST(N'2020-11-27' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (121, CAST(N'2020-11-28' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (122, CAST(N'2020-11-29' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (123, CAST(N'2020-11-30' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (124, CAST(N'2020-12-01' AS Date), N'nv01')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (125, CAST(N'2020-11-01' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (126, CAST(N'2020-11-02' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (127, CAST(N'2020-11-03' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (128, CAST(N'2020-11-04' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (129, CAST(N'2020-11-05' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (130, CAST(N'2020-11-06' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (131, CAST(N'2020-11-07' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (132, CAST(N'2020-11-08' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (133, CAST(N'2020-11-09' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (134, CAST(N'2020-11-10' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (135, CAST(N'2020-11-11' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (136, CAST(N'2020-11-12' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (137, CAST(N'2020-11-13' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (138, CAST(N'2020-11-14' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (139, CAST(N'2020-11-15' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (140, CAST(N'2020-11-16' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (141, CAST(N'2020-11-17' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (142, CAST(N'2020-11-18' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (143, CAST(N'2020-11-19' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (144, CAST(N'2020-11-20' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (145, CAST(N'2020-11-21' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (146, CAST(N'2020-11-22' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (147, CAST(N'2020-11-23' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (148, CAST(N'2020-11-24' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (149, CAST(N'2020-11-25' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (150, CAST(N'2020-11-26' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (151, CAST(N'2020-11-27' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (152, CAST(N'2020-11-28' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (153, CAST(N'2020-11-29' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (154, CAST(N'2020-11-30' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (155, CAST(N'2020-12-01' AS Date), N'nv02')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (156, CAST(N'2020-11-01' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (157, CAST(N'2020-11-02' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (158, CAST(N'2020-11-03' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (159, CAST(N'2020-11-04' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (160, CAST(N'2020-11-05' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (161, CAST(N'2020-11-06' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (162, CAST(N'2020-11-07' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (163, CAST(N'2020-11-08' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (164, CAST(N'2020-11-09' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (165, CAST(N'2020-11-10' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (166, CAST(N'2020-11-12' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (167, CAST(N'2020-11-13' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (168, CAST(N'2020-11-14' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (169, CAST(N'2020-11-15' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (170, CAST(N'2020-11-16' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (171, CAST(N'2020-11-17' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (172, CAST(N'2020-11-19' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (173, CAST(N'2020-11-20' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (174, CAST(N'2020-11-21' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (175, CAST(N'2020-11-22' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (176, CAST(N'2020-11-23' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (177, CAST(N'2020-11-24' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (178, CAST(N'2020-11-25' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (179, CAST(N'2020-11-26' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (180, CAST(N'2020-11-27' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (181, CAST(N'2020-11-28' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (182, CAST(N'2020-11-29' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (183, CAST(N'2020-11-30' AS Date), N'nv03')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (184, CAST(N'2020-11-01' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (185, CAST(N'2020-11-02' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (186, CAST(N'2020-11-03' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (187, CAST(N'2020-11-04' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (188, CAST(N'2020-11-05' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (189, CAST(N'2020-11-06' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (190, CAST(N'2020-11-07' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (191, CAST(N'2020-11-08' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (192, CAST(N'2020-11-09' AS Date), N'nv04')
GO
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (193, CAST(N'2020-11-10' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (194, CAST(N'2020-11-11' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (195, CAST(N'2020-11-12' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (196, CAST(N'2020-11-13' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (197, CAST(N'2020-11-14' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (198, CAST(N'2020-11-15' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (199, CAST(N'2020-11-16' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (200, CAST(N'2020-11-17' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (201, CAST(N'2020-11-18' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (202, CAST(N'2020-11-19' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (203, CAST(N'2020-11-20' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (204, CAST(N'2020-11-21' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (205, CAST(N'2020-11-22' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (206, CAST(N'2020-11-23' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (207, CAST(N'2020-11-24' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (208, CAST(N'2020-11-25' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (209, CAST(N'2020-11-26' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (210, CAST(N'2020-11-27' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (211, CAST(N'2020-11-28' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (212, CAST(N'2020-11-29' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (213, CAST(N'2020-11-30' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (214, CAST(N'2020-12-01' AS Date), N'nv04')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (215, CAST(N'2020-11-01' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (216, CAST(N'2020-11-02' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (217, CAST(N'2020-11-03' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (218, CAST(N'2020-11-04' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (219, CAST(N'2020-11-05' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (220, CAST(N'2020-11-06' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (221, CAST(N'2020-11-07' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (222, CAST(N'2020-11-08' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (223, CAST(N'2020-11-09' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (224, CAST(N'2020-11-10' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (225, CAST(N'2020-11-11' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (226, CAST(N'2020-11-12' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (227, CAST(N'2020-11-13' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (228, CAST(N'2020-11-14' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (229, CAST(N'2020-11-16' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (230, CAST(N'2020-11-17' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (231, CAST(N'2020-11-18' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (232, CAST(N'2020-11-19' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (233, CAST(N'2020-11-20' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (234, CAST(N'2020-11-21' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (235, CAST(N'2020-11-22' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (236, CAST(N'2020-11-23' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (237, CAST(N'2020-11-24' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (238, CAST(N'2020-11-25' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (239, CAST(N'2020-11-27' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (240, CAST(N'2020-11-28' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (241, CAST(N'2020-11-29' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (242, CAST(N'2020-11-30' AS Date), N'nv05')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (243, CAST(N'2020-11-01' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (244, CAST(N'2020-11-02' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (245, CAST(N'2020-11-03' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (246, CAST(N'2020-11-04' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (247, CAST(N'2020-11-05' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (248, CAST(N'2020-11-06' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (249, CAST(N'2020-11-07' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (250, CAST(N'2020-11-08' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (251, CAST(N'2020-11-09' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (252, CAST(N'2020-11-10' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (253, CAST(N'2020-11-11' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (254, CAST(N'2020-11-12' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (255, CAST(N'2020-11-13' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (256, CAST(N'2020-11-15' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (257, CAST(N'2020-11-16' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (258, CAST(N'2020-11-17' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (259, CAST(N'2020-11-18' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (260, CAST(N'2020-11-19' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (261, CAST(N'2020-11-20' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (262, CAST(N'2020-11-21' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (263, CAST(N'2020-11-22' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (264, CAST(N'2020-11-23' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (265, CAST(N'2020-11-24' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (266, CAST(N'2020-11-25' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (267, CAST(N'2020-11-26' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (268, CAST(N'2020-11-27' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (269, CAST(N'2020-11-28' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (270, CAST(N'2020-11-29' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (271, CAST(N'2020-11-30' AS Date), N'nv06')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (272, CAST(N'2020-11-01' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (273, CAST(N'2020-11-02' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (274, CAST(N'2020-11-03' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (275, CAST(N'2020-11-04' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (276, CAST(N'2020-11-05' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (277, CAST(N'2020-11-06' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (278, CAST(N'2020-11-07' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (279, CAST(N'2020-11-08' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (280, CAST(N'2020-11-09' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (281, CAST(N'2020-11-10' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (282, CAST(N'2020-11-11' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (283, CAST(N'2020-11-12' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (284, CAST(N'2020-11-13' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (285, CAST(N'2020-11-14' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (286, CAST(N'2020-11-15' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (287, CAST(N'2020-11-16' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (288, CAST(N'2020-11-17' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (289, CAST(N'2020-11-18' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (290, CAST(N'2020-11-19' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (291, CAST(N'2020-11-20' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (292, CAST(N'2020-11-21' AS Date), N'nv07')
GO
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (293, CAST(N'2020-11-22' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (294, CAST(N'2020-11-23' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (295, CAST(N'2020-11-24' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (296, CAST(N'2020-11-25' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (297, CAST(N'2020-11-26' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (298, CAST(N'2020-11-27' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (299, CAST(N'2020-11-28' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (300, CAST(N'2020-11-29' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (301, CAST(N'2020-11-30' AS Date), N'nv07')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (302, CAST(N'2020-11-01' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (303, CAST(N'2020-11-02' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (304, CAST(N'2020-11-03' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (305, CAST(N'2020-11-04' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (306, CAST(N'2020-11-06' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (307, CAST(N'2020-11-07' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (308, CAST(N'2020-11-08' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (309, CAST(N'2020-11-09' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (310, CAST(N'2020-11-10' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (311, CAST(N'2020-11-11' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (312, CAST(N'2020-11-12' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (313, CAST(N'2020-11-13' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (314, CAST(N'2020-11-14' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (315, CAST(N'2020-11-15' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (316, CAST(N'2020-11-16' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (317, CAST(N'2020-11-17' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (318, CAST(N'2020-11-18' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (319, CAST(N'2020-11-19' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (320, CAST(N'2020-11-20' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (321, CAST(N'2020-11-21' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (322, CAST(N'2020-11-22' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (323, CAST(N'2020-11-23' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (324, CAST(N'2020-11-24' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (325, CAST(N'2020-11-25' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (326, CAST(N'2020-11-26' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (327, CAST(N'2020-11-27' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (328, CAST(N'2020-11-28' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (329, CAST(N'2020-11-29' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (330, CAST(N'2020-11-30' AS Date), N'nv08')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (331, CAST(N'2020-11-01' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (332, CAST(N'2020-11-02' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (333, CAST(N'2020-11-04' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (334, CAST(N'2020-11-05' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (335, CAST(N'2020-11-06' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (336, CAST(N'2020-11-07' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (337, CAST(N'2020-11-08' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (338, CAST(N'2020-11-09' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (339, CAST(N'2020-11-10' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (340, CAST(N'2020-11-11' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (341, CAST(N'2020-11-12' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (342, CAST(N'2020-11-13' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (343, CAST(N'2020-11-14' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (344, CAST(N'2020-11-15' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (345, CAST(N'2020-11-16' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (346, CAST(N'2020-11-17' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (347, CAST(N'2020-11-18' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (348, CAST(N'2020-11-19' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (349, CAST(N'2020-11-22' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (350, CAST(N'2020-11-23' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (351, CAST(N'2020-11-24' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (352, CAST(N'2020-11-25' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (353, CAST(N'2020-11-26' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (354, CAST(N'2020-11-27' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (355, CAST(N'2020-11-28' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (356, CAST(N'2020-11-29' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (357, CAST(N'2020-11-30' AS Date), N'nv09')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (358, CAST(N'2020-11-01' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (359, CAST(N'2020-11-02' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (360, CAST(N'2020-11-03' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (361, CAST(N'2020-11-04' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (362, CAST(N'2020-11-05' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (363, CAST(N'2020-11-06' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (364, CAST(N'2020-11-07' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (365, CAST(N'2020-11-08' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (366, CAST(N'2020-11-09' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (367, CAST(N'2020-11-10' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (368, CAST(N'2020-11-11' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (369, CAST(N'2020-11-12' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (370, CAST(N'2020-11-13' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (371, CAST(N'2020-11-14' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (372, CAST(N'2020-11-15' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (373, CAST(N'2020-11-16' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (374, CAST(N'2020-11-18' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (375, CAST(N'2020-11-19' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (376, CAST(N'2020-11-20' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (377, CAST(N'2020-11-21' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (378, CAST(N'2020-11-22' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (379, CAST(N'2020-11-23' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (380, CAST(N'2020-11-24' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (381, CAST(N'2020-11-25' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (382, CAST(N'2020-11-26' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (383, CAST(N'2020-11-27' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (384, CAST(N'2020-11-28' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (385, CAST(N'2020-11-29' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (386, CAST(N'2020-11-30' AS Date), N'nv10')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (387, CAST(N'2020-11-01' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (388, CAST(N'2020-11-02' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (389, CAST(N'2020-11-03' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (390, CAST(N'2020-11-04' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (391, CAST(N'2020-11-05' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (392, CAST(N'2020-11-06' AS Date), N'nv11')
GO
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (393, CAST(N'2020-11-07' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (394, CAST(N'2020-11-08' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (395, CAST(N'2020-11-09' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (396, CAST(N'2020-11-10' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (397, CAST(N'2020-11-11' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (398, CAST(N'2020-11-12' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (399, CAST(N'2020-11-13' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (400, CAST(N'2020-11-14' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (401, CAST(N'2020-11-15' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (402, CAST(N'2020-11-16' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (403, CAST(N'2020-11-17' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (404, CAST(N'2020-11-18' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (405, CAST(N'2020-11-19' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (406, CAST(N'2020-11-20' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (407, CAST(N'2020-11-21' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (408, CAST(N'2020-11-22' AS Date), N'nv11')
INSERT [dbo].[Working_time] ([work_ID], [work_date], [Employee_id]) VALUES (409, CAST(N'2020-11-23' AS Date), N'nv11')
SET IDENTITY_INSERT [dbo].[Working_time] OFF
GO
ALTER TABLE [dbo].[Emp_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Insurance_Employee] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Emp_Insurance] CHECK CONSTRAINT [FK_Emp_Insurance_Employee]
GO
ALTER TABLE [dbo].[Emp_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Insurance_Insurance] FOREIGN KEY([ins_id])
REFERENCES [dbo].[Insurance] ([id])
GO
ALTER TABLE [dbo].[Emp_Insurance] CHECK CONSTRAINT [FK_Emp_Insurance_Insurance]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([pID])
REFERENCES [dbo].[Position] ([pID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Employee_Allowance]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Allowance_Allowance] FOREIGN KEY([Allow_id])
REFERENCES [dbo].[Allowance] ([id])
GO
ALTER TABLE [dbo].[Employee_Allowance] CHECK CONSTRAINT [FK_Employee_Allowance_Allowance]
GO
ALTER TABLE [dbo].[Employee_Allowance]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Allowance_Employee] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Employee_Allowance] CHECK CONSTRAINT [FK_Employee_Allowance_Employee]
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
ALTER TABLE [dbo].[over_EMP]  WITH CHECK ADD  CONSTRAINT [FK_over_EMP_Employee] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[over_EMP] CHECK CONSTRAINT [FK_over_EMP_Employee]
GO
ALTER TABLE [dbo].[over_EMP]  WITH CHECK ADD  CONSTRAINT [FK_over_EMP_Overtime] FOREIGN KEY([overtime_id])
REFERENCES [dbo].[Overtime] ([overtime_id])
GO
ALTER TABLE [dbo].[over_EMP] CHECK CONSTRAINT [FK_over_EMP_Overtime]
GO
ALTER TABLE [dbo].[Working_time]  WITH CHECK ADD  CONSTRAINT [FK_Working_time_Employee] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[Employee] ([Employee_id])
GO
ALTER TABLE [dbo].[Working_time] CHECK CONSTRAINT [FK_Working_time_Employee]
GO
USE [master]
GO
ALTER DATABASE [PRJ_BL5_Assignment] SET  READ_WRITE 
GO
