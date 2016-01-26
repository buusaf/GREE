
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/26/2016 22:52:23
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

IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_MonthlyPaymentPaymentType_MonthlyPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPaymentPaymentType] DROP CONSTRAINT [FK_MonthlyPaymentPaymentType_MonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_MonthlyPaymentPaymentType_PaymentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPaymentPaymentType] DROP CONSTRAINT [FK_MonthlyPaymentPaymentType_PaymentType];
GO
IF OBJECT_ID(N'[dbo].[FK_UserProfileMonthlyPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlyPayment] DROP CONSTRAINT [FK_UserProfileMonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_UserProfileMonthlySallary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonthlySallary] DROP CONSTRAINT [FK_UserProfileMonthlySallary];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[MonthlyPayment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlyPayment];
GO
IF OBJECT_ID(N'[dbo].[MonthlyPaymentPaymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlyPaymentPaymentType];
GO
IF OBJECT_ID(N'[dbo].[MonthlySallary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonthlySallary];
GO
IF OBJECT_ID(N'[dbo].[PaymentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentType];
GO
IF OBJECT_ID(N'[dbo].[UserProfile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProfile];
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

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'MonthlyPaymentPaymentType'
CREATE TABLE [dbo].[MonthlyPaymentPaymentType] (
    [MonthlyPayment_Id] int  NOT NULL,
    [PaymentType_Id] int  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
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

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [MonthlyPayment_Id], [PaymentType_Id] in table 'MonthlyPaymentPaymentType'
ALTER TABLE [dbo].[MonthlyPaymentPaymentType]
ADD CONSTRAINT [PK_MonthlyPaymentPaymentType]
    PRIMARY KEY CLUSTERED ([MonthlyPayment_Id], [PaymentType_Id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
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

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------