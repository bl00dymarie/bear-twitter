class WelcomeController < ApplicationController
  def index

    # bearclient.get_all_tweets(user)
    #
    # collect_with_max_id do |max_id|
    #   options = {count: 10, include_rts: false}
    #     # options[:max_id] = max_id unless max_id.nil?
    #     user_timeline(user, options)
    #   end
    # @beartweets = bearclient.user_timeline

    # @bear = bearclient.get_all_tweets("")
    @bear = bearclient
  end
end
