require_relative 'random_form_values'
require_relative 'random_postcode_generator'

class Generator
  def random_form_values
    RandomFormValues.new
  end

  def random_postcode_generator
    RandomPostcodeGenerator.new
  end

end
