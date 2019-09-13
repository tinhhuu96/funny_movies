class SharesController < ApplicationController
  before_action :authenticate_user!

  def new
  end
  
  def create
    @user_share = current_user.user_shares.new(movie_params)
    if @user_share.valid?
      @user_share.save
      redirect_to root_path, flash: {success: 'movie has been shared'}
    else
      render :new, flash: {error: 'errors'}
    end
  end
  
  private 

  def movie_params
    params.require(:movie).permit(:link, :share_type)
  end
end