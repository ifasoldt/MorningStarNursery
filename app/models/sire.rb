class Sire < ApplicationRecord
  attachment :image
  has_many :puppies
  validates :name, :description, presence: true
end
