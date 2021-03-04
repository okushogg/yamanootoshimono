crumb :root do
  link "トップページ", root_path
end

crumb :step1 do
  link "都道府県を選択", step1_path
  parent :root
end

crumb :step2 do
  link "場所を選択", step2_path(session[:prefecture_id])
  parent :step1
end

crumb :step3 do
  link "道具の種類を選択", step3_path(session[:place_id])
  parent :step2
end

crumb :step4 do
  link "詳細を入力", step4_path(session[:item_genre_id])
  parent :step3
end