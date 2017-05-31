require("minitest/autorun")
require_relative("../person")

class TestPerson < MiniTest::Test

  def setup

  @person1= Person.new("Jamie", 31)
  @person2= Person.new("Alan" , 49)
  end
end