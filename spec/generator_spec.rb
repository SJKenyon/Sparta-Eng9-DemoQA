require 'spec_helper'

describe 'Welcome to the unit tests for the Random Generators!' do

  before(:each) do
    @form_data_generator = RandomFormValues.new
    @random_postcode = RandomPostcodeGenerator.new
  end

  context 'I am testing to check that the form data generator is returning its random information correctly' do

    it "should return a first name in a string" do
      expect(@form_data_generator.generate_first_name).to be_a(String)
    end

    it "should return a last name in a string" do
      expect(@form_data_generator.generate_last_name).to be_a(String)
    end

    it "should return a phone number in a string" do
      expect(@form_data_generator.generate_phone_number).to be_a(String)
    end

    it "should return a password of eight characters or more" do
      expect(@form_data_generator.generate_password.length).to be >= 8
    end

    it "should return a phone number of ten digits or more" do
      expect(@form_data_generator.generate_phone_number.length). to be >= 10
    end

  end #end of context

end #end of describe
