class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
  end