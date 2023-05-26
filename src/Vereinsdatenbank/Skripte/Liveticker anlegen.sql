DECLARE @saison VARCHAR(20) = '21/22'
DECLARE @ticker VARCHAR(150)

SET @ticker = 'https://www.tickaroo.com/ticker/612cdea882d94a3c3ec39c42'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Essingen', @saison, @ticker, RIGHT(@ticker, 24), '11.09.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cd97982d94acbd5c3983c'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Magstadt', @saison, @ticker, RIGHT(@ticker, 24), '18.09.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdc4c954ee7b9750870df'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Schwabsberg-2', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '25.09.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdcaa954ee7af3308712c'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Magstadt', @saison, @ticker, RIGHT(@ticker, 24), '02.10.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdce982d94aca36c39afc'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Heilbronn a.L.', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '16.10.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdd4d954ee73ad2087186'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Schrezheim-2', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '06.11.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdd94954ee740ca0871a9'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Waldrems', @saison, @ticker, RIGHT(@ticker, 24), '13.11.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cddf2954ee7af330871ea'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Feuerbach/Nord', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '20.11.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cde4582d94aaee1c39bfa'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Stuttgart-Kaltental-2', @saison, @ticker, RIGHT(@ticker, 24), '04.12.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdee682d94ac8bbc39c6b'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Crailsheim', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '11.12.2021')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdf2a82d94a714ec39c8f'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Magstadt', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '08.01.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdf92954ee7fdb8087306'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Schwabsberg-2', @saison, @ticker, RIGHT(@ticker, 24), '15.01.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612cdfd9954ee7ab32087358'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Heilbronn', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '22.01.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce01d954ee7b975087389'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Heilbronn a.L.', @saison, @ticker, RIGHT(@ticker, 24), '05.02.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce06d954ee739c90873ce'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Schrezheim-2', @saison, @ticker, RIGHT(@ticker, 24), '12.02.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce0b782d94aa059c39dbc'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Essingen', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '26.02.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce0df954ee7af3308742c'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Waldrems', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '05.03.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce12e82d94aca36c39e03'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Feuerbach/Nord', @saison, @ticker, RIGHT(@ticker, 24), '12.03.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce172954ee7670d087475'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('Stuttgart-Kaltental-2', 'SKC', @saison, @ticker, RIGHT(@ticker, 24), '19.03.2022')

SET @ticker = 'https://www.tickaroo.com/ticker/612ce1a8954ee73ad208749f'
INSERT INTO Liveticker (Heim, Gast, Saison, TickerLink, TickerID, Datum)
VALUES ('SKC', 'Crailsheim', @saison, @ticker, RIGHT(@ticker, 24), '09.04.2022')