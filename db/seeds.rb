# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者情報
User.create(name: '管理者', email: 'admin@example.com', password:'okugawa', password_confirmation: 'okugawa', admin: true )

# テストユーザー情報
User.create(name: 'Tanaka', email: 'tanaka@example.com', password:'okugawa', password_confirmation: 'okugawa', admin: false )
User.create(name: 'Suzuki', email: 'suzuki@example.com', password:'okugawa', password_confirmation: 'okugawa', admin: false )
User.create(name: 'Bob', email: 'bob@example.com', password:'okugawa', password_confirmation: 'okugawa', admin: false )
User.create(name: 'Sam', email: 'sam@example.com', password:'okugawa', password_confirmation: 'okugawa', admin: false )

# 都道府県情報
Prefecture.create(prefecture_name: '北海道', prefecture_name_kana: 'ほっかいどう', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '青森県', prefecture_name_kana: 'あおもりけん', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '岩手県', prefecture_name_kana: 'いわてけん', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '宮城県', prefecture_name_kana: 'みやぎけん', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '秋田県', prefecture_name_kana: 'あきたけん', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '山形県', prefecture_name_kana: 'やまがた', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '福島県', prefecture_name_kana: 'ふくしまけん', region: 'hokkaido_touhoku')
Prefecture.create(prefecture_name: '茨城県', prefecture_name_kana: 'いばらきけん', region: 'kanto')
Prefecture.create(prefecture_name: '栃木県', prefecture_name_kana: 'とちぎけん', region: 'kanto')
Prefecture.create(prefecture_name: '群馬県', prefecture_name_kana: 'ぐんまけん', region: 'kanto')
Prefecture.create(prefecture_name: '埼玉県', prefecture_name_kana: 'さいたまけん', region: 'kanto')
Prefecture.create(prefecture_name: '千葉県', prefecture_name_kana: 'ちばけん', region: 'kanto')
Prefecture.create(prefecture_name: '東京都', prefecture_name_kana: 'とうきょうと', region: 'kanto')
Prefecture.create(prefecture_name: '神奈川県', prefecture_name_kana: 'かながわけん', region: 'kanto')
Prefecture.create(prefecture_name: '新潟県', prefecture_name_kana: 'にいがた', region: 'chubu')
Prefecture.create(prefecture_name: '富山県', prefecture_name_kana: 'とやまけん', region: 'chubu')
Prefecture.create(prefecture_name: '石川県', prefecture_name_kana: 'いしかわけん', region: 'chubu')
Prefecture.create(prefecture_name: '福井県', prefecture_name_kana: 'ふくいけん', region: 'chubu')
Prefecture.create(prefecture_name: '山梨県', prefecture_name_kana: 'やまなしけん', region: 'chubu')
Prefecture.create(prefecture_name: '長野県', prefecture_name_kana: 'ながのけん', region: 'chubu')
Prefecture.create(prefecture_name: '岐阜県', prefecture_name_kana: 'ぎふけん', region: 'chubu')
Prefecture.create(prefecture_name: '静岡県', prefecture_name_kana: 'しずおかけん', region: 'chubu')
Prefecture.create(prefecture_name: '愛知県', prefecture_name_kana: 'あいちけん', region: 'chubu')
Prefecture.create(prefecture_name: '三重県', prefecture_name_kana: 'みえけん', region: 'kinki')
Prefecture.create(prefecture_name: '滋賀県', prefecture_name_kana: 'しがけん', region: 'kinki')
Prefecture.create(prefecture_name: '京都府', prefecture_name_kana: 'きょうとふ', region: 'kinki')
Prefecture.create(prefecture_name: '大阪府', prefecture_name_kana: 'おおさかふ', region: 'kinki')
Prefecture.create(prefecture_name: '兵庫県', prefecture_name_kana: 'ひょうごけん', region: 'kinki')
Prefecture.create(prefecture_name: '奈良県', prefecture_name_kana: 'ならけん', region: 'kinki')
Prefecture.create(prefecture_name: '和歌山県', prefecture_name_kana: 'わかやまけん', region: 'kinki')
Prefecture.create(prefecture_name: '鳥取県', prefecture_name_kana: 'とっとり', region: 'chugoku')
Prefecture.create(prefecture_name: '島根県', prefecture_name_kana: 'しまねけん', region: 'chugoku')
Prefecture.create(prefecture_name: '岡山県', prefecture_name_kana: 'おかやまけん', region: 'chugoku')
Prefecture.create(prefecture_name: '広島県', prefecture_name_kana: 'ひろしまけん', region: 'chugoku')
Prefecture.create(prefecture_name: '山口県', prefecture_name_kana: 'やまぐちけん', region: 'chugoku')
Prefecture.create(prefecture_name: '徳島県', prefecture_name_kana: 'とくしまけん', region: 'shikoku')
Prefecture.create(prefecture_name: '香川県', prefecture_name_kana: 'かがわけん', region: 'shikoku')
Prefecture.create(prefecture_name: '愛媛県', prefecture_name_kana: 'えひめけん', region: 'shikoku')
Prefecture.create(prefecture_name: '高知県', prefecture_name_kana: 'こうちけん', region: 'shikoku')
Prefecture.create(prefecture_name: '福岡県', prefecture_name_kana: 'ふくおかけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '佐賀県', prefecture_name_kana: 'さがけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '長崎県', prefecture_name_kana: 'ながさきけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '熊本県', prefecture_name_kana: 'くまもとけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '大分県', prefecture_name_kana: 'おおいたけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '宮崎県', prefecture_name_kana: 'みやざきけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '鹿児島県', prefecture_name_kana: 'かごしまけん', region: 'kyushu_okinawa')
Prefecture.create(prefecture_name: '沖縄県', prefecture_name_kana: 'おきなわけん', region: 'kyushu_okinawa')

# 山の情報
Place.create(name: '旭岳', name_kana: 'あさひだけ', prefecture_id:'1' )
Place.create(name: '藻岩山', name_kana: 'もいわやま', prefecture_id:'1' )
Place.create(name: '羊蹄山', name_kana: 'ようていざん', prefecture_id:'1' )
Place.create(name: '大山', name_kana: 'だいせん', prefecture_id:'31' )
Place.create(name: '伊吹山', name_kana: 'いぶきやま', prefecture_id:'25' )
Place.create(name: '石鎚山', name_kana: 'いしづちさん', prefecture_id:'38' )
Place.create(name: '霧島山', name_kana: 'きりしまやま', prefecture_id:'46' )

# アイテムジャンル
ItemGenre.create(name: 'test', name_kana: 'test', is_original: true)