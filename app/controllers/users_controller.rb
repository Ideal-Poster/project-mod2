class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # session[:user_id] = @user.id
    if @user.save
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    # @user = User.find(session[:user_id])
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def show
    # @user = User.find(session[:user_id])
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    FavoriteBook.delete_by(user_id: @user.id)
    FavoriteRhyme.delete_by(user_id: @user.id)
    @user.delete
    redirect_to :root
  end

  def login
    # session[:auth] = 
  end

  def find_user
    @user = User.find_by(username: params[:username] )
    # session[:user_id] = @user.id
    if @user
      redirect_to user_path(@user)
    else
      flash[:failed] = "Please enter a valid username. #{params[:username]} doesn't exist."
      redirect_to login_path
    end
  end

  def home
  end

  private 

  def user_params 
    params.require(:user).permit(:username, :name, :age)
  end
end
