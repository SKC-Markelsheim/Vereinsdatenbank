CREATE TABLE [dbo].[Adressen] (
    [Id]            INT          IDENTITY (1, 1) NOT NULL,
    [Strasse]       VARCHAR (100) NOT NULL,
    [PLZ]           INT NOT NULL, 
    [Ortsname] VARCHAR(100) NOT NULL, 
    [Teilort] VARCHAR(50) NULL, 
    CONSTRAINT [PK_Adressen] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Adressen_Id]
    ON [dbo].[Adressen]([Id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primärschlüsse AdressenID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adressen', @level2type = N'COLUMN', @level2name = N'Id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Straßenname mit HausNr', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adressen', @level2type = N'COLUMN', @level2name = N'Strasse';




GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Teilort des Ortes bei Gemeinden oder Städten',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Adressen',
    @level2type = N'COLUMN',
    @level2name = N'Teilort'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Postleitzahl',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Adressen',
    @level2type = N'COLUMN',
    @level2name = N'PLZ'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Ortsname',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Adressen',
    @level2type = N'COLUMN',
    @level2name = N'Ortsname'