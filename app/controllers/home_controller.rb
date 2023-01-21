class HomeController < ApplicationController
  before_action :authenticate_user!, except: %i[index]

  def index
    unless current_user
      redirect_to new_user_session_path
    end
  end
end
