class UsersController < ApplicationController
  def index
    @users = user.all
  end

  def show
    @user = user.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = user.find(params[:id])
  end

  def update
    @user = user.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
