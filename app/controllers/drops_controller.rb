class DropsController < ApplicationController
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
    @place = Place.find_by(id: session[:place_id])
    @item_genre = ItemGenre.find(params[:id])
    session[item_genre_id] = @item_genre.id
    @posts = Post.where(place_id: params[:place_id]).where(item_genre_id: params[:item_genre_id]).order(id: 'DESC').page(params[:page]).per(10)
    @q = Post.search(params[:q])
    @result = @q.result
  end

  def look_for
    @q = Post.ransack(params[:q])
    @result = @q.result.order(id: 'DESC').page(params[:page]).per(10)
  end

  private

  def search_params
    params.require(:q).permit(:name_cont)
  end
end
