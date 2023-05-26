CREATE TABLE [dbo].[PartieDetails]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [PartieId] INT NOT NULL,
	[MPHeim] DECIMAL(18, 2) NOT NULL DEFAULT 0.0, 
    [MPGast] DECIMAL(18, 2) NOT NULL DEFAULT 0.0, 
    [SPHeim] DECIMAL(18, 2) NOT NULL DEFAULT 0.0, 
    [SPGast] DECIMAL(18, 2) NOT NULL DEFAULT 0.0, 
    [HolzGesamtHeim] INT NOT NULL DEFAULT 0, 
    [HolzGesamtGast] INT NOT NULL DEFAULT 0, 
    [VolleGesamtHeim] INT NOT NULL DEFAULT 0, 
    [VolleGesamtGast] INT NOT NULL DEFAULT 0, 
    [AbraeumenGesamtHeim] INT NOT NULL DEFAULT 0, 
    [AbraeumenGesamtGast] INT NOT NULL DEFAULT 0, 
    [FehlGesamtHeim] INT NOT NULL DEFAULT 0, 
    [FehlGesamtGast] INT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_PartieDetails] PRIMARY KEY (Id), 
    CONSTRAINT [FK_PartieDetails_Partie] FOREIGN KEY (PartieId) REFERENCES Partien(Id)
)
GO 

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mannschaftspunkte Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'MPHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mannschaftspunkte Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'MPGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SatzpunkteGesamt Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'SPHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SatzpunkteGesamt Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'SPGast'
GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Holzgesamt Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'HolzGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Holzgesamt Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = 'HolzGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Gesamte Volle Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'VolleGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Gesamte Volle Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'VolleGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'AbraeumenGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'AbraeumenGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fehl Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'FehlGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fehl Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'FehlGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Partie',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieDetails',
    @level2type = N'COLUMN',
    @level2name = N'PartieId'