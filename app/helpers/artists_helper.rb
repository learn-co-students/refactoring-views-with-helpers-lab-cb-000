module ArtistsHelper

  def display_artist(song) #should respond to display_artist with one argument
     if song.artist
       link_to song.artist.name, song.artist #displays a link to the artist page 
     else
       link_to 'Add Artist', edit_song_path(song) #displays a link to the edit song
     end
   end
 end
