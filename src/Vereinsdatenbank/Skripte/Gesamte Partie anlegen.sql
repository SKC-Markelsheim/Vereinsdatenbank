-- Anlage einer Partie mit allen Duellen + Sätzen

-- Schritt 1: Anlage Partie

DECLARE @mannschaft CHAR(1) = '1'
DECLARE @heimmannschaft varchar(100) = (SELECT ID FROM Vereine WHERE Matchcode = 'SKC Markelsheim')
DECLARE @gastmannschaft varchar(100) = (SELECT ID FROM Vereine WHERE Matchcode = 'ESV Crailsheim')

begin tran
-- Bei Liveticker, Zeilen einkommentieren!
INSERT INTO [dbo].[Partien]
           ([Spieldatum]
           ,[Heim]
           ,[Gast]
           ,[Spielort]
           --,[LivetickerId]
		   ,[IstHeimspiel]
		   ,[PartieArt]
           ,[LigaZuordnung])
     VALUES
           (
           '25.09.2021 14:00'
           ,@heimmannschaft
           ,@gastmannschaft
           , 'ARA Markelsheim'
           --, 5
		   , 0
		   ,(SELECT ID from PartieArten WHERE Art like '%Ligaspiel%')
           ,(SELECT Id FROM LigaMannschaftZuordnungen WHERE Mannschaft = @mannschaft))

DECLARE @neuePartie INT = (SELECT TOP 1 ID FROM Partien ORDER BY ID DESC)

-- Schritt 2: Anlage der Mannschaftsleistung (falls Spiel schon beendet wurde)

INSERT INTO PartieDetails (PartieId, MPHeim, MPGast, SPHeim, SPGast, HolzGesamtHeim, HolzGesamtGast, VolleGesamtHeim, VolleGesamtGast, AbraeumenGesamtHeim, AbraeumenGesamtGast, FehlGesamtHeim, FehlGesamtGast)
VALUES (@neuePartie, 2.0, 6.0, 13.0, 11.0, 3000, 3091, 2132, 2132, 868, 959, 62, 60)


-- Schritt 3: Anlage der Duelle

-- Sucher der Spieler per Namen
DECLARE @spieler1 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)
DECLARE @spieler2 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)
DECLARE @spieler3 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)
DECLARE @spieler4 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)
DECLARE @spieler5 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)
DECLARE @spieler6 INT = (SELECT TOP 1 Id FROM Mitglieder WHERE PassNr = 0)

-- Gegner müssen hier händisch anhand der PassNr eingetragen werden
DECLARE @gspieler1 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)
DECLARE @gspieler2 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)
DECLARE @gspieler3 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)
DECLARE @gspieler4 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)
DECLARE @gspieler5 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)
DECLARE @gspieler6 INT = (SELECT TOP 1 Id FROM Spieler WHERE PassNr = 0)

INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (1, @neuePartie, @spieler1  , @gspieler1)
INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (2, @neuePartie, @spieler2  , @gspieler2)
INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (3, @neuePartie, @spieler3  , @gspieler3)
INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (4, @neuePartie, @spieler4  , @gspieler4)
INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (5, @neuePartie, @spieler5  , @gspieler5)
INSERT INTO Duelle (SpielerPos, PartieID, SpielerID, GegnerID) VALUES (6, @neuePartie, @spieler6  , @gspieler6)

-- Schritt 4: Anlage der Duellergebnisse
DECLARE @duell1 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 1)
DECLARE @duell2 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 2)
DECLARE @duell3 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 3)
DECLARE @duell4 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 4)
DECLARE @duell5 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 5)
DECLARE @duell6 INT = (SELECT TOP 1 Id FROM Duelle WHERE PartieID = @neuePartie AND SpielerPos = 6)

INSERT INTO DuellErgebnisse (DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell1, 347, 354, 152, 155, 8, 7, 2 , 2, 0, 1)

INSERT INTO DuellErgebnisse	(DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell2, 359, 344, 139, 148, 11, 9, 3, 1, 1, 0)

INSERT INTO DuellErgebnisse	(DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell3, 354, 366, 138, 113, 14, 16, 2, 2, 1, 0)
	
INSERT INTO DuellErgebnisse	(DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell4, 358, 372, 150, 180, 7, 14, 2, 2, 0, 1)
	
INSERT INTO DuellErgebnisse	(DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell5, 342, 359, 151, 181, 10, 5, 2, 2, 0, 1)
	
INSERT INTO DuellErgebnisse	(DuellId, EndVolleGesamtHeim, EndVolleGesamtGast, EndAbraeumenGesamtHeim, EndAbraeumenGesamtGast, EndFehlHeim, EndFehlGast, EndSPHeim, EndSPGast, EndMPHeim, EndMpGast) 
VALUES (@duell6, 372, 337, 138, 182, 12, 9, 2, 2, 0, 1)

-- Duell 1
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell1, 1, 87, 93, 35, 26, 0, 4, 1 , 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell1, 2, 80, 93, 32, 44, 3, 1, 0 , 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell1, 3, 95, 77, 51, 40, 1, 1, 1 , 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell1, 4, 85, 91, 34, 45, 4, 1, 0 , 1)

-- Duell 2
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell2, 1, 85,  82, 36, 35, 3, 2, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell2, 2, 84,  88, 35, 27, 3, 3, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell2, 3, 101, 91, 26, 34, 3, 4, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell2, 4, 89,  83, 42, 52, 2, 0, 0, 1)

-- Duell 3
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell3, 1, 89, 96, 27, 26, 4, 4, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell3, 2, 95, 93, 24, 34, 3, 4, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell3, 3, 76, 87, 44, 27, 2, 5, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell3, 4, 94, 90, 43, 26, 5, 3, 1, 0)

-- Duell 4
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell4, 1, 91, 99, 36, 53, 2, 3, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell4, 2, 99, 89, 36, 44, 1, 5, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell4, 3, 87, 94, 34, 60, 3, 1, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell4, 4, 81, 90, 44, 23, 1, 5, 1, 0)

-- Duell 5
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell5, 1, 94, 90,  45, 34, 2, 1, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell5, 2, 75, 82,  27, 60, 3, 2, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell5, 3, 84, 79,  44, 27, 1, 1, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell5, 4, 89, 108, 35, 60, 4, 1, 0, 1)

-- Duell 6
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell6, 1, 91,  79, 34, 36, 6, 4, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell6, 2, 100, 79, 35, 44, 3, 4, 1, 0)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell6, 3, 87,  83, 34, 60, 3, 0, 0, 1)
INSERT INTO Saetze (DuellId, SatzNr, VolleHeim, VolleGast, AbraeumenHeim, AbraeumenGast, FehlHeim, FehlGast, SPHeim, SPGast) VALUES (@duell6, 4, 94,  96, 35, 42, 0, 1, 0, 1)

-- Prüfe korrekte Anlage der Partie
SELECT TOP 1 * FROM partien
LEFT OUTER JOIN liveticker ON partien.LivetickerId = Liveticker.Id
ORDER BY Partien.ID DESC

-- Partiedetails Prüfung
select top 1 * from PartieDetails
inner join partien on PartieDetails.PartieId = Partien.Id
ORDER BY Partiedetails.ID DESC

-- Duellcheck
select top 6 * from duelle
inner join Mitglieder on Duelle.SpielerID = Mitglieder.Id
inner join Spieler ON duelle.SpielerID = spieler.Id
order by duelle.Id desc

-- Prüfe Ergebnisse
select top 6 * from DuellErgebnisse order by id desc

-- Prüfung aller Sätze, die aufgenommen worden sind
select top 24 * from Saetze order by id desc

-- Großer Prüfselect der Kopfdaten
SELECT  
	p.Id,
	p.Spieldatum,
	pa.Art,
	v1.Matchcode as Heim,
	v2.Matchcode as Gast,
	p.Spielort,
	p.Saison,
	lmz.Liga,
	p.IstHeimspiel,
	l.TickerLink,
	pd.*
FROM Partien p
INNER JOIN Vereine v1 ON p.Heim = v1.Id
INNER JOIN Vereine v2 ON p.Gast = v2.Id
INNER JOIN LigaMannschaftZuordnungen lmz ON p.LigaZuordnung = lmz.Id
INNER JOIN PartieArten pa ON p.PartieArt = pa.Id
LEFT JOIN Liveticker l ON p.LivetickerId = l.Id
LEFT JOIN PartieDetails pd ON p.Id = pd.PartieId
ORDER BY p.Id DESC

-- TODO Verfeinern mit Satzdaten
select * from partien
left outer join Liveticker on Partien.LivetickerId = Liveticker.Id
inner join Duelle on duelle.PartieID = partien.Id
inner join Mitglieder on duelle.SpielerID = Mitglieder.Id
inner join DuellErgebnisse on DuellErgebnisse.DuellId = duelle.Id
left outer join Saetze on Saetze.DuellId = Duelle.Id
where partien.id = @neuePartie