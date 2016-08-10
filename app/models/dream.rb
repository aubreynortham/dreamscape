class Dream < ApplicationRecord
  belongs_to :user
  has_many :tags, dependent: :destroy

  validates :title, presence: true,
  length: { maximum: 25 }
end
