# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# モデルクラス名.create(:カラム名1 => 値1, :カラム名2 => 値2, ...)

# Prefecture.create(prefecture_name: '北海道', prefecture_name_kana: 'ほっかいどう', region: 'hokkaido_touhoku',prefecture_image: File.open('./db/image/prefecture1.png'))
3.times do |n|
sample = "#{n+1}A"
sample_kana = "#{n+1}B"

Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'hokkaido_touhoku' )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'kanto' )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'chubu' )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'kinki' )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: "chugoku" )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'shikoku' )
Prefecture.create(prefecture_name: sample, prefecture_name_kana: sample_kana, region: 'kyushu_okinawa' )

end