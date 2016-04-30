class WelcomeController < ApplicationController
  def top
    @current_user = User.find_by(id: session[:user_id])
  end
end
