class RegistrationsController < ApplicationController
  skip_before_action :ensure_current_user

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end