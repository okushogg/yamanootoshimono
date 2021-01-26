# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # 退会したユーザーを弾く
  before_action :reject_inactive_user, only: [:create]

  # ゲストログインに関するアクション
  def new_guest
    user = User.guest
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  # 退会したユーザーを弾く
  def reject_inactive_user
    @user = User.find_by(name: params[:user][:name])
    redirect_to new_user_session_path if @user && @user.valid_password?(params[:user][:password]) && !@user.is_valid
  end

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
