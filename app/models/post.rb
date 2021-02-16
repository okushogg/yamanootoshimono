class Post < ApplicationRecord
  
  belongs_to :prefecture
  belongs_to :place
  belongs_to :item_genre
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :post_images
  has_many :notifications, dependent: :destroy

  validates :detail, presence: true, length: { in: 1..500 }
  validates :strage_place, presence: true
  validates :found_day, presence: true
  validate :found_day_cannot_be_in_the_future

  accepts_attachments_for :post_images, attachment: :image

  def found_day_cannot_be_in_the_future
    errors.add(:found_day, 'に未来の日付は指定できません。') if found_day.present? && found_day > Date.today
  end
  
  def create_notification_comment!(current_user, comment_id)
    temp_ids = Comment.select(:user_id).where(post_id: id).where.not(user_id: current_user.id).distinct
    temp_ids.each do |temp_id|
      save_notification_comment!(current_user, comment_id, temp_id['user_id'])
    end
    save_notification_comment!(current_user, comment_id, user_id) if temp_ids.blank?
  end
  
  
  def save_notification_comment!(current_user, comment_id, visited_id)
    notification = current_user.active_notifications.new(
      post_id: id,
      comment_id: comment_id,
      visited_id: visited_id,
      action: 'comment'
    )
    if notification.visiter_id == notification.visited_id
      notification.checked = true
    end
    notification.save if notification.valid?
  end
  
end
