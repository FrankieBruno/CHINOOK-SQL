/*Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-Album name
-Media type
*/


SELECT 
    Track.Name AS Track_Name, 
    Album.Title AS Album_Name,
    MediaType.Name AS Media_Type_Name, 
    Genre.Name AS Genre_name
FROM Track
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId