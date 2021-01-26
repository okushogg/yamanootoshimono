class Post < ApplicationRecord
  belongs_to :prefecture
  belongs_to :place
  belongs_to :item_genre
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :post_images

  validates :detail, presence: true, length: { in: 1..500 }
  validates :strage_place, presence: true
  validates :found_day, presence: true
  validate :found_day_cannot_be_in_the_future

  accepts_attachments_for :post_images, attachment: :image

  def found_day_cannot_be_in_the_future
    errors.add(:found_day, 'に未来の日付は指定できません。') if found_day.present? && found_day > Date.today
  end
end
