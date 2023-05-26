CREATE VIEW [dbo].[Finanzuebersicht]
	AS SELECT Mitglieder.Nachname, 
		Mitglieder.Vorname, 
		Beitragssaetze.BeitragInEuro, 
		Konten.IBAN,
		Konten.KontoNr,
		Banken.Bankname, 
		Banken.BIC, 
		ISNULL(Banken.BLZ , 0) as BLZ
	FROM Mitglieder (NOLOCK)
	INNER JOIN Konten (NOLOCK) ON Konten.Id = Mitglieder.BankID
	INNER JOIN Banken ON Konten.BankenID = Banken.ID
	INNER JOIN Mitgliedsbeitraege (NOLOCK) ON Mitgliedsbeitraege.MitgliedsID = Mitglieder.Id
	INNER JOIN Beitragssaetze (NOLOCK) ON Beitragssaetze.Id = Mitgliedsbeitraege.ZuZahlenderBeitrag