class HomesController < ApplicationController
  before_action :authenticate_user!, only: %i(mypage unsubscribe withdraw)

  def top
    @posts = Post.all
  end

  # ユーザーのマイページを開く
  def mypage
    @user = User.find(params[:id])
    @posts = Post.where(user_id: params[:id])
    @orders = Order.where(user_id: params[:id])
  end
  
  def destroy_order
    @order = Order.find_by(params[order_id: :order_id])
    @order.destroy
    redirect_to mypage_path(current_user.id)
  end
  
  def adminpage
    @users = User.all.order(id: 'DESC').page(params[:page]).per(10)
    @delete_users = User.where(is_deleted: true).order(id: 'DESC').page(params[:page]).per(10)
  end

  def unsubscribe
    @user = User.find_by(name: params[:name])
    @posts = Post.where(user_id: @user.id)
  end

  def withdraw
    @user = User.find_by(name: params[:name])
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
end
