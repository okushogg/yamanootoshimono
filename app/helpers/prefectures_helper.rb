module PrefecturesHelper
  
  # 部分テンプレートでリンクパスを指定する
  def get_prefecture_path(prefecture_id, path_name)
    case path_name
      when "prefecture" then
        prefecture_path(prefecture_id)
      when "pick_up" then
        step2_path(prefecture_id)
      when "drops" then
        phase2_path(prefecture_id)
      when "add_place_form" then
        step2_create_place_path(prefecture.id)
    end
  end
  
  # 地方名を表示する
  def get_region_name(region)
    case region
      when "hokkaido_touhoku" then
        "北海道・東北地方"
      when "kanto" then
        "関東地方"
      when "chubu" then
        "中部地方"
      when "kinki" then
        "近畿地方"
      when "chugoku" then
        "中国地方"
      when "shikoku" then
        "四国地方"
      when "kyushu_okinawa" then
        "九州・沖縄地方"
    end
  end
  
end
