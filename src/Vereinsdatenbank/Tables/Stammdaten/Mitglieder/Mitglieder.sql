CREATE TABLE [dbo].[Mitglieder]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [Vorname] VARCHAR(70) NOT NULL, 
    [Nachname] VARCHAR(100) NOT NULL, 
    [Geschlecht] CHAR(10) NULL, 
    [GebDatum] DATE NOT NULL, 
    [AdresseID] INT NOT NULL, 
    [BankID] INT NOT NULL, 
    [EintrittSKC] DATE NULL, 
    [EintrittWKBV] DATE NULL, 
    [WKBVFrüher] VARCHAR(250) NULL, 
    [HandyNr] VARCHAR(100) NULL, 
    [TelefonNr] VARCHAR(100) NULL, 
    [Fax] INT NULL, 
    [PassNr] INT NULL, 
    [EMail] VARCHAR(150) NULL, 
    [Vereinsaustritt] DATE NULL, 
    [Mitgliedstatus] INT NOT NULL DEFAULT 1, 
    [MitgliedsNrWKBV] INT NULL, 
    CONSTRAINT [PK_Mitglieder] PRIMARY KEY CLUSTERED ([Id] ASC)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mitglieder ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Vorname des Mitglieds',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Vorname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nachname des Mitglieds',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Nachname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'm,w,d',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Geschlecht'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Geburtstagsdatum',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = 'GebDatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Adressen.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'AdresseID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel zu Banken.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'BankID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Eintritt in den SKC Markelsheim',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'EintrittSKC'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Eintritt in den WKBV',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'EintrittWKBV'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Frühere Mitgliedschaften im WKBV',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'WKBVFrüher'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Handynummer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'HandyNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Festnetznummer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'TelefonNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Faxnummer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Fax'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'PassNr im WKBV bzw. DKBC',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'PassNr'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'MailAdresse',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'EMail'
GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum des offiziellen Austritts aus dem SKC',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Vereinsaustritt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'In welcher Form befindet sich das Mitglied im Verein: 0 - Ausgetreten, 1 - Aktiv, 2 - Passiv',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Mitgliedstatus'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Offizielle MitgliedsNr des WKBV. Kann bei alten Mitgliedern von der PassNr abweichen',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mitglieder',
    @level2type = N'COLUMN',
    @level2name = N'MitgliedsNrWKBV'