class SessionsController < ApplicationController
  def new
  end

  def create
   @user = User.where({username: params[:user][:username], password: params[:user][:password]}).first
   unless @user.nil?
      session[:user_id] = @user.id
      redirect_to '/'
   else
      redirect_to '/login'
   end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

end
