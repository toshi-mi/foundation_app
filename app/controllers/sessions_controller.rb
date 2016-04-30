class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(login_id: params[:session][:login_id])
    session[:user_id] = user.id
    redirect_to root_path
  end
  
  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
  
end