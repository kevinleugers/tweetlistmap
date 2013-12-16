class SessionsController < ApplicationController
  def create
  	#raise env['omniauth.auth'].to_yaml
  	user = User.omniauth_lookup(env['omniauth.auth'])
  	session[:user_id] = user.id
  	redirect_to root_url, notice: "Signed in"
  end
end