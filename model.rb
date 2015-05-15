require "io/console"
require_relative "controller.rb"

class Model

  def initialize
    @recipe_hashs = populate_recipe_hash
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
    @recipe_hashs
  end


end


# model = Model.new

# p model.populate_recipe_hash.is_a?(Array) == true
# puts model.populate_recipe_hash
