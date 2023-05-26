CREATE TABLE [dbo].[Protokollierungen]
(
	[Id] INT NOT NULL IDENTITY(1,1)

	CONSTRAINT [PK_Protokollierungen] PRIMARY KEY ([Id] ASC), 
    [AenderungsArt] INT NOT NULL, 
    [Erfassungsdatum] DATETIME NOT NULL DEFAULT GETDATE(), 
    [Tabelle] VARCHAR(50) NOT NULL, 
    [Bemerkung] VARCHAR(100) NULL, 
    [WertAlt] VARCHAR(100) NULL, 
    [WertNeu] VARCHAR(100) NULL,
    [PKTabelle] INT NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primarschlüssel des Protokollierungseintrags',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Um was für eine Protokollierung handelt es sich: 1 - Anlage, 2 - Bearbeitung, 3 - Löschen',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'AenderungsArt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zeitpunkt der Protokollierung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'Erfassungsdatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Welche Tabelle wurde verändert',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'Tabelle'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Bemerkungen, was genau verändert wurde',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'Bemerkung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Alter Wert des Datensatzes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'WertAlt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Neuer Wert des Datensatzes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'WertNeu'
GO

CREATE INDEX [IX_Protokollierungen_Tabelle] ON [dbo].[Protokollierungen] (Tabelle)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID des zu protokollierenden Datensatzes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Protokollierungen',
    @level2type = N'COLUMN',
    @level2name = N'PKTabelle'