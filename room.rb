class Room

  def initialize(room_id, capacity)
    @room_id = room_id
    @capacity = capacity
    @guest_list = []
    @playlist = []
  end

  def get_room_id
    return @room_id
  end

  def get_room_capacity
    return @capacity
  end

  def add_guest_to_room(guest)
    @guest_list << guest
  end

  def get_room_guest_count
    @guest_list.count
  end

  def remove_guest_from_room(guest)
    return @guest_list.delete(guest)
  end

  def add_song_to_room(song)
    @playlist << song
  end

  def get_playlist_count()
    @playlist.count
  end

  def remove_song_from_playlist(song)
    return @playlist.delete(song)
  end




end # END of CLASS