--1 

SELECT AlbumId, COUNT (TrackId) AS Tracks
FROM tracks
GROUP BY AlbumId
ORDER BY Tracks DESC;

--2

SELECT title, name
FROM albums
JOIN tracks
ON albums.AlbumId = tracks.AlbumId;

--3

SELECT t.name, t.AlbumId, a.title, MIN(t.Milliseconds) AS Duration
FROM albums AS a
JOIN tracks AS t
ON a.AlbumId = t.AlbumId
GROUP BY a.Title
ORDER BY Duration DESC;

--4

SELECT t.name, a.AlbumId, a.title, SUM(t.Milliseconds) AS Duration
FROM tracks AS t
JOIN albums AS a
ON t.AlbumId = a.AlbumId
GROUP BY a.Title
ORDER BY Duration ASC;

--5

SELECT a.title, SUM(t.Milliseconds) AS Duration
FROM tracks AS t
JOIN albums a
ON t.AlbumId = a.AlbumId
GROUP BY a.title
HAVING Duration > 4200000;