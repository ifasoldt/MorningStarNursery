class Puppy < ApplicationRecord
  attachment :image
  belongs_to :sire, optional: true
  belongs_to :dam, optional: true
  validates :name, :dob, :color, :status, :description, presence: true
end
