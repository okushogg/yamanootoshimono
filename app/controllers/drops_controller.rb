class DropsController < ApplicationController
  before_action :authenticate_user!, only: %i(create_order)
  
  def phase1
    @regions1 = Prefecture.where(region: 'hokkaido_touhoku')
    @regions2 = Prefecture.where(region: 'kanto')
    @regions3 = Prefecture.where(region: 'chubu')
    @regions4 = Prefecture.where(region: 'kinki')
    @regions5 = Prefecture.where(region: 'chugoku')
    @regions6 = Prefecture.where(region: 'shikoku')
    @regions7 = Prefecture.where(region: 'kyushu_okinawa')
  end

  def phase2
    @prefecture = Prefecture.find(params[:id])
    @places = Place.where(prefecture_id: @prefecture.id)
    session[:prefecture_id] = @prefecture.id 
  end

  def phase3
    @place = Place.find(params[:id])
    @item_genres = ItemGenre.all
    session[:place_id] = @place.id
  end

  def phase4
    @order = Order.new
    @place = Place.find_by(id: session[:place_id])
    @item_genre = ItemGenre.find(params[:id])
    session[:item_genre_id] = @item_genre.id
    @posts = Post.where(place_id: @place.id).where(item_genre_id: @item_genre.id).order(id: 'DESC').page(params[:page]).per(10)
    @q = Post.search(params[:q])
    @result = @q.result
  end

  def look_for
    @order = Order.new
    @q = Post.ransack(params[:q])
    @result = @q.result.order(id: 'DESC').page(params[:page]).per(10)
  end

  def create_order
    @order = Order.new(order_params)
    @order.user_id = current_user.id 
    if @order.save
      redirect_to mypage_path(current_user.id), flash: { notice: '新しく捜索願を作成しました。' }
    else
      @q = Post.search(params[:q])
      @place = Place.find_by(id: session[:place_id])
      @item_genre = ItemGenre.find_by(id: session[:item_genre_id])
      @posts = Post.where(place_id: @place.id).where(item_genre_id: @item_genre.id).order(id: 'DESC').page(params[:page]).per(10)
      render 'phase4'
    end
  end
  
  private

  def search_params
    params.require(:q).permit(:name_cont)
  end
  
  def order_params
    params.require(:order).permit(:title, :content, :user_id, :place_id, :item_genre_id)
  end
  
end
