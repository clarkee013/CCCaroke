require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../song')

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new(1, "My Big Mouth", "Oasis")
    @song2 = Song.new(2, "Song 2", "Blur")
  end

  def test_song_has_song_id
    assert_equal(1, @song1.get_song_id)
  end

  def test_song_has_title
    assert_equal("My Big Mouth", @song1.get_song_title)
  end

  def test_song_has_artist
    assert_equal("Oasis", @song1.get_song_artist)
  end



end # END of CLASS