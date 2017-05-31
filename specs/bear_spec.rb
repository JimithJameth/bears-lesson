require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < Minitest::Test

  def setup
  @bear_1 = Bear.new("Yogi")
  @river = River.new("Amazon")
  @fish_1 = Fish.new("Salmon")
  end


  def get_bears_name
    assert_equal("Yogi", @bear_1)
  end

  def test_taking_a_fish
    @bear_1.take_a_fish(@water)
    assert_equal(1 , @bear_1.count)
  end
end
