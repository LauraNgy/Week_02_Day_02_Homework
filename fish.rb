class Fish

  attr_reader :name
  #class variable!!!
  @@number_of_fish_in_the_world = 0

  def initialize(name)
    @name = name
    #this class variable updates for every object instantiated.
    #it can't be read by a attr_reader
    @@number_of_fish_in_the_world += 1
  end

  #class variable needs a getter method
  def Fish.get_number_of_fish
    return @@number_of_fish_in_the_world
  end
end
