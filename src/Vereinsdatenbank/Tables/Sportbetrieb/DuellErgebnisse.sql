CREATE TABLE [dbo].[DuellErgebnisse]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [DuellId] INT NOT NULL, 
    [EndVolleGesamtHeim] INT NOT NULL DEFAULT 0, 
    [EndVolleGesamtGast] INT NOT NULL DEFAULT 0, 
    [EndAbraeumenGesamtHeim] INT NOT NULL DEFAULT 0, 
    [EndAbraeumenGesamtGast] INT NOT NULL DEFAULT 0, 
    [EndFehlHeim] INT NOT NULL DEFAULT 0, 
    [EndFehlGast] INT NOT NULL DEFAULT 0, 
    [EndSPHeim] FLOAT NOT NULL DEFAULT 0.0, 
    [EndSPGast] FLOAT NOT NULL DEFAULT 0.0, 
    [EndMPHeim] FLOAT NOT NULL DEFAULT 0.0, 
    [EndMPGast] FLOAT NOT NULL DEFAULT 0.0, 
    [EndGesamtHeim] INT NOT NULL DEFAULT 0, 
    [EndGesamtGast] INT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_DuellErgebnisse] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_DuellErgebnisse_Duelle] FOREIGN KEY ([DuellId]) REFERENCES [Duelle]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Duelle.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'DuellId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Erspieltes Volle Heimspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndVolleGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Erspieltes Volle Gastspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndVolleGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen Spieler Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndAbraeumenGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen Spieler Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndAbraeumenGesamtGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Gesamte Fehl Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndFehlHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Gesamte Fehl Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndFehlGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Satzpunkte Heimspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndSPHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Satzpunkte Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndSPGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'MP Heim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndMPHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'MP Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndMPGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Endergebnis Heimspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndGesamtHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Endergebnis Gastspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DuellErgebnisse',
    @level2type = N'COLUMN',
    @level2name = N'EndGesamtGast'