class Post < ApplicationRecord
  belongs_to :prefecture 
  belongs_to :place
  belongs_to :item_genre
  belongs_to :user
  has_many :comments
  has_many :post_images
  
  validates :detail, presence: true, length: { in: 1..500 }
  validates :strage_place, presence: true
  accepts_attachments_for :post_images, attachment: :image
end
