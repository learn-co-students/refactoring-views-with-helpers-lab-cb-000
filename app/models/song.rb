class Song < ActiveRecord::Base
  belongs_to :artist

    def artist_name
      artist.name if artist #gets the artists name
    end

    def artist_name=(name)
      a = Artist.find_or_create_by(name: name) #finds artist if it already exists
      self.artist = a #can set the artist via name
    end
  end
