class River

  attr_reader :name
  attr_accessor :fish_pop

  def initialize(name, fish_population = [])
    @name = name
    @fish_pop = fish_population
  end

  def fish_count
    return @fish_pop.length
  end

  def remove_fish(fish)
    @fish_pop.delete(fish)
  end

end
