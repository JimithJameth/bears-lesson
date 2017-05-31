require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
  @bear_1 = Bear.new ("Yogi")
  @fish = Fish.new ("Salmon")

  end
end
