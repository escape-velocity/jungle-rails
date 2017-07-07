class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    registeredUser = User.find_by_email(params[:user][:email])
    if registeredUser
      redirect_to '/users/new'
    elsif user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
   

end