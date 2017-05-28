class Song

  def initialize(song_id, title, artist)
    @song_id = song_id
    @title = title
    @artist = artist
  end

  def get_song_id
    return @song_id
  end

  def get_song_title
    return @title
  end

  def get_song_artist
    return @artist
  end


end # END of CLASS