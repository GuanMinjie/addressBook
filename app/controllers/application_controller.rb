class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  #before_filter :authenticate


  helper_method :sign_in?,:current_user
  def sign_in?
    !!sesison[:uses_id]
  end
  def sign_in user
    session[:user_id] = user.id
  end
  def  sign_out
    session[:user_id] = nil
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
      unless sign_in?
        redirect_to sign_in_path
      end
  end
end

