class DropsController < ApplicationController
  def phase1
    session[:id] = params[:prefecture_id]
    @regions1 = Prefecture.where(region: "hokkaido_touhoku")
    @regions2 = Prefecture.where(region: "kanto")
    @regions3 = Prefecture.where(region: "chubu")
    @regions4 = Prefecture.where(region: "kinki")
    @regions5 = Prefecture.where(region: "chugoku")
    @regions6 = Prefecture.where(region: "shikoku")
    @regions7 = Prefecture.where(region: "kyushu_okinawa")
  end

  def phase2
    @prefecture = Prefecture.find(params[:prefecture_id])
    @places = Place.where(prefecture_id: @prefecture.id)
  end

  def phase3
    @place = Place.find(params[:place_id])
    @item_genres = ItemGenre.all
    session[:place_id] = @place.id
  end

  def phase4
    @place = Place.find(params[:place_id])
    @item_genre = ItemGenre.find(params[:item_genre_id])
    @posts = Post.where(place_id: params[:place_id]).where(item_genre_id: params[:item_genre_id])
    @q = Post.search(params[:q])
    @result = @q.result
  end
  
  def look_for
    @q = Post.ransack(params[:q])
    @result = @q.result
  end

  private
  def search_params
    params.require(:q).permit(:name_cont)
  end
  
end