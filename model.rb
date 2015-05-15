require "io/console"
require_relative "controller.rb"

class Model
attr_reader :possible_cocktails
  def initialize
    @recipe_array_of_hashes = populate_recipe_hash
    @possible_cocktails = []
  end

  def populate_recipe_hash
    text = IO.read("cocktail_list.txt")
    separate_cocktails = text.split("\n\n")
    separate_cocktails_from_ingredients = separate_cocktails.map { |line| line.split("\n") }
    separate_cocktails_from_ingredients.map! do |cocktail|
      cocktail.map!.with_index do |item, index|
        if index == 1
          item.split(",")
        else
          item
        end
      end
    end
    separate_cocktails_from_ingredients.map! do |cocktail|
      Hash[[cocktail]]
    end
  end

  def check_hash_for_possible_recipes(ingredient)
    @recipe_array_of_hashes.each do |hash|
      if hash.values[0].include?(ingredient)
        @possible_cocktails.push(hash.key(hash.values[0]))
      end
    end
  end
######################## NEW ########################
  def add_cocktail(cocktail_name, cocktail_ingredients)
   @recipe_array_of_hashes << {:cocktail_name => cocktail_ingredients}

  end
end









