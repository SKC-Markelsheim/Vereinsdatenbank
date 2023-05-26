CREATE TABLE [dbo].[AbsolvierteUebungen]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [TrainingsNr] INT NOT NULL, 
    [UebungsNr] INT NOT NULL, 
    CONSTRAINT [FK_AbsolvierteUebungen_ToTable] FOREIGN KEY (TrainingsNr) REFERENCES Trainingseinheiten(Id), 
    CONSTRAINT [FK_AbsolvierteUebungen_ToTable_1] FOREIGN KEY (UebungsNr) REFERENCES Uebungen(Id), 
    CONSTRAINT [PK_AbsolvierteUebungen] PRIMARY KEY (Id)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID Übung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AbsolvierteUebungen',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel zu Trainingseinheiten.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AbsolvierteUebungen',
    @level2type = N'COLUMN',
    @level2name = N'TrainingsNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel zu Uebungen.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AbsolvierteUebungen',
    @level2type = N'COLUMN',
    @level2name = N'UebungsNr'