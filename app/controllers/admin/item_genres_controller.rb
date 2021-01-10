class Admin::ItemGenresController < ApplicationController
  def index
    @item_genre = ItemGenre.new
  end

  def show
  end

  def edit
  end
  
  private

  def genre_params
    params.require(:item_genre).permit(:item_genre_name, :is_active)
  end
  
end
