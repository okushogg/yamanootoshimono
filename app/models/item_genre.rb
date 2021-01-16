class ItemGenre < ApplicationRecord
    has_many :posts
    validates :item_genre_name, presence: true, length: { in: 1..20 }
    attachment :genre_image
end
