class PrefecturesController < ApplicationController
  def index
    @regions1 = Prefecture.where(region: "hokkaido_touhoku")
    @regions2 = Prefecture.where(region: "kanto")
    @regions3 = Prefecture.where(region: "chubu")
    @regions4 = Prefecture.where(region: "kinki")
    @regions5 = Prefecture.where(region: "chugoku")
    @regions6 = Prefecture.where(region: "shikoku")
    @regions7 = Prefecture.where(region: "kyushu_okinawa")
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    @places = Place.where(prefecture_id: params[:id])
    @place = Place.new
  end
  
  def create_place
    @prefecture = Prefecture.find(params[:prefecture_id])
    @place = Place.new(place_params)
    if @place.save!
      redirect_to prefecture_path(@prefecture.id),flash:{notice:'新しい山を登録しました。'}
    else
      @prefecture = Prefecture.find(params[:id])
      @places = Place.where(prefecture_id: params[:id])
      render "prefectures/show"
    end
  end
  
  private
  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name, :prefecture_name_kana)
  end
  
  def place_params
    params.require(:place).permit(:name, :name_kana, :prefecture_id )
  end
  
end
