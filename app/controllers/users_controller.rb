class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:mypage]

  def show
    @user = User.find(params[:id])
    @toilet = Toilet.find(params[:id])
    # binding.pry
  end

  def mypage
    @toilets = Toilet.all
    # binding.pry
  end
end
