CREATE TABLE [dbo].[Benutzer]
(
	[ID] INT NOT NULL  IDENTITY(1,1), 
    [Benutzername] VARCHAR(50) NOT NULL, 
    [Passwort] VARCHAR(20) NOT NULL, 
    [MitgliedID] INT NOT NULL, 
    CONSTRAINT [FK_Benutzer_Mitglieder] FOREIGN KEY (MitgliedID) REFERENCES Mitglieder(Id), 
    CONSTRAINT [PK_Benutzer] PRIMARY KEY (ID)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'BenutzerID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Benutzer',
    @level2type = N'COLUMN',
    @level2name = N'ID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nutzername des Benutzer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Benutzer',
    @level2type = N'COLUMN',
    @level2name = N'Benutzername'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Passwort des Benutzer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Benutzer',
    @level2type = N'COLUMN',
    @level2name = N'Passwort'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Mitglieder.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Benutzer',
    @level2type = N'COLUMN',
    @level2name = N'MitgliedID'