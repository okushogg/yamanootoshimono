class PickUpController < ApplicationController
  def step1
    # session[:id] = params[:prefecture_id]
    @regions1 = Prefecture.where(region: 'hokkaido_touhoku')
    @regions2 = Prefecture.where(region: 'kanto')
    @regions3 = Prefecture.where(region: 'chubu')
    @regions4 = Prefecture.where(region: 'kinki')
    @regions5 = Prefecture.where(region: 'chugoku')
    @regions6 = Prefecture.where(region: 'shikoku')
    @regions7 = Prefecture.where(region: 'kyushu_okinawa')
  end

  def step2
    @prefecture = Prefecture.find(params[:id])
    @places = Place.where(prefecture_id: @prefecture.id)
    @place = Place.new
  end

  def create_place
    @prefecture = Prefecture.find_by(params[:prefecture_id])
    @place = Place.new(place_params)
    if @place.save
      redirect_to step2_path(@place.prefecture.id), flash: { notice: '新しい山を登録しました。' }
    else
      @prefecture = Prefecture.find_by(params[:prefecture_id])
      @places = Place.where(prefecture_id: @prefecture.id)
      render 'step2'
    end
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
    @post.user_id = if user_signed_in?
                      current_user.id
                    else
                      User.find_by(name: 'ゲスト').id
                    end
    if @post.save
      redirect_to complete_path, flash: { notice: '新規投稿完了しました。' }
    else
      @place = Place.find_by(params[:place_id])
      @item_genre = ItemGenre.find_by(params[:item_genre_id])
      render 'step4'
    end
  end
  
  def fake
    redirect_to step1_path,flash: { notice: 'もう一度都道府県を選んでください。' }
  end

  private

  def post_params
    params.require(:post).permit(:prefecture_id, :place_id, :item_genre_id, :found_day, :detail, :strage_place,
                                 :is_solved, post_images_images: [])
  end

  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name, :prefecture_name_kana)
  end

  def place_params
    params.require(:place).permit(:name, :name_kana, :prefecture_id)
  end
end
