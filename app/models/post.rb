class Post < ApplicationRecord
    belongs_to :mountain_name, :prefecture, :item_genre, :users
    has_many :comments
    
    validates :detail, presence: true, length: { in: 1..500 }
    validates :strage_place, presence: true
    
    attachment :item_image
end
