module ArtistsHelper

  def display_artist( song )

    #if song.artist.artist_name
    if song.artist
      link_to song.artist.name, song.artist
    else
      link_to "Add Artists Name", edit_song_path( song )
    end

  end

end
