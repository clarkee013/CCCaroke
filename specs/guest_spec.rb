require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest')

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("David", "Clarkson")
  end

  def test_guest_has_first_name
    assert_equal("David", @guest1.get_first_name)
  end

  def test_guest_has_last_name
    assert_equal("Clarkson", @guest1.get_last_name)
  end

  

end # END of CLASS