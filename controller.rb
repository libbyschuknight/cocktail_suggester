require_relative 'model.rb'
require_relative 'view.rb'

class CocktailList

  def initialize
    @model = Model.new
    @user_view = View.new
  end

  def run_program
    welcome
    analyze_ingredients
    return_possible_cocktails
    print_cocktails
    end_program
  end

  # call the view.welcome method
  def welcome
    @user_view.welcome_message_instructions
  end

  # call the take user input method
  def take_user_input
    @user_view.get_user_ingredient
  end

  # call the analyze data method
  def analyze_ingredients
    @model.check_hash_for_possible_recipes(take_user_input)
  end

  # call the return populated list method
  def return_possible_cocktails
    @model.possible_cocktails
  end

  # call the show user our list method
  def print_cocktails
    @user_view.cocktail_names_for_user(return_possible_cocktails)
  end

  #end the program
  def end_program
    @user_view.end_of_program_message
  end
end


