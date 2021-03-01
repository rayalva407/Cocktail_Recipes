class Cli
  def run
    puts "Welcome to Ruby Cocktails"
    puts ''
    puts 'Search drinks by letter'
    puts 'Enter letter'
    search_letter = gets.chomp
    Api.drinks_by_letter(search_letter)
  end
end