crumb :root do
  link "トップページ", root_path
end

crumb :step1 do
  link "都道府県を選択", step1_path
  parent :root
end

crumb :step2 do
  @prefecture = Prefecture.find_by(params[:prefecture_id])
  link "場所を選択", step2_path(@prefecture.id)
  parent :step1
end

crumb :step3 do
  @place = Place.find(params[:place_id])
  link "道具の種類を選択", step3_path(@place.id)
  parent :step2
end

crumb :step4 do
  @place = Place.find(params[:place_id])
  @item_genre = ItemGenre.find(params[:item_genre_id])
  link "詳細を入力", step4_path(@place.id, @item_genre.id)
  parent :step3
end