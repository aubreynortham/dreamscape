class Dream < ApplicationRecord
  belongs_to :user
  has_many :tags, dependent: :destroy
  # yesss valid8
  validates :title, presence: true,
  length: { maximum: 25 }
end
