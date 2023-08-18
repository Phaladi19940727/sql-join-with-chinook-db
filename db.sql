select * from genres;

select * from playlists;

select * from playlists where Name LIKE '%s'

select * from artists where Name = "U2"

select * from artists where Name = 150"

--find all the albums for a given artists

select Name, AlbumId, Title from artists
join albums on artists, ArtistsId = albums.ArtistId
where artists.ArtistId = 17;

--Find all the artists for a given Genre
SELECT * from genres
JOIN tracks on Genres.GenreID = tracks.GenreId
WHERE genres.GenreID = "17";
 
 
 
--Find the Playlis .t with the most / least songs
select * from playlists 
join playlist_track 
    on playlist_track.PlaylistId = playlists.PlaylistId
    join tracks 
    on playlist_track.TrackId = tracks.TrackId
    where playlists.Name = "Classical"

    --find all the artist for a given Genre 

--Find all the artists for a given Genre
select * from genres
join tracKs on tracks.GenreID = genres. GenreId
join albums  on albums.AlbumId = tracks.AlbumId
join artists on artist.ArtistID = artist.ArtistId
where                  


--find the Playlist with the most / least songs (will need a group by

select playlists.Name, count(*) as SongCount from playlist
   join playlist_track
   on playlists.PlaylistId = playlist_track.PlaylistId
   group by playlist.Name
   order by SongCount desc 
   Limit 1 ;

   --find the totalk for a given invoice 

   select * from invoices where invoice.InvoiceId = 17 ;

   --find the biggest/smalledt  invoice amounts 

   select InvoiceId, Min(Total)  from invoices;
   select InvoiceId, Max(Total)  from invoices;

select * from artists

   --find the artist with the most/least songs 
select  
     artists.Name, count(*) as TrackCount 
     from artists
     join albums on albums.ArtistId = artists.ArtistId
     join tracks on tracks.AlbumId = albums.AlbumId
     group by artists.Name 
     order by TrackCount DESC 
     Limit 3
     offset 0
     ;