## may need to change, check what other files are called
# require_relative "model.rb"
require_relative "controller.rb"
require 'artii'

class View
  attr_reader :ingredient

  def welcome_message_instructions
    puts "****** Welcome to the COCKTAIL SUGGESTER!! ******"
    puts "- Type in the name of the liquid ingredient that you would like to make a cocktail from."
    puts "- Then we will tell you what kinds of cocktails use that ingredient!"
    puts "- Enter name of liquid: "
  end

  def get_user_ingredient
    @ingredient = gets.chomp.downcase
  end

  def cocktail_names_for_user(array)
    puts "You can make the following cocktails: "
    if array.empty?
      puts "****"
      puts "Sorry, no cocktails match your entry.\n" * 3
      puts "****"
    else
      puts "****"
      @populated_potential_cocktails = array.uniq
      print_array_ascii
      puts "****"
    end
  end

  def input_again_or_quit_message
    puts "- Feel free to search for a new liquid ingredient, otherwise type 'quit' to exit the program."
  end

  def end_of_program_message
    clear_screen!
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('Thank You!')
    puts "Thanks for using the COCKTAIL SUGGESTER"
    puts "We hope you have found it useful"
  end

  def clear_screen!
    print "\e[2J"
  end

  def print_array_ascii
    @populated_potential_cocktails.each do |cocktail|
      a = Artii::Base.new :font => 'slant'
      puts a.asciify(cocktail)
    end
  end

end



