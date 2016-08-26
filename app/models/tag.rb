class Tag < ApplicationRecord
  belongs_to :dream
  # consider making a join model taggings!!!!! many-to-many-madness
end
