module ArtistsHelper

  def display_artist(song)
    if song.artist

      "<a href='/artists/#{song.artist.id}'>#{song.artist.name}</a>".html_safe
    else
        "<a href='/songs/#{song.id}/edit'>Add Artist</a>".html_safe
    end
  end
end
