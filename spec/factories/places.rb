FactoryBot.define do

  factory :place do
    association :prefecture
    id { "1" }
    name  {"テスト山"}
    name_kana {"てすとやま"}
  end

end