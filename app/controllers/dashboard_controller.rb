class DashboardController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    if @user && @user.twitter_token
      @client = Twitter.create_twitter_client
      @friends = @client.friends.take(20)
    end
  end

end