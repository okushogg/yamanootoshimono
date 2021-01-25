class ItemGenre < ApplicationRecord
  has_many :posts, dependent: :destroy
  attachment :genre_image
  validates :name, presence: true, length: { in: 1..20 }
  validates :name, presence: true, length: { in: 1..20 }
end
