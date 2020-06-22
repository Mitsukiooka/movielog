class Review < ApplicationRecord
  belongs_to :work
  belongs_to :user
  validates :rate, presence: true
  validates :comment, presence: true
end
