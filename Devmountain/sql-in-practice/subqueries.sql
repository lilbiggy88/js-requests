-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id FROM invoice_line WHERE unit_price > .99)

-- Get all playlist tracks where the playlist name is Music.
SELECT * 
FROM playlist_track
WHERE track_id IN (
  SELECT track_id FROM playlist WHERE name = 'music') 

   
  select track_id from playlist_track
  where playlist_id in (select playlist_id from playlist 

-- Get all track names for playlist_id 5.
SELECT * FROM track
WHERE name IN (
  SELECT name
  FROM playlist
  WHERE playlist_id = 5)

-- Get all tracks where the genre is Comedy.
SELECT * FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE genre_id = 22)


-- Get all tracks where the album is Fireball.
SELECT * FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE title = 'Fireball')

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
SELECT * FROM artist
Where artist_id IN (
  SELECT artist_id FROM album WHERE album_id IN (
    SELECT album_id FROM track where composer = 'Queen'))
