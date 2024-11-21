resource "spotify_playlist" "Bollywood" {
  name        = "kkrish's Bollywood Playlist"
  description = "This is created by terraform"

  tracks = ["6EivvaEepVTjmDde43eGiB"]
}

data "spotify_search_track" "arijit" {
  artist = "Arijit Singh" 
}

resource "spotify_playlist" "arijit" {
   name = "Kkrish's Favorite Arijit Singh songs"
   tracks = [data.spotify_search_track.arijit.tracks[0].id,
   data.spotify_search_track.arijit.tracks[2].id,
   data.spotify_search_track.arijit.tracks[3].id]
}