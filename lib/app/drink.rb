class Drink
  attr_accessor :name, :ingredients, :instructions

  @@all = []

  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = []
    @instructions = instructions
    @@all << self
  end

  def self.all
    @@all
  end
end