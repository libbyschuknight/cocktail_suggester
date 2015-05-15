require_relative 'model.rb'
require_relative 'view.rb'

class CocktailList

  def initialize
    @model = Model.new
    @user_view = View.new
  end

  def run_program
    welcome
    until @user_view.ingredient == "quit"
      analyze_ingredients
      return_possible_cocktails
      print_cocktails
    end
    add_cocktail_user_input
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
    @user_view.input_again_or_quit_message
  end

  #end the program
  def end_program
    @user_view.end_of_program_message
  end
######################## NEW ########################
  def add_cocktail_user_input
    @user_view.get_user_new_cocktail(@cocktail_name, @cocktail_ingredients)
  end
end


