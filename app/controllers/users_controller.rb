class UsersController < ApplicationController

  def index

  end

  def twitter_login
    request.env['omniauth.auth']
    redirect_to root_path
  end

end