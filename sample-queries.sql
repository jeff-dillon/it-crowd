-- Example Queries

-- List all of the Band Names
SELECT BandName
FROM Bands;

-- For every person, list the Albums in thier CD Collection (including band names)
select PersonName,
    BandName,
    AlbumName
from albums
    left join Bands ON Albums.BandID = Bands.BandID
    left join CDCollections ON Albums.AlbumID = CDCollections.AlbumID
    right join People ON People.PersonID = CDCollections.PersonID
ORDER BY PersonName;


-- List all of the Albums by The Cure
SELECT BandName,
    AlbumName
FROM Albums
    LEFT JOIN Bands ON Bands.BandID = Albums.BandID
WHERE BandName = 'The Cure';