require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("frank")
    @fish3 = Fish.new("ponyo")
    @fish_population = [@fish1, @fish2, @fish3]
    @river1 = River.new("Ronald", @fish_population)
  end

  def test_river_has_name
    assert_equal("Ronald", @river1.name)
  end

  def test_fish_in_river
    assert_equal(3, @river1.fish_count)
  end

  def test_fish_caught
    @river1.remove_fish(@fish1)
    assert_equal(2, @river1.fish_count)
  end

end
