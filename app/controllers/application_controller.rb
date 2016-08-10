class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :except => [:show, :get_explore, :get_collective]

end
