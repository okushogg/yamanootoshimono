class Order < ApplicationRecord
  belongs_to :place
  belongs_to :item_genre
  belongs_to :user
  
  has_many :notifications, dependent: :destroy
  
  validates :title, presence: true, length: { in: 1..20 }
  validates :content, presence: true, length: { in: 1..100 }
end
