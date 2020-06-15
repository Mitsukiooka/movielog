class Director < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :from, presence: true

  has_many :works
end
