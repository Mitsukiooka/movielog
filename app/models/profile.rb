class Profile < ApplicationRecord
  mount_uploader :image, WorkImageUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :from, presence: true
  validates :image, presence: true
  belongs_to :user

end
