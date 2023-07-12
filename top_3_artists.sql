/*Provide a query that shows the top 3 best selling artists.*/

SELECT Artist.Name, COUNT(InvoiceLine.TrackId) AS Num_Purchases
FROM Artist
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Track.AlbumId = Album.AlbumId
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Artist.Name
ORDER BY Num_Purchases DESC
LIMIT 3;