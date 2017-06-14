class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist&.name
  end

  def artist_name=(name)
    artist = Artist.find_or_initialize_by(name: name)

    self.artist = artist
  end
end
