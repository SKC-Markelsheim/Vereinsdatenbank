CREATE TABLE [dbo].[Saisons]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [Saison] VARCHAR(10) NOT NULL, 
    [ZeitraumVon] DATE NOT NULL, 
    [ZeitraumBis] DATE NOT NULL, 
    CONSTRAINT [PK_Saisons] PRIMARY KEY ([Id]) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'PK des Datensatzes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saisons',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Saisonbeschreibung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saisons',
    @level2type = N'COLUMN',
    @level2name = N'Saison'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Saisonbeginn',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saisons',
    @level2type = N'COLUMN',
    @level2name = N'ZeitraumVon'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Saisonende - letztes Spiel/Wettkampf für den SKC allgemein',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saisons',
    @level2type = N'COLUMN',
    @level2name = N'ZeitraumBis'
GO

CREATE UNIQUE INDEX [IX_Saisons_SaisonUQ] ON [dbo].[Saisons] ([Saison] DESC)
