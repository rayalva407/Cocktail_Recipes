class Api
  def self.drinks_by_letter(letter)
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=#{letter}"
    res =  Net::HTTP.get_response(URI(url))
    drinks = JSON.parse(res.body)
    drinks["drinks"].each do |drink|
      i = 1
      drinks_arr = []
      while i <= 15
        if drink["strIngredient#{i}"] != null
          drinks_arr << drink["strIngredient#{i}"]
        end
        i += 1
      end
      # binding.pry
      Drink.new(drink["strDrink"], drinks_arr, drink["strInstructions"])
    end
  end
end