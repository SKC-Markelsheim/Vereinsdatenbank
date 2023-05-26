CREATE TABLE [dbo].[Saetze]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [DuellId] INT NOT NULL, 
    [SatzNr] INT NOT NULL, 
    [VolleHeim] INT NOT NULL DEFAULT 0, 
    [VolleGast] INT NOT NULL DEFAULT 0, 
    [AbraeumenHeim] INT NOT NULL DEFAULT 0, 
    [AbraeumenGast] INT NOT NULL DEFAULT 0, 
    [FehlHeim] INT NOT NULL DEFAULT 0, 
    [FehlGast] INT NOT NULL DEFAULT 0, 
    [SPHeim] FLOAT NOT NULL DEFAULT 0.0, 
    [SPGast] FLOAT NOT NULL DEFAULT 0.0, 
    CONSTRAINT [PK_Saetze] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Saetze_Duelle] FOREIGN KEY ([DuellId]) REFERENCES [Duelle]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Duelle.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'DuellId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nummer des Satzes (1-4)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'SatzNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Volle des Heimspielers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'VolleHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Volle des Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'VolleGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen des Heimspielers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'AbraeumenHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Abräumen des Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'AbraeumenGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fehlanzahl Heimspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'FehlHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fehl Gast',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'FehlGast'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SP für den Heimspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'SPHeim'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SP für den Gastspieler',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Saetze',
    @level2type = N'COLUMN',
    @level2name = N'SPGast'