class PostImage < ApplicationRecord
  belongs_to :post, :dependent => :destroy
  attachment :image
end
