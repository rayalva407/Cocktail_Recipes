class Api
  def self.drinks_by_letter(letter)
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=#{letter}"
    res =  Net::HTTP.get_response(URI(url))
    drinks = JSON.parse(res.body)
    drinks["drinks"].each do |drink|
      # binding.pry
      puts drink["strDrink"]
    end
  end
end