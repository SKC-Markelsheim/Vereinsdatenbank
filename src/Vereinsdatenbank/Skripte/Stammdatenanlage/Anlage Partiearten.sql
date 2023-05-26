BEGIN TRAN
INSERT INTO [dbo].[PartieArten] ([Art]) VALUES ('Ligaspiel')
INSERT INTO [dbo].[PartieArten] ([Art]) VALUES ('Seniorenspiel')
INSERT INTO [dbo].[PartieArten] ([Art]) VALUES ('WKBV-Pokal')
INSERT INTO [dbo].[PartieArten] ([Art]) VALUES ('DKBC-Pokal')

-- commit
-- rollback

select * from PartieArten

