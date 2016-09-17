class Puppy < ApplicationRecord
  attachment :image
  validates :name, :dob, :color, :status, :description, presence: true
end
