class Gossip < ApplicationRecord
  belongs_to :user
  belongs_to :tag_has_gossips, optional: true
  has_many :tags, through: :tag_has_gossips
  has_many :comments
end
