class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
  	@book = Book.new
  	@user = current_user
  	@users = User.all
  end

  def show
  	@book = Book.new
  	@user = User.find(params[:id])
  	@books = @user.books
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  		flash[:notice] = "User was successfully updated."
  	    redirect_to user_path(@user.id)
  	else
  		render "edit"
  	end
  end

	private 
	def user_params
	    params.require(:user).permit(:name, :profile_image, :comment)
	end
end
