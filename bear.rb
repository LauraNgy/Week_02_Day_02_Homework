class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def food_count
    return @stomach.length
  end

  # def eat(river, fish)
  #   @stomach.push(fish)
  #   river.remove_fish(fish)
  # end

  def eat(river, number_of_fish)
    fishes = river.lose_fish(number_of_fish)
    @stomach.concat(fishes)
  end

end
