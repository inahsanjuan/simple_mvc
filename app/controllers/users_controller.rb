class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

  def create
    User.create(
      name: params[:user][:name],
      email: params[:user][:email]
    )

    redirect_to "/"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      name: params[:user][:name],
      email: params[:user][:email]
    )

    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to "/"
  end
end
