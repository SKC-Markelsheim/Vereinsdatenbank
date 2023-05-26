CREATE VIEW [dbo].[Partienuebersicht]
AS SELECT p.Id as PartieId, 
	pd.Id as DetailsId,
	p.Spieldatum, 
	p.Spielort, 
	p.LivetickerId as Liveticker,
	Saisons.Saison,
	arten.Art as Spielart,
	lmz.Liga,
	vh.Mannschaftsname as Heim, 
	vg.Mannschaftsname as Gast,
	pd.MPHeim,
	pd.MPGast,
	pd.SPHeim,
	pd.SPGast,
	pd.VolleGesamtHeim,
	pd.VolleGesamtGast,
	pd.AbraeumenGesamtHeim,
	pd.AbraeumenGesamtGast,
	pd.FehlGesamtHeim,
	pd.FehlGesamtGast
FROM Partien p
INNER JOIN PartieDetails pd on p.Id = pd.PartieId
INNER JOIN Mannschaften vh on p.Heim = vh.Id
INNER JOIN Mannschaften vg on p.Gast = vg.Id
INNER JOIN PartieArten arten ON p.PartieArt = arten.Id
INNER JOIN LigaMannschaftZuordnungen lmz on p.LigaZuordnung = lmz.Id
INNER JOIN Saisons ON p.SaisonId = Saisons.Id
