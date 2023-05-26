CREATE VIEW [dbo].[Trainingsuebersicht]
	AS 
	select trainingseinheiten.Id as TrainingsNr, 
	Trainingseinheiten.Datum, 
	(SELECT Count(*) 
		FROM AbsolvierteUebungen 
		Where AbsolvierteUebungen.TrainingsNr = Trainingseinheiten.Id) 
	as AbsolvierteUebungen, 
	Trainingseinheiten.Saison, 
	trainingseinheiten.BemerkungenUeberLetztesSpiel, 
	trainingseinheiten.SonstigeBemerkungen
	from Trainingseinheiten

