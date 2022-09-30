
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/30/2022 11:11:09
-- Generated from EDMX file: C:\Users\saivignesh\source\repos\Sep29M\dal_banking\Bankmodel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Bank2];
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

-- Creating table 'Borrowers'
CREATE TABLE [dbo].[Borrowers] (
    [BorrowerId] int IDENTITY(1,1) NOT NULL,
    [BorrowerName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Loans'
CREATE TABLE [dbo].[Loans] (
    [LoanId] int IDENTITY(1,1) NOT NULL,
    [Amount] float  NOT NULL,
    [Interest] float  NOT NULL,
    [BorrowerId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BorrowerId] in table 'Borrowers'
ALTER TABLE [dbo].[Borrowers]
ADD CONSTRAINT [PK_Borrowers]
    PRIMARY KEY CLUSTERED ([BorrowerId] ASC);
GO

-- Creating primary key on [LoanId] in table 'Loans'
ALTER TABLE [dbo].[Loans]
ADD CONSTRAINT [PK_Loans]
    PRIMARY KEY CLUSTERED ([LoanId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BorrowerId] in table 'Loans'
ALTER TABLE [dbo].[Loans]
ADD CONSTRAINT [FK_BorrowerLoan]
    FOREIGN KEY ([BorrowerId])
    REFERENCES [dbo].[Borrowers]
        ([BorrowerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BorrowerLoan'
CREATE INDEX [IX_FK_BorrowerLoan]
ON [dbo].[Loans]
    ([BorrowerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------