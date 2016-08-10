class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authenticate_user!, :except => [:welcome, :show, :get_explore, :get_collective]


end
