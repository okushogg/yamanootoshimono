class Comment < ApplicationRecord
    belongs_to :posts
    validates :content, presence: true, length: { in: 1..200 }
end
