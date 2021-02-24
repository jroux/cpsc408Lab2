--Jessie Roux
--In-Class Lab #2


--Question 1
SELECT MAX(Total)
FROM Invoice;

--Question 2
SELECT Total
FROM Invoice
ORDER BY Total DESC LIMIT 1;

--Question 3
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE track.MediaTypeID=MediaType.MediaTypeId
GROUP BY MediaType.Name;

--Question 4
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE track.MediaTypeID=MediaType.MediaTypeId
GROUP BY MediaType.Name;
ORDER BY COUNT(*) DESC;

--Question 5
SELECT MediaType.Name, COUNT(*)
FROM Track, MediaType
WHERE track.MediaTypeID=MediaType.MediaTypeId
GROUP BY MediaType.Name HAVING (COUNT(*) > 200)
ORDER BY COUNT(*) DESC;

--Question 6
SELECT COUNT(*) totalTracks, COUNT(DISTINCT Artist.Name)
FROM Track, Artist, Album
WHERE Artist.ArtistID = Album.ArtistID
AND Track.AlbumID = Album.AlbumId
AND Artist.Name LIKE 'A%';

--Question 7 SKIP
