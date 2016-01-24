
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2016 13:44:51
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


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
    [Email] nvarchar(max)  NOT NULL,
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

-- Creating table 'MonthlyPaymentType'
CREATE TABLE [dbo].[MonthlyPaymentType] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MonthlyPaymentId] int  NOT NULL,
    [PaymentTypeId] int  NOT NULL
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

-- Creating primary key on [Id] in table 'MonthlyPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentType]
ADD CONSTRAINT [PK_MonthlyPaymentType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
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

-- Creating foreign key on [MonthlyPaymentId] in table 'MonthlyPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentType]
ADD CONSTRAINT [FK_MonthlyPaymentMonthlyPaymentType]
    FOREIGN KEY ([MonthlyPaymentId])
    REFERENCES [dbo].[MonthlyPayment]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MonthlyPaymentMonthlyPaymentType'
CREATE INDEX [IX_FK_MonthlyPaymentMonthlyPaymentType]
ON [dbo].[MonthlyPaymentType]
    ([MonthlyPaymentId]);
GO

-- Creating foreign key on [PaymentTypeId] in table 'MonthlyPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentType]
ADD CONSTRAINT [FK_PaymentTypeMonthlyPaymentType]
    FOREIGN KEY ([PaymentTypeId])
    REFERENCES [dbo].[PaymentType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaymentTypeMonthlyPaymentType'
CREATE INDEX [IX_FK_PaymentTypeMonthlyPaymentType]
ON [dbo].[MonthlyPaymentType]
    ([PaymentTypeId]);
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------