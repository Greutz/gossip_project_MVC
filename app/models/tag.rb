class Tag < ApplicationRecord
  belongs_to :tag_has_gossips
  has_many :gossips, through: :tag_has_gossips
end
