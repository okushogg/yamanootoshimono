class Admin::PrefecturesController < ApplicationController
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
    @mountain_names = MountainName.all
    @mountain_name = MountainName.new
    # session[:mountain_id] = params[:prefecture][:mountain_id]
  end

  def create_mountain_name
    @prefecture = Prefecture.find(params[:id])
    @mountain_name = MountainName.new(mountain_name_params)
    if @mountain_name.save!
      redirect_to admin_prefecture_path(@prefecture.id),flash:{notice:'新しい山を登録しました。'}
    else
      @prefecture = Prefecture.find(params[:id])
      @mountain_names = MountainName.all
      render "admin/prefectures/show"
    end
  end
  
  def post_new
    session[:mountain_id] = params[:prefecture][:mountain_id]
  end
  
  

  private
  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name, :prefecture_name_kana, :prefecture_image)
  end
  
  def mountain_name_params
    params.require(:mountain_name).permit(:mountain_name, :mountain_name_kana, :prefecture_id )
  end
  
end
