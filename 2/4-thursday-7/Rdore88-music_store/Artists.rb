class artists
attr_accessor :albums
def initialize(artist_albums)
  @artist_albums = []
end

def add_album(new_album)
  @artist_albums = artist_albums.push(new_album)
end




end
