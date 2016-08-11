class NewsController < ApplicationController

  def neu
    @tweets = bearclient.user_timeline("loadtocode")
  end

end
