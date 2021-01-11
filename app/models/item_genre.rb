class ItemGenre < ApplicationRecord
    belongs_to :posts
    validates :item_genre_name, presence: true, length: { in: 1..20 }
end
