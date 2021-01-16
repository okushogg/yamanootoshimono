class Prefecture < ApplicationRecord
    has_many :posts
    has_many :mountain_names
    attachment :prefecture_image
end
