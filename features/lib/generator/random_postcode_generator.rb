require 'httparty'
require 'json'

#Making a library that generates a random postcode each time you run the tests
class RandomPostcodeGenerator
  include HTTParty

  base_uri 'https://api.postcodes.io'
#MAke a method in here that generate a random postcodeand then call that method in the test

  def generate_random_postcode
    @single_random_postcode_data = JSON.parse(self.class.get("/random/postcodes").body)["result"]["postcode"].gsub(" ", "")
  end

  def get_response_code
    @single_random_postcode_data["status"]
  end



end #end of class
