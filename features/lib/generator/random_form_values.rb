require 'faker'

class RandomFormValues
  
  include Faker

  def generate_first_and_last_name
    @first_name = Faker::BackToTheFuture.character
  end

  def generate_last_name
    @last_name = Faker::DrWho.character
  end

  def generate_phone_number
    @phone_num = Faker::PhoneNumber.phone_number
  end

  def generate_username
    @username = Faker::Internet.user_name
  end

  def generate_invalid_username
    @invalid_username = Faker::Zelda.character
  end

  def generate_password
    @password = Faker::Internet.password
  end

  def generate_email_address
    @email_address = Faker::Internet.email
  end

  def generate_incorrect_length_password
    @incorrect_length_password = Faker::Internet.password(10, 20)
  end

  def generate_birth_day
    @birth_day = Faker::Number.between(1, 28)
  end

  def generate_birth_month
    @birth_month = Faker::Number.between(1, 12)
  end

  def generate_over_thirteen_year
    @birth_year = Faker::Number.between(1918, 2005)
  end

  #DEMO QA SDET PROJECT
  def random_country_from_array
        @country_options = ["Afghanistan","Albania","Algeria","American Samoa","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Cyprus","Czech Rep","Denmark","Djibouti","Dominica","Dominican Republic","East Timor","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Greenland","Grenada","Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Japan","Jordan","Kazakhstan","Kenya","Kiribati","North Korea","South Korea","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","Norway","Northern Mariana Islands","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Romania","Russia","Rwanda","Saint Kitts & Nevis Anguilla","Saint Lucia", "Saint Vincent and the Grenadines","Samoa","San Marino", "Sao Tome and Principe","Saudi Arabia","Senegal","Serbia and Montenegro","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","Spain","Sri Lanka","Sudan","South Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands, British","Virgin Islands (USA)","Yemen","Zambia","Zimbabwe"]
    @country_options.sample
  end

  def generate_region
    @region = Faker::Address.state
  end

  def generate_first_name
    @first_name = Faker::Name.first_name
  end

  def generate_address
    @address = Faker::Address.street_address
  end

  def generate_city
    @city = Faker::Address.city
  end

  def generate_postcode
    @postcode = Faker::Address.postcode
  end

end #end of class
