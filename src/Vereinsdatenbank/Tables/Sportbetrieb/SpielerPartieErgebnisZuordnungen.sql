CREATE TABLE [dbo].[SpielerPartieErgebnisZuordnungen]
(
	[Id]        INT IDENTITY(1,1)   NOT NULL, 
    [PartieID]  INT                 NOT NULL, 
    [SpielerID] INT                 NULL, 
    [Ergebnis]  INT                 NULL, 
    CONSTRAINT [PK_SpielerPartieErgebnisZuordnungen] PRIMARY KEY (Id), 
    CONSTRAINT [FK_SpielerPartieErgebnisZuordnungen_Mitglieder] FOREIGN KEY (SpielerID) REFERENCES [Mitglieder]([Id]), 
    CONSTRAINT [FK_SpielerPartieErgebnisZuordnungen_Partien] FOREIGN KEY ([PartieID]) REFERENCES [Partien]([Id])
)

GO

CREATE INDEX [IX_SpielerPartieErgebnisZuordnungen_PartieSpieler] ON [dbo].[SpielerPartieErgebnisZuordnungen] (PartieID ASC, SpielerID ASC)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel der Tabelle',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SpielerPartieErgebnisZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Partien.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SpielerPartieErgebnisZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'PartieID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Mitglieder.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SpielerPartieErgebnisZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'SpielerID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Ergebnis, das in der jeweiligen Partie vom zugeordneten Spieler erspielt worden ist',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SpielerPartieErgebnisZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'Ergebnis'