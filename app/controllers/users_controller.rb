class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @toilet = Toilet.find(params[:id])
  end

  def mypage
    @toilets = Toilet.all
  end
end
