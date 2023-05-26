CREATE TABLE [dbo].[Mitgliedsbeitraege]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [MitgliedsID] INT NOT NULL, 
    [ZuZahlenderBeitrag] INT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Mitgliedsbeitraege_Mitglieder] FOREIGN KEY (MitgliedsID) REFERENCES Mitglieder(Id), 
    CONSTRAINT [FK_Mitgliedsbeitraege_Beitragssaetze] FOREIGN KEY (ZuZahlenderBeitrag) REFERENCES Beitragssaetze(Id), 
    CONSTRAINT [PK_Mitgliedsbeitraege] PRIMARY KEY (Id)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Mitglieder',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitgliedsbeitraege',
    @level2type = N'COLUMN',
    @level2name = N'MitgliedsID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Tabelle Beitragssaetze',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitgliedsbeitraege',
    @level2type = N'COLUMN',
    @level2name = N'ZuZahlenderBeitrag'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel der Tabelle',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitgliedsbeitraege',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO

CREATE INDEX [IX_Mitgliedsbeitraege_MitgliedsID] ON [dbo].[Mitgliedsbeitraege] (MitgliedsID)
