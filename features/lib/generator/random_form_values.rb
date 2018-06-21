require 'faker'

class RandomFormValues
  include Faker

  def generate_first_name
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


end #end of class
