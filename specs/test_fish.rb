require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("ponyo")
  end

  def test_fish_has_name
    assert_equal("nemo", @fish1.name)
  end

end
