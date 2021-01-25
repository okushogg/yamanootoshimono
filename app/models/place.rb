class Place < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :prefecture
  validates :prefecture_id, presence: true
  validates :name, presence: true, length: { in: 1..10 }
  validates :name_kana, presence: true, length: { in: 1..20 }
end
