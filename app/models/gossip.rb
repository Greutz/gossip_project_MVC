class Gossip < ApplicationRecord
  validates :content, presence: true
  validates :title, length: { in: 3..14 }, presence: true
  belongs_to :user
  belongs_to :tag_has_gossips, optional: true
  has_many :tags, through: :tag_has_gossips
  has_many :comments
end
