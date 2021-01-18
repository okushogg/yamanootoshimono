class PickUpController < ApplicationController
  def step1
    session[:id] = params[:prefecture_id]
    @regions1 = Prefecture.where(region: "hokkaido_touhoku")
    @regions2 = Prefecture.where(region: "kanto")
    @regions3 = Prefecture.where(region: "chubu")
    @regions4 = Prefecture.where(region: "kinki")
    @regions5 = Prefecture.where(region: "chugoku")
    @regions6 = Prefecture.where(region: "shikoku")
    @regions7 = Prefecture.where(region: "kyushu_okinawa")
  end

  def step2
    @prefecture = Prefecture.find(params[:prefecture_id])
    @places = Place.where(prefecture_id: @prefecture.id)
  end

  def step3
    @place = Place.find(params[:place_id])
    @item_genres = ItemGenre.all
    session[:place_id] = @place.id
  end

  def step4
    @post = Post.new
    @place = Place.find(params[:place_id])
    @item_genre = ItemGenre.find(params[:item_genre_id])
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save!
      redirect_to complete_path,flash:{notice:'新規投稿完了しました。'}
    else
      @place = Place.find(params[:place_id])
      @item_genre = ItemGenre.find(params[:item_genre_id])
      render "step4"
    end
  end

  def complete
  end
  
  private
  def post_params
    params.require(:post).permit(:prefecture_id, :place_id, :item_genre_id, :found_day, :detail, :strage_place, :is_solved, post_images_images: [] )
  end
  
end
