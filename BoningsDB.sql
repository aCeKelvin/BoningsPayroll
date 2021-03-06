USE [master]
GO
/****** Object:  Database [BONINGS]    Script Date: 03/02/2015 00:09:39 ******/
CREATE DATABASE [BONINGS] ON  PRIMARY 
( NAME = N'BONINGS', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\BONINGS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BONINGS_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\BONINGS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Latin1_General_CI_AI
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'BONINGS', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BONINGS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BONINGS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BONINGS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BONINGS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BONINGS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BONINGS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BONINGS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BONINGS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BONINGS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BONINGS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BONINGS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BONINGS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BONINGS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BONINGS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BONINGS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BONINGS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BONINGS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BONINGS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BONINGS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BONINGS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BONINGS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BONINGS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BONINGS] SET  READ_WRITE 
GO
ALTER DATABASE [BONINGS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BONINGS] SET  MULTI_USER 
GO
ALTER DATABASE [BONINGS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BONINGS] SET DB_CHAINING OFF 