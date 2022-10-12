
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/12/2022 18:21:27
-- Generated from EDMX file: C:\Users\kamil\source\repos\ProgramKosolowyZadanie\ProgramKosolowyZadanie\Model1.edmx
-- --------------------------------------------------
SET QUOTED_IDENTIFIER OFF;
GO
USE [Aplication_Base];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Osoby__id_matki__25869641]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Osoby] DROP CONSTRAINT [FK__Osoby__id_matki__25869641];
GO
IF OBJECT_ID(N'[dbo].[FK__Osoby__id_ojca__24927208]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Osoby] DROP CONSTRAINT [FK__Osoby__id_ojca__24927208];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Osoby]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Osoby];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Osoby'
CREATE TABLE [dbo].[Osoby] (
    [id_osoby] int  NOT NULL,
    [imie] nvarchar(25)  NOT NULL,
    [nazwisko] nvarchar(30)  NOT NULL,
    [plec] char(1)  NOT NULL,
    [id_ojca] int  NULL,
    [id_matki] int  NULL,
    [rok_urodzenia] int  NOT NULL
);
GO


-- Creating reacord
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(1,'Florian','Kowal','M',null,null,1890);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(2,'Boles³aw','Kowal','M',1,3,1920);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(3,'Anna','Kowal','K',null,null,1891);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(4,'Franciszek','Gorza³a','M',1,3,1922);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(5,'Anna','Piotrowska','K',null,null,1921);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(6,'Aleksander','Gada³a','M',2,5,1942);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(7,'Barbara','Gada³a','K',2,5,1944);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(8,'Jolanta','Gada³a','K',2,5,1945);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(9,'Leszek','Pol','M',null,8,1974);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(10,'Piotr','Gada³a','M',6,null,1968);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(11,'Krystyna','Krak','K',4,null,1955);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(12,'Piotr','Krak','M',null,11,1979);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(13,'Aleksander','Wit','M',1,3,1924);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(14,'Andrzej','Wit','M',13,null,1947);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(15,'Zbigniew','Wit','M',13,null,1946);
Insert into Osoby(id_osoby,imie,nazwisko,plec,id_ojca,id_matki,rok_urodzenia)
Values(16,'Ma³gorzata','Weso³a','K',10,null,1994);


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_osoby] in table 'Osoby'
ALTER TABLE [dbo].[Osoby]
ADD CONSTRAINT [PK_Osoby]
    PRIMARY KEY CLUSTERED ([id_osoby] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_matki] in table 'Osoby'
ALTER TABLE [dbo].[Osoby]
ADD CONSTRAINT [FK__Osoby__id_matki__25869641]
    FOREIGN KEY ([id_matki])
    REFERENCES [dbo].[Osoby]
        ([id_osoby])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Osoby__id_matki__25869641'
CREATE INDEX [IX_FK__Osoby__id_matki__25869641]
ON [dbo].[Osoby]
    ([id_matki]);
GO

-- Creating foreign key on [id_ojca] in table 'Osoby'
ALTER TABLE [dbo].[Osoby]
ADD CONSTRAINT [FK__Osoby__id_ojca__24927208]
    FOREIGN KEY ([id_ojca])
    REFERENCES [dbo].[Osoby]
        ([id_osoby])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Osoby__id_ojca__24927208'
CREATE INDEX [IX_FK__Osoby__id_ojca__24927208]
ON [dbo].[Osoby]
    ([id_ojca]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------