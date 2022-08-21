class UsersController < ApplicationController
  def index
    @users = user.all
  end

  def show
    @user = user.find(params[:id])
    @books = @user.books
  end

  def edit
  end

  def update
  end

end
