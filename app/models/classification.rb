class Classification < ApplicationRecord
  has_many :tags
  has_many :dreams, through: :tags
end
