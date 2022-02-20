class UsersController < ApplicationController
  def new
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end



  def index
    @user = current_user
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
