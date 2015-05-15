require_relative 'controller.rb'

class Router

  def initialize
    @controller = CocktailList.new
    @controller.run_program
  end

end

cocktail_list = Router.new


