class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def home
  end

  private 

  def user_params 
    params.require(:user).permit(:username, :name, :age)
  end
end
