class WelcomeController < ApplicationController

  # if Rails.application.secrets.present?

    # unless Rails.application.secrets.twitter['enabled'] == true

      def bearclient
        Twitter::REST::Client.new do |config|
          config.consumer_key     = Rails.application.secrets['twitter']['consumer_key']
          config.consumer_secret  = Rails.application.secrets['twitter']['consumer_secret']
          config.bearer_token     = Rails.application.secrets['twitter']['bearer_token']
        end
      end
  #
  # else
  #   raise StandardError.new("Not found, darling. So sorry :(!")

  def index
    @tweets = bearclient.user_timeline("loadtocode")
    @name = bearclient.user_timeline("loadtocode").screen_name

    # bearclient.get_all_tweets(user)
    #
    # collect_with_max_id do |max_id|
    #   options = {count: 10, include_rts: false}
    #     # options[:max_id] = max_id unless max_id.nil?
    #     user_timeline(user, options)
    #   end
    # @beartweets = bearclient.user_timeline

    # @bear = bearclient.get_all_tweets("")

  end
end
