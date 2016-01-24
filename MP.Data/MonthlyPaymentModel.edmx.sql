
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2016 19:35:51
-- Generated from EDMX file: D:\Work\GREE\MP.Data\MonthlyPaymentModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MonthlyCalculator];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserProfileMonthlySallary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlySallary] DROP CONSTRAINT [FK_UserProfileMonthlySallary];
GO
IF OBJECT_ID(N'[dbo].[FK_UserProfileMonthlyPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPayment] DROP CONSTRAINT [FK_UserProfileMonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_MonthlyPaymentPaymentType_MonthlyPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPaymentPaymentType] DROP CONSTRAINT [FK_MonthlyPaymentPaymentType_MonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_MonthlyPaymentPaymentType_PaymentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPaymentPaymentType] DROP CONSTRAINT [FK_MonthlyPaymentPaymentType_PaymentType];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[MonthlyPayment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[UserProfile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProfile];
GO
IF OBJECT_ID(N'[dbo].[MonthlySallary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlySallary];
GO
IF OBJECT_ID(N'[dbo].[PaymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentType];
GO
IF OBJECT_ID(N'[dbo].[MonthlyPaymentPaymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlyPaymentPaymentType];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'MonthlyPayment'
CREATE TABLE [dbo].[MonthlyPayment] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Year] int  NOT NULL,
    [Month] int  NOT NULL,
    [DateOfTransaction] datetime  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [UserProfileId] int  NOT NULL
);
GO

-- Creating table 'UserProfile'
CREATE TABLE [dbo].[UserProfile] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'MonthlySallary'
CREATE TABLE [dbo].[MonthlySallary] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Month] int  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [UserProfileId] int  NOT NULL
);
GO

-- Creating table 'PaymentType'
CREATE TABLE [dbo].[PaymentType] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'MonthlyPaymentPaymentType'
CREATE TABLE [dbo].[MonthlyPaymentPaymentType] (
    [MonthlyPayment_Id] int  NOT NULL,
    [PaymentType_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'MonthlyPayment'
ALTER TABLE [dbo].[MonthlyPayment]
ADD CONSTRAINT [PK_MonthlyPayment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserProfile'
ALTER TABLE [dbo].[UserProfile]
ADD CONSTRAINT [PK_UserProfile]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MonthlySallary'
ALTER TABLE [dbo].[MonthlySallary]
ADD CONSTRAINT [PK_MonthlySallary]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PaymentType'
ALTER TABLE [dbo].[PaymentType]
ADD CONSTRAINT [PK_PaymentType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MonthlyPayment_Id], [PaymentType_Id] in table 'MonthlyPaymentPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentPaymentType]
ADD CONSTRAINT [PK_MonthlyPaymentPaymentType]
    PRIMARY KEY CLUSTERED ([MonthlyPayment_Id], [PaymentType_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserProfileId] in table 'MonthlySallary'
ALTER TABLE [dbo].[MonthlySallary]
ADD CONSTRAINT [FK_UserProfileMonthlySallary]
    FOREIGN KEY ([UserProfileId])
    REFERENCES [dbo].[UserProfile]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserProfileMonthlySallary'
CREATE INDEX [IX_FK_UserProfileMonthlySallary]
ON [dbo].[MonthlySallary]
    ([UserProfileId]);
GO

-- Creating foreign key on [UserProfileId] in table 'MonthlyPayment'
ALTER TABLE [dbo].[MonthlyPayment]
ADD CONSTRAINT [FK_UserProfileMonthlyPayment]
    FOREIGN KEY ([UserProfileId])
    REFERENCES [dbo].[UserProfile]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserProfileMonthlyPayment'
CREATE INDEX [IX_FK_UserProfileMonthlyPayment]
ON [dbo].[MonthlyPayment]
    ([UserProfileId]);
GO

-- Creating foreign key on [MonthlyPayment_Id] in table 'MonthlyPaymentPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentPaymentType]
ADD CONSTRAINT [FK_MonthlyPaymentPaymentType_MonthlyPayment]
    FOREIGN KEY ([MonthlyPayment_Id])
    REFERENCES [dbo].[MonthlyPayment]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PaymentType_Id] in table 'MonthlyPaymentPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentPaymentType]
ADD CONSTRAINT [FK_MonthlyPaymentPaymentType_PaymentType]
    FOREIGN KEY ([PaymentType_Id])
    REFERENCES [dbo].[PaymentType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MonthlyPaymentPaymentType_PaymentType'
CREATE INDEX [IX_FK_MonthlyPaymentPaymentType_PaymentType]
ON [dbo].[MonthlyPaymentPaymentType]
    ([PaymentType_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------