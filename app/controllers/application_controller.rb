class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def bearclient
    Twitter::REST::Client.new do |config|
      config.consumer_key     = Rails.application.secrets['twitter']['consumer_key']
      config.consumer_secret  = Rails.application.secrets['twitter']['consumer_secret']
      config.bearer_token     = Rails.application.secrets['twitter']['bearer_token']
    end
  end

end
