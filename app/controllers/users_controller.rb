class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = @user.id
      redirect_to controller: 'journals', action: 'index'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
