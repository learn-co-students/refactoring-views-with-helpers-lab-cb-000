module SongsHelper

    def display_artist(song)
        if song.is_a?(Song)
            song.artist.nil? ? (link_to "Add Artist", edit_song_path(song.id)) : (link_to song.artist_name , artist_path(song.artist.id))
        end
    end
end
