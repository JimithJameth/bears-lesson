require("minitest/autorun")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup

  @person1= Person.new("Jamie", 31)
  @person2= Person.new("Alan" , 49)

  @bus_22 = Bus.new(22, "Inverness","vroom vroom")
  end


  def test_how_many_passengers__pick_up
    @bus_22.pick_up(@person1)
    @bus_22.pick_up(@person2)
      assert_equal(2 , @bus_22.how_many_passengers())
  end

  def test_pick_up
    @bus_22.pick_up(@person1)
    @bus_22.pick_up(@person2)
    assert_equal(2 , @bus_22.how_many_passengers())
  end

  def test_drop_off
    @bus_22.pick_up(@person1)
    @bus_22.pick_up(@person2)
    @bus_22.drop_off(@person1)
    assert_equal(1 , @bus_22.how_many_passengers())
  end

  def test_empty_the_bus
    @bus_22.pick_up(@person1)
    @bus_22.pick_up(@person2)
    @bus_22.empty_the_bus()
    assert_equal(0 , @bus_22.how_many_passengers())
  end
end

  
