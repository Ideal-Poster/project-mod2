class ApplicationController < ActionController::Base
  before_action :auth

  def auth
    if session[:user_id]
      # goes to action
    else
      redirect_to '/'
    end
  end
end
