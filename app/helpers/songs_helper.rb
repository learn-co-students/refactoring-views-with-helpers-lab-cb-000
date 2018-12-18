module SongsHelper
  def display_artist(song)
    if song.artist.nil?
      link_text = 'Add Artist'
      path = edit_song_path(song)
    else
      link_text = song.artist_name
      path = artist_path(song.artist)
    end
    render inline: "<%= link_to link_text, path %>", locals: { link_text: link_text, path: path }
  end
end
