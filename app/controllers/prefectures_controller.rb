class PrefecturesController < ApplicationController
  before_action :authenticate_user!, only: [:create_place]
  def index
    @regions = ['hokkaido_touhoku', 'kanto', 'chubu', 'kinki', 'chugoku', 'shikoku', 'kyushu_okinawa']
    # @regions = { "hokkaido_touhoku" => "北海道・東北地方", "kanto" => "関東地方", "chubu" => "中部地方", "kinki" => "近畿地方", "chugoku" => "中国地方", "shikoku" => "四国地方", "kyushu_okinawa" => "九州・沖縄地方"}
    @path_name = "prefecture"
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    @places = Place.where(prefecture_id: params[:id])
    @place = Place.new
  end

  def create_place
    @prefecture = Prefecture.find(params[:id])
    @place = Place.new(place_params)
    if @place.save
      redirect_to prefecture_path(@prefecture.id), flash: { notice: '新しい山を登録しました。' }
    else
      @prefecture = Prefecture.find(params[:id])
      @places = Place.where(prefecture_id: params[:id])
      render 'prefectures/show'
    end
  end
  
  def fake
    redirect_to prefecture_path(params[:id])
  end

  def destroy_place
    @place = Place.find(params[:id])
    redirect_to prefecture_path(@place.prefecture.id), flash: { notice: '山を削除しました。' } if @place.destroy
  end

  def show_place
    @place = Place.find(params[:id])
    @posts = Post.where(place_id: params[:id]).order(id: 'DESC').page(params[:page]).per(10)
  end

  private

  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name, :prefecture_name_kana)
  end

  def place_params
    params.require(:place).permit(:name, :name_kana, :prefecture_id)
  end
end
