class NewsController < ApplicationController

  def index
    @followers_count = twitter_client.user.followers_count
    @connections = twitter_client.followers

  end
end
