module ArtistsHelper

  def display_artist(song)
    @song = song
    if @song.artist.nil?
      link_to "Add Artist", edit_song_path(@song)
    else
      link_to @song.artist.name, artist_path(@song)
    end
  end

end
