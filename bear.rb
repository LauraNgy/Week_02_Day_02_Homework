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

  def eat(river, fish)
    @stomach.push(fish)
    river.remove_fish(fish)
  end

end
