class Post < ApplicationRecord
    # belongs_to :mountain_name, :item_genre, :user,optional: true
    has_many :comments, :post_images
    
    validates :detail, presence: true, length: { in: 1..500 }
    validates :strage_place, presence: true
   
    accepts_attachments_for :post_images, attachment: :image
    # attachment :item_image
end
