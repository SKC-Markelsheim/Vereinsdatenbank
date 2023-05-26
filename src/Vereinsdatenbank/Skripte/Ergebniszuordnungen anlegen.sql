-- Erstellt die Zuordnungen der Partien mit den jeweiligen Ergebnissen

-- Ermittlung PartieID
DECLARE @spielMannschaft1 INT = (SELECT TOP 1 ID FROM Partien WHERE LigaZuordnung = (SELECT TOP 1 Id FROM LigaMannschaftZuordnungen WHERE Mannschaft = '1'))
DECLARE @spielMannschaft2 INT = (SELECT TOP 1 ID FROM Partien WHERE LigaZuordnung = (SELECT TOP 1 Id FROM LigaMannschaftZuordnungen WHERE Mannschaft = '2'))
DECLARE @spielMannschaft3 INT = (SELECT TOP 1 ID FROM Partien WHERE LigaZuordnung = (SELECT TOP 1 Id FROM LigaMannschaftZuordnungen WHERE Mannschaft = '3'))

-- Ermittlung MitgliederID (Kaderermittlung)
-- 1. Mannschaft
DECLARE @spieler1Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Hefner')
DECLARE @spieler2Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Freymüller' AND Vorname = 'Helmut')
DECLARE @spieler3Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Marquardt')
DECLARE @spieler4Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Kaltenbach' AND Vorname = 'Robin')
DECLARE @spieler5Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Leber' AND Vorname = 'Timo')
DECLARE @spieler6Mannschaft1 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Leber' AND Vorname = 'Heiko')
-- 2. Mannschaft
DECLARE @spieler1Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Glaser')
DECLARE @spieler2Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Lehr' AND Vorname = 'Manfred')
DECLARE @spieler3Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Schneider' AND Vorname = 'Alois')
DECLARE @spieler4Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Lehr' AND Vorname = 'Steffen')
DECLARE @spieler5Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Reißenweber' AND Vorname = 'Gerd')
DECLARE @spieler6Mannschaft2 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Lang' AND Vorname = 'Bruno')
-- 3. Mannschaft
DECLARE @spieler1Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Rumm')
DECLARE @spieler2Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Kübler')
DECLARE @spieler3Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Neft')
DECLARE @spieler4Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Kuhnhäuser')
DECLARE @spieler5Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Stauch')
DECLARE @spieler6Mannschaft3 INT = (SELECT TOP 1 ID FROM Mitglieder WHERE Nachname = 'Mehburger')


BEGIN TRAN
-- 1. Mannschaft
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft1, @spielMannschaft1, 606)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler2Mannschaft1, @spielMannschaft1, 523)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler3Mannschaft1, @spielMannschaft1, 534)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler4Mannschaft1, @spielMannschaft1, 556)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler5Mannschaft1, @spielMannschaft1, 559)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler6Mannschaft1, @spielMannschaft1, 584)
-- 2. Mannschaft
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 499)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 498)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 492)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 508)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 493)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft2, @spielMannschaft2, 510)
-- 3. Mannschaft
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler1Mannschaft3, @spielMannschaft3, 467)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler2Mannschaft3, @spielMannschaft3, 377)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler3Mannschaft3, @spielMannschaft3, 478)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler4Mannschaft3, @spielMannschaft3, 400)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler5Mannschaft3, @spielMannschaft3, 457)
INSERT INTO SpielerPartieErgebnisZuordnungen (SpielerID, PartieID, Ergebnis) VALUES(@spieler6Mannschaft3, @spielMannschaft3, 447)


select Mitglieder.Vorname, Mitglieder.Nachname, Partien.Spieldatum, Partien.Heim, Partien.Gast, spez.Ergebnis from SpielerPartieErgebnisZuordnungen spez
inner join Mitglieder on spez.SpielerID = Mitglieder.Id
inner join Partien on spez.PartieID = Partien.Id
where Partien.Id IN (@spielMannschaft1, @spielMannschaft2, @spielMannschaft3)
order by spez.Ergebnis desc

--commit