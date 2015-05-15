## may need to change, check what other files are called
# require_relative "model.rb"
require_relative "controller.rb"

class View

  def welcome_message_instructions
    puts "****** Welcome to the COCKTAIL SUGGESTER!! ******"
    puts "Type in the name of the liquid ingredient that you would like to make a cocktail from."
    puts "Then we will tell you what kinds of cocktails use that ingredient!"
    puts "Name of liquid: "
  end

  def get_user_ingredient
    @ingredient = gets.chomp.downcase
  end

  def cocktail_names_for_user(array)
    puts "You can make these cocktails: "
    puts array
  end

  def end_of_program_message
    puts "Thanks for using the COCKTAIL SUGGESTER"
    puts "We hope you have found it useful"
  end

end
