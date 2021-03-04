FactoryBot.define do

  factory :post do
    association :place
    association :prefecture
    association :item_genre
    association :user
    id { "1" }
    detail  {"テストです。"}
    strage_place {"テスト小屋"}
    found_day {"Mon, 01 Feb 2021"}
  end

end