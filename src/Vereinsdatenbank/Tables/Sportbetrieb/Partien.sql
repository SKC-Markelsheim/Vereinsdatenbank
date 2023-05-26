CREATE TABLE [dbo].[Partien]
(
	[Id] INT IDENTITY(1,1) NOT NULL , 
    [Anlagedatum] DATETIME NOT NULL DEFAULT GETDATE(), 
    [Spieldatum] DATETIME NULL DEFAULT '01.01.2000', 
    [Heim] INT NULL, 
    [Gast] INT NULL, 
    [Spielort] VARCHAR(100) NULL, 
    [LivetickerId] INT NULL, 
    [LigaZuordnung] INT NOT NULL, 
    [IstHeimspiel] BIT NOT NULL DEFAULT 1, 
    
    [PartieArt] INT NOT NULL DEFAULT 1, 
    [Liga] VARCHAR(100) NULL, 
    [SaisonId] INT NULL, 
    CONSTRAINT [PK_Partie] PRIMARY KEY (Id), 
    CONSTRAINT [FK_Partie_Liveticker] FOREIGN KEY ([LivetickerId]) REFERENCES [Liveticker]([Id]), 
    CONSTRAINT [FK_Partien_LigaMannschaftZuordnungen] FOREIGN KEY ([LigaZuordnung]) REFERENCES [LigaMannschaftZuordnungen]([Id]), 
    CONSTRAINT [FK_Partien_Mannschaften1] FOREIGN KEY ([Gast]) REFERENCES [Mannschaften]([Id]),
    CONSTRAINT [FK_Partien_Mannschaften2] FOREIGN KEY ([Heim]) REFERENCES [Mannschaften]([Id]), 
    CONSTRAINT [FK_Partien_PartieArten] FOREIGN KEY ([PartieArt]) REFERENCES [PartieArten]([Id]), 
    CONSTRAINT [FK_Partien_Saisons] FOREIGN KEY ([SaisonId]) REFERENCES [Saisons]([Id])
)
GO

CREATE INDEX [IX_Partie_Id] ON [dbo].[Partien] (Id)

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum und Uhrzeit der Anlage des Spiels',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'Anlagedatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum und Uhrzeit, wann das Spiel anfängt',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'Spieldatum'

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Austragungsstätte des Spiels',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'Spielort'
GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Liveticker',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'LivetickerId'
GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf LigaMannschaftZuordnungen.ID -> Zeigt, in welcher Liga diese Partie gespielt wurde',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'LigaZuordnung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Flag, ob es sich bei der Partie um ein Heimspiel handelt',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'IstHeimspiel'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Mannschaften.ID: Gibt Auskunft über die Gegnermannschaft',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = 'Gast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Mannschaften.ID: Gibt Auskunft über die Heimmannschaft',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = 'Heim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf PartieArten',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'PartieArt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name der Liga, in der die Partie ausgetragen wurde (Historischer Wert)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = N'Liga'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Saisons',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Partien',
    @level2type = N'COLUMN',
    @level2name = 'SaisonId'