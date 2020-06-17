class Director < ApplicationRecord
  mount_uploader :image, WorkImageUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :from, presence: true


  has_many :works
end
