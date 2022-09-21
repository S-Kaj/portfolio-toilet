class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @toilets = Toilet.order("created_at DESC").limit(10)
    if current_user.id == @user.id
      redirect_to mypage_users_path
    end
  end

  def mypage
    @toilets = Toilet.order("created_at DESC").limit(5)
  end
end
