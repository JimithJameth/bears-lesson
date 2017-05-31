require("minitest/autorun")
require_relative("../person")
require_relative("../bus")
require_relative("../bus_stop")

class Bus_StopTest < MiniTest::Test

  def setup
    @person1= Person.new("Jamie", 31)
    @person2= Person.new("Alan" , 49)
    @bus_stop = BusStop.new("Vegas")
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@person1)
    @bus_stop.add_person_to_queue(@person2)

    assert_equal(2, @bus_stop.queue.count())
  end
end