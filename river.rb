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
  #
  # def remove_fish(fish)
  #   @fish_pop.delete(fish)
  # end

  def lose_fish(number_of_fish)
    return @fish_pop.pop(number_of_fish) if @fish_pop.length >= number_of_fish
    return Fish.new("Magic Fish")
  end

end
