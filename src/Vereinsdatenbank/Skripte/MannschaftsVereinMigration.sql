select * from Partien
select * from Mannschaften
inner join Vereine on Mannschaften.VereinsId = Vereine.Id

begin tran
insert into Mannschaften (Mannschaftsname, VereinsId)
select Matchcode, 
	(select top 1 id from vereine 
		where vereine.matchcode like '%'+v.Matchcode+'%' order by id) as id2
from (select SUBSTRING(matchcode, 0, CASE WHEN SUBSTRING(Matchcode, LEN(Matchcode)-1, 1) = '-' THEN LEN(matchcode)-1 ELSE LEN(Matchcode)+1 END) as matchcode, id 
		from Vereine) as v
group by matchcode

select * from Mannschaften
inner join Vereine on Mannschaften.VereinsId = Vereine.Id

-- commit

-- rollback

select SUBSTRING(Matchcode, LEN(Matchcode)-1, 1) from Vereine
select * from vereine where Matchcode = 'TSB Fortuna Gmünd'

truncate table mannschaften

begin tran 
insert into Mannschaften
select matchcode, id from vereine order by id 

select * from Mannschaften

begin tran
insert into vereine (Matchcode)
select Matchcode
from (select SUBSTRING(Mannschaftsname, 0, CASE WHEN SUBSTRING(Mannschaftsname, LEN(Mannschaftsname)-1, 1) = '-' THEN LEN(Mannschaftsname)-1 ELSE LEN(Mannschaftsname)+1 END) as matchcode, id 
		from Mannschaften) as v
where matchcode <> 'SKC Markelsheim'
group by matchcode
--order by v.Id

select * from vereine

-- commit
-- rollback

--insert into vereine (Matchcode) values ('SKC Markelsheim')


select * from Mannschaften
select * from Vereine

begin tran
update Mannschaften set VereinsId = (select top 1 id from vereine where Matchcode = SUBSTRING(Mannschaftsname, 0, CASE WHEN SUBSTRING(Mannschaftsname, LEN(Mannschaftsname)-1, 1) = '-' THEN LEN(Mannschaftsname)-1 ELSE LEN(Mannschaftsname)+1 END))

select * from Mannschaften
inner join vereine on Mannschaften.VereinsId = Vereine.Id

select * from spieler order by VereinID

--begin tran
--update spieler set VereinID = (select id from vereine where Matchcode like '%SV Heilbronn am Leinbach%') where VereinID = 4 and id between 1 and 6
--update spieler set VereinID = (select id from vereine where Matchcode like '%ESV Crailsheim%') where VereinID = 6 and id between 13 and 18
--update spieler set VereinID = (select id from vereine where Matchcode like '%SG Feuerbach%') where VereinID = 7 and id between 1 and 6
--update spieler set VereinID = (select id from vereine where Matchcode like '%TSG Heilbronn%') where VereinID = 8 and id between 19 and 24
--update spieler set VereinID = (select id from vereine where Matchcode like '%KC Schwabsberg%') where VereinID = 10 and id between 7 and 12
--update spieler set VereinID = (select id from vereine where Matchcode like '%KVS Waldrems%') where VereinID = 12 and id between 25 and 30
--update spieler set VereinID = (select id from vereine where Matchcode like '%SK GAW Oberkochen%') where VereinID = 14 and id between 79 and 90
--update spieler set VereinID = (select id from vereine where Matchcode like '%SK GAW Oberkochen%') where VereinID = 15 and id between 49 and 54
--update spieler set VereinID = (select id from vereine where Matchcode like '%KC Schwabsberg%') where VereinID = 16 and id between 37 and 42
--update spieler set VereinID = (select id from vereine where Matchcode like '%Fire Pins Essingen%') where VereinID = 17 and id between 61 and 66
--update spieler set VereinID = (select id from vereine where Matchcode like '%TV Niederstetten%') where VereinID = 18
--update spieler set VereinID = (select id from vereine where Matchcode like '%KC Elchingen%') where VereinID = 19
--update spieler set VereinID = (select id from vereine where Matchcode like '%Goldene 13 Öhringen%') where VereinID = 20
--update spieler set VereinID = (select id from vereine where Matchcode like '%SG Hüttlingen-Hofen%') where VereinID = 21
--update spieler set VereinID = (select id from vereine where Matchcode like '%KC Schrezheim%') where VereinID = 23
--update spieler set VereinID = (select id from vereine where Matchcode like '%ESV Crailsheim%') where VereinID = 25
--update spieler set VereinID = (select id from vereine where Matchcode like '%TV Niederstetten%') where VereinID = 26
--update spieler set VereinID = (select id from vereine where Matchcode like '%SK GAW Oberkochen%') where VereinID = 27
--update spieler set VereinID = (select id from vereine where Matchcode like '%SV Göggingen%') where VereinID = 28

select * from spieler inner join vereine on spieler.VereinID = vereine.Id

truncate table spieler
select * from duelle

select * from partien where heim = 14 or gast = 14


select * from Mannschaften inner join vereine on vereine.Id = Mannschaften.VereinsId
select * from spieler
inner join vereine on vereine.id = spieler.VereinID

select * from partien
select * from Mannschaften

select p.Id, p.Spieldatum, p.Spielort, p.Liga, h.Mannschaftsname, g.Mannschaftsname  from partien as p
inner join Mannschaften as h on h.Id = p.Heim
inner join Mannschaften as g on g.Id = p.Gast

select * from partien