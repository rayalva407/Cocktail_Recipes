class Cli
  def run

    def print_drinks(letter)
      Drink.all.each.with_index(1) do |drink, i|
        puts "#{i}. #{drink.name}"
      end
    end

    puts "Welcome to Ruby Cocktails"
    puts ''
    puts 'Browse drinks by letter'
    puts 'Enter letter'
    search_letter = gets.chomp
    Api.drinks_by_letter(search_letter)
    print_drinks(search_letter)
  end
end