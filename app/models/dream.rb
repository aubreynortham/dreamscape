class Dream < ApplicationRecord
  has_many :tags
  has_many :classifications, :through => :tags

  validates :title, presence: true,
            length: { maximum: 25 }
end
