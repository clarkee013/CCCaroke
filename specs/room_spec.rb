require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../room')
require_relative ('../guest')
require_relative ('../song')

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(1, 3)

    @guest1 = Guest.new("David", "Clarkson")
    @guest2 = Guest.new("John", "McCollum")

    @song1 = Song.new(1, "My Big Mouth", "Oasis")
    @song2 = Song.new(2, "Song 2", "Blur")
  end

  def test_get_room_id
    assert_equal(1, @room.get_room_id)
  end

  def test_get_room_capacity
    assert_equal(3, @room.get_room_capacity())
  end

  def test_add_guests_to_room
    @room.add_guest_to_room(@guest1)
    assert_equal(1, @room.get_room_guest_count())

  end

  def test_add_2_guests_to_room
    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    assert_equal(2, @room.get_room_guest_count())

    too_pished = @room.remove_guest_from_room(@guest2)
    assert_equal(too_pished, @guest2)
    assert_equal(1, @room.get_room_guest_count())
  end

  def test_add_song_to_room
    @room.add_song_to_room(@song1)
    assert(1, @room.get_playlist_count())
  end

  def test_add_2_songs_to_playlist
    @room.add_song_to_room(@song1)
    @room.add_song_to_room(@song2)
    assert_equal(2, @room.get_playlist_count())

    shite_song = @room.remove_song_from_playlist(@song2)
    assert_equal(shite_song, @song2)
  end


end # END of CLASS