FactoryBot.define do

  factory :user do
    id { "1" }
    name  {"テストA"}
    email {"test_a@example.com"}
    password {"password"}
  end

end