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
    @item_genre = ItemGenre.find(params[:id])
  end

  def update
    @item_genre = ItemGenre.find(params[:id])
    if @item_genre.update(item_genre_params)
    redirect_to admin_item_genres_path,flash:{notice:'アイテムジャンルを編集しました。'}
    else
      render "admin/edit"
    end
  end

  def destroy
    @item_genre = ItemGenre.find(item_genre_params[:id])
    @item_genre.destroy
    redirect_to admin_item_genres_path
  end

  
  private
  def item_genre_params
    params.require(:item_genre).permit(:item_genre_name, :item_genre_kana, :genre_image, :is_active)
  end
  
end
