class MountainName < ApplicationRecord
    has_many :posts
    belongs_to :prefectures
    validates :mountain_name, presence: true, length: { in: 1..10 }
    validates :mountain_name_kana, presence: true, length: { in: 1..20 }
end
