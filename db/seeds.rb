# 管理者情報
User.create(name: '管理者', email: 'admin@example.com', password: 'okugawa', password_confirmation: 'okugawa', admin: true)

# テストユーザー情報
User.create(name: 'Tanaka', email: 'tanaka@example.com', password: 'okugawa', password_confirmation: 'okugawa',
            admin: false)
User.create(name: 'Suzuki', email: 'suzuki@example.com', password: 'okugawa', password_confirmation: 'okugawa',
            admin: false)
User.create(name: 'Bob', email: 'bob@example.com', password: 'okugawa', password_confirmation: 'okugawa', admin: false)
User.create(name: 'Sam', email: 'sam@example.com', password: 'okugawa', password_confirmation: 'okugawa', admin: false)

# 都道府県情報
Prefecture.create(prefecture_name: '北海道', prefecture_name_kana: 'ほっかいどう', region: 'hokkaido_touhoku', picture: 1)
Prefecture.create(prefecture_name: '青森県', prefecture_name_kana: 'あおもりけん', region: 'hokkaido_touhoku', picture: 2)
Prefecture.create(prefecture_name: '岩手県', prefecture_name_kana: 'いわてけん', region: 'hokkaido_touhoku', picture: 3)
Prefecture.create(prefecture_name: '宮城県', prefecture_name_kana: 'みやぎけん', region: 'hokkaido_touhoku', picture: 4)
Prefecture.create(prefecture_name: '秋田県', prefecture_name_kana: 'あきたけん', region: 'hokkaido_touhoku', picture: 5)
Prefecture.create(prefecture_name: '山形県', prefecture_name_kana: 'やまがた', region: 'hokkaido_touhoku', picture: 6)
Prefecture.create(prefecture_name: '福島県', prefecture_name_kana: 'ふくしまけん', region: 'hokkaido_touhoku', picture:7)
Prefecture.create(prefecture_name: '茨城県', prefecture_name_kana: 'いばらきけん', region: 'kanto', picture: 8)
Prefecture.create(prefecture_name: '栃木県', prefecture_name_kana: 'とちぎけん', region: 'kanto', picture: 9)
Prefecture.create(prefecture_name: '群馬県', prefecture_name_kana: 'ぐんまけん', region: 'kanto', picture: 10)
Prefecture.create(prefecture_name: '埼玉県', prefecture_name_kana: 'さいたまけん', region: 'kanto', picture: 11)
Prefecture.create(prefecture_name: '千葉県', prefecture_name_kana: 'ちばけん', region: 'kanto', picture: 12)
Prefecture.create(prefecture_name: '東京都', prefecture_name_kana: 'とうきょうと', region: 'kanto', picture: 13)
Prefecture.create(prefecture_name: '神奈川県', prefecture_name_kana: 'かながわけん', region: 'kanto', picture: 14)
Prefecture.create(prefecture_name: '新潟県', prefecture_name_kana: 'にいがた', region: 'chubu', picture: 15)
Prefecture.create(prefecture_name: '富山県', prefecture_name_kana: 'とやまけん', region: 'chubu', picture: 16)
Prefecture.create(prefecture_name: '石川県', prefecture_name_kana: 'いしかわけん', region: 'chubu', picture: 17)
Prefecture.create(prefecture_name: '福井県', prefecture_name_kana: 'ふくいけん', region: 'chubu', picture: 18)
Prefecture.create(prefecture_name: '山梨県', prefecture_name_kana: 'やまなしけん', region: 'chubu', picture: 19)
Prefecture.create(prefecture_name: '長野県', prefecture_name_kana: 'ながのけん', region: 'chubu', picture: 20)
Prefecture.create(prefecture_name: '岐阜県', prefecture_name_kana: 'ぎふけん', region: 'chubu', picture: 21)
Prefecture.create(prefecture_name: '静岡県', prefecture_name_kana: 'しずおかけん', region: 'chubu', picture: 22)
Prefecture.create(prefecture_name: '愛知県', prefecture_name_kana: 'あいちけん', region: 'chubu', picture: 23)
Prefecture.create(prefecture_name: '三重県', prefecture_name_kana: 'みえけん', region: 'kinki', picture: 24)
Prefecture.create(prefecture_name: '滋賀県', prefecture_name_kana: 'しがけん', region: 'kinki', picture: 25)
Prefecture.create(prefecture_name: '京都府', prefecture_name_kana: 'きょうとふ', region: 'kinki', picture: 26)
Prefecture.create(prefecture_name: '大阪府', prefecture_name_kana: 'おおさかふ', region: 'kinki', picture: 27)
Prefecture.create(prefecture_name: '兵庫県', prefecture_name_kana: 'ひょうごけん', region: 'kinki', picture: 28)
Prefecture.create(prefecture_name: '奈良県', prefecture_name_kana: 'ならけん', region: 'kinki', picture: 29)
Prefecture.create(prefecture_name: '和歌山県', prefecture_name_kana: 'わかやまけん', region: 'kinki', picture: 30)
Prefecture.create(prefecture_name: '鳥取県', prefecture_name_kana: 'とっとり', region: 'chugoku', picture: 31)
Prefecture.create(prefecture_name: '島根県', prefecture_name_kana: 'しまねけん', region: 'chugoku', picture: 32)
Prefecture.create(prefecture_name: '岡山県', prefecture_name_kana: 'おかやまけん', region: 'chugoku', picture: 33)
Prefecture.create(prefecture_name: '広島県', prefecture_name_kana: 'ひろしまけん', region: 'chugoku', picture: 34)
Prefecture.create(prefecture_name: '山口県', prefecture_name_kana: 'やまぐちけん', region: 'chugoku', picture: 35)
Prefecture.create(prefecture_name: '徳島県', prefecture_name_kana: 'とくしまけん', region: 'shikoku', picture: 36)
Prefecture.create(prefecture_name: '香川県', prefecture_name_kana: 'かがわけん', region: 'shikoku', picture: 37)
Prefecture.create(prefecture_name: '愛媛県', prefecture_name_kana: 'えひめけん', region: 'shikoku', picture: 38)
Prefecture.create(prefecture_name: '高知県', prefecture_name_kana: 'こうちけん', region: 'shikoku', picture: 39)
Prefecture.create(prefecture_name: '福岡県', prefecture_name_kana: 'ふくおかけん', region: 'kyushu_okinawa', picture: 40)
Prefecture.create(prefecture_name: '佐賀県', prefecture_name_kana: 'さがけん', region: 'kyushu_okinawa', picture: 41)
Prefecture.create(prefecture_name: '長崎県', prefecture_name_kana: 'ながさきけん', region: 'kyushu_okinawa', picture: 42)
Prefecture.create(prefecture_name: '熊本県', prefecture_name_kana: 'くまもとけん', region: 'kyushu_okinawa', picture: 43)
Prefecture.create(prefecture_name: '大分県', prefecture_name_kana: 'おおいたけん', region: 'kyushu_okinawa', picture: 44)
Prefecture.create(prefecture_name: '宮崎県', prefecture_name_kana: 'みやざきけん', region: 'kyushu_okinawa', picture: 45)
Prefecture.create(prefecture_name: '鹿児島県', prefecture_name_kana: 'かごしまけん', region: 'kyushu_okinawa', picture: 46)
Prefecture.create(prefecture_name: '沖縄県', prefecture_name_kana: 'おきなわけん', region: 'kyushu_okinawa', picture: 47)

# 山の情報
Place.create(name: '旭岳', name_kana: 'あさひだけ', prefecture_id: '1')
Place.create(name: '藻岩山', name_kana: 'もいわやま', prefecture_id: '1')
Place.create(name: '羊蹄山', name_kana: 'ようていざん', prefecture_id: '1')
Place.create(name: '大山', name_kana: 'だいせん', prefecture_id: '31')
Place.create(name: '伊吹山', name_kana: 'いぶきやま', prefecture_id: '25')
Place.create(name: '石鎚山', name_kana: 'いしづちさん', prefecture_id: '38')
Place.create(name: '霧島山', name_kana: 'きりしまやま', prefecture_id: '46')

# アイテムジャンル
ItemGenre.create(name: 'トップス', name_kana: 'とっぷす', is_original: true)
ItemGenre.create(name: 'ボトムス', name_kana: 'ぼとむす', is_original: true)
ItemGenre.create(name: 'ソックス', name_kana: 'そっくす', is_original: true)
ItemGenre.create(name: 'グローブ', name_kana: 'ぐろーぶ', is_original: true)
ItemGenre.create(name: '帽子', name_kana: 'ぼうし', is_original: true)
ItemGenre.create(name: 'タイツ・サポーター', name_kana: 'たいつ・さぽーたー', is_original: true)
ItemGenre.create(name: 'フットウェア', name_kana: 'ふっとうぇあ', is_original: true)
ItemGenre.create(name: 'バッグ', name_kana: 'ばっぐ', is_original: true)
ItemGenre.create(name: 'ストック', name_kana: 'すとっく', is_original: true)
ItemGenre.create(name: '冬山ギア', name_kana: 'ふゆやまぎあ', is_original: true)
ItemGenre.create(name: 'クライミング用品', name_kana: 'くらいみんぐようひん', is_original: true)
ItemGenre.create(name: 'テント・タープ', name_kana: 'てんと・たーぷ', is_original: true)
ItemGenre.create(name: 'シュラフ', name_kana: 'しゅらふ', is_original: true)
ItemGenre.create(name: 'バーナー・燃料', name_kana: 'ばーなー・しょくひん', is_original: true)
ItemGenre.create(name: '調理器具・食品', name_kana: 'ちょうりきぐ・しょくひん', is_original: true)
ItemGenre.create(name: 'ライト', name_kana: 'らいと', is_original: true)
ItemGenre.create(name: 'アイウェア', name_kana: 'あいうぇあ', is_original: true)
ItemGenre.create(name: 'ボトル', name_kana: 'ぼとる', is_original: true)
ItemGenre.create(name: '携帯・財布・鍵', name_kana: 'けいたい・さいふ・かぎ', is_original: true)
ItemGenre.create(name: 'その他', name_kana: 'そのた', is_original: true)
