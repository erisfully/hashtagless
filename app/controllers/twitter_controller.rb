class TwitterController < ApplicationController

  def new
    redirect_to '/auth/twitter'
  end

  def create
    @user = User.find(session[:user_id])
    @user.update(
      twitter_token: env['omniauth.auth'][:credentials][:token],
      twitter_secret: env['omniauth.auth'][:credentials][:secret]
    )

    redirect_to root_path
  end

end