# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  before_action :authenticate_user!
  before_action :ensure_normal_user, only: :destroy

  # GET /user/sign_up
  # def new
  #   super
  # end

  # POST /user
  # def create
  #   super
  # end

  # GET /user/edit
  # def edit
  #   super
  # end

  # PUT /user
  def update
    super
    if account_update_params[:image].present?
      resource.avatar.attach(account_update_params[:image])
    end
  end

  # DELETE /user
  # def destroy
  #   super
  # end

  # GET /user/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, notice: 'ゲストユーザーは削除できません。'
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
