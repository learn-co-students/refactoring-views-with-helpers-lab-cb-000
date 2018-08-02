class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    if artist
      artist.name = name
    else
      Artist.find_or_create_by(name: name).songs << self
    end
  end
end
