CREATE TABLE [dbo].[Trainingseinheiten]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [Datum] DATE NOT NULL, 
    [Erstelldatum] DATE NOT NULL DEFAULT GETDATE(), 
    [Saison] VARCHAR(25) NULL, 
    [SonstigeBemerkungen] VARCHAR(500) NULL, 
    [BemerkungenUeberLetztesSpiel] VARCHAR(250) NULL, 
    CONSTRAINT [PK_Trainingseinheiten] PRIMARY KEY (Id) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'TrainingsNr',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum der Trainingseinheit',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = N'Datum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Erstelldatum',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = N'Erstelldatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Saison in der das Training stattfindet',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = N'Saison'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Sonstige Bemerkungen',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = 'SonstigeBemerkungen'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Notizen zu letztem Spiel',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Trainingseinheiten',
    @level2type = N'COLUMN',
    @level2name = N'BemerkungenUeberLetztesSpiel'
GO

CREATE INDEX [IX_Trainingseinheiten_Id] ON [dbo].[Trainingseinheiten] (Id)
