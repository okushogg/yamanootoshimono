class Admin::ItemGenresController < ApplicationController
  def index
    @item_genre = ItemGenre.new
    @item_genres = ItemGenre.all
  end
  
  def create
    @item_genre = ItemGenre.new(item_genre_params)
    if @item_genre.save
      redirect_to admin_item_genres_path,flash:{notice:'新規アイテムジャンルを登録しました。'}
    else
      @item_genres = ItemGenre.all
      render "admin/index"
    end
  end
  
  def show
  end

  def edit
  end
  
  private
  def item_genre_params
    params.require(:item_genre).permit(:item_genre_name, :item_genre_kana, :genre_image, :is_active)
  end
  
end
