require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../room')
require_relative ('../guest')
require_relative ('../song')

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(1, 3, 5)

    @guest1 = Guest.new("Damon", "Albarn", 5)
    @guest2 = Guest.new("Graham", "Coxon", 5)
    @guest3 = Guest.new("Alex", "James", 5)

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

    too_drunk = @room.remove_guest_from_room(@guest2)
    assert_equal(too_drunk, @guest2)
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

    rubbish_song = @room.remove_song_from_playlist(@song2)
    assert_equal(rubbish_song, @song2)
  end

  def test_is_room_at_limit
    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    @room.add_guest_to_room(@guest3)
    assert_equal("Sorry Room #{@room.get_room_id} Is Full", @room.check_room_capacity())
  end

  def test_get_entry_fee_for_room
    assert_equal(5, @room.get_entry_fee_for_room())
  end

  def test_get_entry_till_total
    @room.add_guest_to_room(@guest1)
    till_total = @room.get_entry_till_total
    assert_equal(till_total % 5, @room.get_entry_till_total)
  end

  def test_add_add_entry_fee_to_till
    @room.add_guest_to_room(@guest1)
    assert_equal(5, @room.add_entry_fee_to_till())
  end

  def test_deny_entry_due_to_lack_of_cash
    assert_equal("Sorry, you don't have enough money to pay the entry fee", @room.deny_entry_due_to_lack_of_cash())
  end












end # END of CLASS