class Prefecture < ApplicationRecord
    has_many :mountain_names
    attachment :prefectur
end
