class Api
  def self.get_drinks
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"
    res =  Net::HTTP.get_response(URI(url))
    drinks = JSON.parse(res.body)
    drinks["drinks"].each do |drink|
      # binding.pry
      puts drink["strDrink"]
    end
  end
end