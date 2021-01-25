class Place < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :prefecture
  validates :prefecture_id, presence: true
  validates :name, presence: true, length: { in: 1..10 }
  validates :name_kana, presence: true, length: { in: 1..20 }

  
  validate :unique_place_validate
  
  def unique_place_validate
    place = Place.find_by(prefecture_id: self.prefecture_id, name: self.name)
    if place.present?
      errors.add(:name)
    end
  end
  
end
