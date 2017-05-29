require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guest')

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Damon", "Albarn", 5)
    @guest2 = Guest.new("Graham", "Coxon", 5)
    @guest3 = Guest.new("Alex", "James", 5)
  end

  def test_guest_has_first_name
    assert_equal("Damon", @guest1.get_first_name)
  end

  def test_guest_has_last_name
    assert_equal("Albarn", @guest1.get_last_name)
  end

  

end # END of CLASS