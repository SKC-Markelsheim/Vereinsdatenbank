CREATE TABLE [dbo].[Liveticker]
(
	[Id]            INT             NOT NULL IDENTITY(1,1), 
    [Datum]         DATE            NOT NULL, 
    [Heim]          VARCHAR(50)     NOT NULL, 
    [Gast]          VARCHAR(50)     NOT NULL, 
    [TickerLink]    VARCHAR(150)    NOT NULL, 
    [TickerID]      VARCHAR(25)     NOT NULL, 
    [Saison]        VARCHAR(50)     NULL, 
    [Mannschaft]    CHAR(1)         NULL DEFAULT 1, 
    [IstWkbvPokal]  BIT             NOT NULL DEFAULT 0, 
    [PartieArt]     INT             NOT NULL, 
    CONSTRAINT [PK_Liveticker] PRIMARY KEY (Id), 
    CONSTRAINT [FK_Liveticker_PartieArten] FOREIGN KEY ([PartieArt]) REFERENCES [PartieArten]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum des Spieltags',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Datum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Heimmannschaft',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Heim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Gastmannschaft',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Gast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'URL des Livetickers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'TickerLink'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID der TickerURL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'TickerID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Saison, in der der Ticker angelegt wurde',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Saison'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Entsprechende Mannschaft für den Ticker',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'Mannschaft'
GO

CREATE INDEX [IX_Livetickeruebersicht_Datum] ON [dbo].[Liveticker] (Datum)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Flag, ob es sich um ein WKBV-Pokalspiel handelt.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'IstWkbvPokal'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Verweis auf Tabelle PartieArten',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Liveticker',
    @level2type = N'COLUMN',
    @level2name = N'PartieArt'