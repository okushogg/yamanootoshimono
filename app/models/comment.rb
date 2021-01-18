class Comment < ApplicationRecord
  belongs_to :post, :dependent => :destroy
  belongs_to :user, :dependent => :destroy
  validates :content, presence: true, length: { in: 1..200 }
end
