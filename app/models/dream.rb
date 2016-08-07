class Dream < ApplicationRecord
  has_many :tags
  has_many :classifications, :through => :tags
end
