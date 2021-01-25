class HomesController < ApplicationController
  def top
    @posts = Post.all
  end

  # ユーザーのマイページを開く
  def mypage
    @user = User.find(params[:id])
    @posts = Post.where(user_id: params[:id])
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
