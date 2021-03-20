class PickUpController < ApplicationController
  def step1
    @regions = ['hokkaido_touhoku', 'kanto', 'chubu', 'kinki', 'chugoku', 'shikoku', 'kyushu_okinawa']
    @path_name = "pick_up"
  end

  def step2
    @prefecture = Prefecture.find(params[:id])
    @places = Place.where(prefecture_id: @prefecture.id)
    @place = Place.new
    session[:prefecture_id] = @prefecture.id 
  end

  def create_place
    @prefecture = Prefecture.find_by(id: session[:prefecture_id])
    @place = Place.new(place_params)
    if @place.save
      redirect_to step2_path(@place.prefecture.id), flash: { notice: '新しい山を登録しました。' }
    else
      @prefecture = Prefecture.find_by(id: session[:prefecture_id])
      @places = Place.where(prefecture_id: @prefecture.id)
      render 'step2'
    end
  end

  def step3
    @place = Place.find(params[:id])
    @item_genres = ItemGenre.all
    session[:place_id] = @place.id
  end

  def step4
    @post = Post.new
    @place = Place.find_by(id: session[:place_id])
    @item_genre = ItemGenre.find(params[:id])
    session[:item_genre_id] = @item_genre.id
  end

  def create
    @post = Post.new(post_params)
    if user_signed_in?
      @user = current_user
    else
      @user = User.find_by(name: 'Sam')
    end
    @post.user_id = @user.id
    if @post.save
      match_orders = Order.where(place_id: @post.place.id).where(item_genre_id: @post.item_genre.id)
      if match_orders.blank?
        redirect_to complete_path, flash: { notice: '新規投稿完了しました。' }
      else
        @post.create_notification_order!(@user.id, @post.id)
        redirect_to complete_path, flash: { notice: '新規投稿完了しました!' }
      end
    else
      @place = Place.find_by(id: session[:place_id])
      @item_genre = ItemGenre.find_by(id: session[:item_genre_id])
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
