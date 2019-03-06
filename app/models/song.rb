class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if self.artist.present?
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
    end
  end

end
