BEGIN TRAN

-- Variablen
DECLARE @VereinsID INT

-- Oberliga
-- SV Heilbronn a.L
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SV Heilbronn am Leinbach'
insert into Spieler (PassNr, Name, VereinID) values ( 7224, 'Lang, Christian', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7229, 'Correll, Maurice', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8193, 'Schenker, Arnold', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7237, 'Holtz, Mario', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7235, 'Vogt, Andreas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7227, 'Hermann, Steffen', @VereinsID)

-- KC Schwabsberg-2
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'KC Schwabsberg-2'
insert into Spieler (PassNr, Name, VereinID) values ( 9098, 'Pozarni, Markus', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8240, 'Kuhn, Marius', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9531, 'Wendel, Niklas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11982, 'Schweizer, Horst', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6089, 'Zürn, Stefan', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8646, 'Prickler, Lukas', @VereinsID)

-- ESV Crailsheim
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'ESV Crailsheim'
insert into Spieler (PassNr, Name, VereinID) values ( 11331, 'Theimer, Helmut', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11325, 'Alker, Martin', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13742, 'Dennig, Michael', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7634, 'Munz, Pierre', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11327, 'Hager, Johannes', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11328, 'Lehr, Siegfried', @VereinsID)

-- TSG Heilbronn
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'TSG Heilbronn'
insert into Spieler (PassNr, Name, VereinID) values ( 13806, 'Comes, Bastian', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8205, 'Nöth, Sven', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13831, 'Feyh, Jan-Niklas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13500, 'Schulze, Michael', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13494, 'Nachbar, Timo', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13498, 'Epp, Peter', @VereinsID)

-- KVS Waldrems
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'KVS Waldrems'
insert into Spieler (PassNr, Name, VereinID) values ( 7033, 'Reiter, Helmuth', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8330, 'Ligorio, Francesco', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13591, 'Lange, Ingo', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10137, 'Rommel, Norbert', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6929, 'Mayer, Wolfgang', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10136, 'Restifo, Harald', @VereinsID)

-- SG Feuerbach/Nord
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SG Feuerbach/Nord'
insert into Spieler (PassNr, Name, VereinID) values ( 12907, 'Mayr, Daniel', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7560, 'Weiler, Peter', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12118, 'Ebert, Stefan', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7571, 'Glasbrenner, Nici', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7303, 'Schier, Michael', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9778, 'Eichhoff, Werner', @VereinsID)

-- Bezirksliga
-- KC Schwabsberg-3
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'KC Schwabsberg-3'
insert into Spieler (PassNr, Name, VereinID) values ( 12922, 'Hutter, Simon', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12921, 'Meier, Hannes', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13253, 'Kuhn, Josef', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13255, 'Dominguez, Nicolas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9530, 'Wagner, Patriz', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11968, 'Kuhn, Martin', @VereinsID)

-- SG Hüttlingen-Hofen
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SG Hüttlingen-Hofen'
insert into Spieler (PassNr, Name, VereinID) values ( 12864, 'Schenk, Florian', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7128, 'Bernthaler, Joachim', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10017, 'Kraus, Lothar', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10620, 'Kunz, Reinhard', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10617, 'Ohlemann, Jan', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10676, 'Jandl, Dieter', @VereinsID)

-- SK GAW-Oberkochen
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SK GAW-Oberkochen'
insert into Spieler (PassNr, Name, VereinID) values ( 9752, 'Elze, Marc', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10128, 'Huhnke, Heinz', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12015, 'Ebbers, Frank', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12014, 'Kaiser, Wilhelm', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13063, 'Schmid, Friedrich', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6378, 'Mildner, Roland', @VereinsID)

-- Goldene 13 Öhringen
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'Goldene 13 Öhringen'
insert into Spieler (PassNr, Name, VereinID) values ( 12507, 'Hofmann, Ralf', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10255, 'Reisser, Klaus', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9549, 'Scheerle, Edmund', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9771, 'Schombierski, Jan', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10249, 'Stock, Bernhard', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10250, 'Streeb, Timo', @VereinsID)

-- Fire Pins Essingen-2
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'Fire Pins Essingen-2'
insert into Spieler (PassNr, Name, VereinID) values ( 7210, 'Angerbauer, Horst', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6843, 'Szautner, Andre', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12149, 'Sauter, Timo', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13816, 'Skrobot, Radovan', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12552, 'Czapla, Tobias', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12329, 'Schiele, Steffen', @VereinsID)

-- TV Niederstetten
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'TV Niederstetten'
insert into Spieler (PassNr, Name, VereinID) values ( 11426, 'Langer, Andreas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11429, 'Dörr, Jürgen', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11428, 'Raschdorf, Werner', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11427, 'Moosherr, Peter', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11430, 'Feidel, Sascha', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11432, 'Reschke, Daniel', @VereinsID)

-- KC Elchingen
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'KC Elchingen'
insert into Spieler (PassNr, Name, VereinID) values ( 10694, 'Traub, Albert', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9580, 'Salat, Jürgen', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10688, 'Chytil, Karl', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9579, 'Zanzinger, Hubert', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9581, 'Dussling, Hubert', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9583, 'Reiger, Roland', @VereinsID)

-- SV Göggingen e.V.
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SV Göggingen e.V.'
insert into Spieler (PassNr, Name, VereinID) values ( 12257, 'Heeb, Robin', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9787, 'Österle, Martin', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6351, 'Daubner, Uli', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 6305, 'Stütz, Harald', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9789, 'Esswein, Markus', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9786, 'Maier, Ernst', @VereinsID)

-- SK GAW-Oberkochen-2
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SK GAW-Oberkochen-2'
insert into Spieler (PassNr, Name, VereinID) values ( 12521, 'Gerlach, Peter', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12579, 'Gerlach, Thomas', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12860, 'Gerlach, Sven', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12374, 'Gerlach, Helmut', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10628, 'Schmeiss, Wolfgang', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10626, 'Bachofer, Karl', @VereinsID)

-- Bezirksklasse
-- SV Göggingen e.V.-g
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SV Göggingen e.V.-g'
insert into Spieler (PassNr, Name, VereinID) values ( 9796, 'Jooß, Regine', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 10722, 'Buksbaum, Bettina', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 7623, 'Geldmacher, Ingrid', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9798, 'Fezer, Erika', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9797, 'Groiß, Margot', @VereinsID)

-- SK GAW-Oberkochen-g
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'SK GAW-Oberkochen-g'
insert into Spieler (PassNr, Name, VereinID) values ( 12376, 'Gerlach, Nicole', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 91805, 'Latzel, Martin', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12861, 'Gerlach, Anja', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12375, 'Mückel, Evelyn', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13767, 'Wiedmann, Milan', @VereinsID)

-- TV Niederstetten-g
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'TV Niederstetten-g'
insert into Spieler (PassNr, Name, VereinID) values ( 11434, 'Schulz, Gertrud', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13174, 'Feidel, Larissa', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11424, 'Fladung, Manuela', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11761, 'Fladung, Gunther', @VereinsID)

-- KC Schrezheim-g
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'KC Schrezheim-g'
insert into Spieler (PassNr, Name, VereinID) values ( 9144, 'Sanwald, Julius', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9139, 'Schneider, Birgit', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9143, 'Bolsinger, Josef', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 9135, 'Kucher, Josef', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11029, 'Klissenbauer, Maria', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 8263, 'Plischke, Jana', @VereinsID)

-- ESV Crailsheim-g
SELECT @VereinsID = ID FROM Vereine WHERE Matchcode = 'ESV Crailsheim-g'
insert into Spieler (PassNr, Name, VereinID) values ( 8465, 'Schönstein, Marco', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 13137, 'Ballheimer, Gerda', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12824, 'Held, Christian', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 12413, 'Pyka, Oliver', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11321, 'Klement, Evi', @VereinsID)
insert into Spieler (PassNr, Name, VereinID) values ( 11652, 'Kohr, Edgar', @VereinsID)

select * from spieler inner join vereine on spieler.VereinID = vereine.ID

-- commit 
-- rollback