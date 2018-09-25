class ApplicationController < ActionController::Base
  def hello_world
    redirect_to "https://github.com/kasumiko/yukarin-api/tree/give_me_courage" 
  end

end
