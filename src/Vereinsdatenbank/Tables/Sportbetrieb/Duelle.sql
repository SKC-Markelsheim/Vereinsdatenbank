CREATE TABLE [dbo].[Duelle]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [SpielerPos] INT NOT NULL, 
    [SpielerID] INT NOT NULL, 
    [PartieID] INT NOT NULL, 
    [Auswechslung] INT NULL, 
    [Bemerkung] VARCHAR(250) NULL, 
    [GegnerID] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Duelle] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Duelle_Mitglieder] FOREIGN KEY ([SpielerID]) REFERENCES [Mitglieder]([Id]), 
    CONSTRAINT [FK_Duelle_Partien] FOREIGN KEY ([PartieID]) REFERENCES [Partien]([Id]), 
    CONSTRAINT [FK_Duelle_Spieler] FOREIGN KEY ([GegnerID]) REFERENCES [Spieler]([Id])

)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Auf welcher Position (1-6) spielt der Spieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'SpielerPos'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Mitglieder.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'SpielerID'
GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Partien.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'PartieID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Mitglieder.ID -> Auswechslung eines Heimspielers durch anderen aktiven Spieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'Auswechslung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Bemerkung zum Duell (Auswechslung, Aufgabe, etc.)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'Bemerkung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Spieler.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Duelle',
    @level2type = N'COLUMN',
    @level2name = N'GegnerID'
GO

CREATE INDEX [IX_Duelle_Mitglieder] ON [dbo].[Duelle] ([SpielerID])

GO

CREATE INDEX [IX_Duelle_Partien] ON [dbo].[Duelle] ([PartieID])

