require_relative 'controller.rb'

class Router

  def initialize
    @controller = Controller.new
  end


end

cocktail_list = Router.new
