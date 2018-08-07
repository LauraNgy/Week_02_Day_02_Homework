require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("frank")
    @fish3 = Fish.new("ponyo")
    @fish_population = [@fish1, @fish2, @fish3]
    @river1 = River.new("Amazon", @fish_population)
    @stomach1 = []
    @stomach2 = [@fish1, @fish2]
    @bear1 = Bear.new("Billybob Bangs", "Brown", @stomach1)
    @bear2 = Bear.new("Billyjane Bangs", "Brown", @stomach2)
  end

  def test_bear_has_name
    assert_equal("Billybob Bangs", @bear1.name)
  end

  def test_bear_type
    assert_equal("Brown", @bear1.type)
  end

  def test_bear_has_empty_stomach
    assert_equal([], @bear1.stomach)
  end

  def test_food_count
    assert_equal(0, @bear1.food_count)
    assert_equal(2, @bear2.food_count)
  end

  def test_bear_can_eat_fish
    @bear1.eat(@river1, @fish3)
    assert_equal(1, @bear1.food_count)
    assert_equal(2, @river1.fish_count)
  end

end
