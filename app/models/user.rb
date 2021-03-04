class User < ApplicationRecord
  
  has_many :active_notifications, class_name:"Notification", foreign_key:"visiter_id", dependent: :destroy
  has_many :passive_notifications, class_name:"Notification", foreign_key:"visited_id", dependent: :destroy  
  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { in: 1..15 }

  def self.guest
    find_or_create_by!(name: 'ゲスト', email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
