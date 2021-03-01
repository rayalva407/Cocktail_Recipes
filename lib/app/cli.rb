class Cli
  def run
    puts "Welcome to Ruby Cocktails"
    Api.drinks_by_letter("c")
  end
end