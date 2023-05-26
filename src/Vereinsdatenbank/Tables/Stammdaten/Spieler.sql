CREATE TABLE [dbo].[Spieler]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [PassNr] INT NOT NULL, 
    [Name] VARCHAR(100) NOT NULL, 
    [Aktiv] BIT NOT NULL DEFAULT 1, 
    [VereinID] INT NULL, 
    CONSTRAINT [PK_Spieler] PRIMARY KEY ([Id]), 
    CONSTRAINT [AK_Spieler_PassNr] UNIQUE (PassNr), 
    CONSTRAINT [FK_Spieler_Vereine] FOREIGN KEY ([VereinID]) REFERENCES [Vereine]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Verbands PassNr des Spielers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Spieler',
    @level2type = N'COLUMN',
    @level2name = N'PassNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name des Spielers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Spieler',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Flag, ob Spieler ein aktiv spielendes Mitglied ist',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Spieler',
    @level2type = N'COLUMN',
    @level2name = N'Aktiv'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Vereine.ID. Zuordnung, zu welchem Verein der Spieler gehört',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Spieler',
    @level2type = N'COLUMN',
    @level2name = 'VereinID'