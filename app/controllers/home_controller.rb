class HomeController < ApplicationController
  before_action :set_movies, only: :index

  def index
    @users = User.all
  end
  
  private

  def set_movies
    return unless user_signed_in?
    @movies = current_user.user_shares
  end
  
end