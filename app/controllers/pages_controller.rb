class PagesController < ApplicationController
	include TwitterHelper

  def home
  	if current_user
  		@user = current_user
  		#@client = get_client(@user)
  		@tweets = get_tweets(@user)
  	end
  end
end