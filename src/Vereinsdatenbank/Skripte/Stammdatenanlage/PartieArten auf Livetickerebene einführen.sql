-- Einführung PartieArt auf Liveticker Ebene
begin TRAN
update Liveticker set PartieArt = 1 where Mannschaft = 1 and IstWkbvPokal = 0
UPDATE Liveticker set PartieArt = 3 where IstWkbvPokal = 1
update Liveticker set PartieArt = 1 where Mannschaft = 2


select * from Liveticker

-- rollback
-- commit

select * from PartieArten
select * from partien