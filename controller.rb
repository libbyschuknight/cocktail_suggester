require_relative 'model.rb'
require_relative 'view.rb'

class CocktailList

  def initialize
    @model = Model.new
    @user_view = View.new
  end

  def run_program
    @user_view.clear_screen!
    welcome
    until @user_view.ingredient == "quit"
      analyze_ingredients
      return_possible_cocktails
      print_cocktails
    end
    end_program
  end

  def welcome
    @user_view.welcome_message_instructions
  end

  def take_user_input
    @user_view.get_user_ingredient
  end

  def analyze_ingredients
    @model.check_hash_for_possible_recipes(take_user_input)
  end

  def return_possible_cocktails
    @model.possible_cocktails
  end

  def print_cocktails
    @user_view.cocktail_names_for_user(return_possible_cocktails)
    @user_view.input_again_or_quit_message
  end

  def end_program
    @user_view.end_of_program_message
  end
end


