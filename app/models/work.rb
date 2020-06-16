class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader
  validates :title, presence: true
  validates :release, presence: true
  validates :starring, presence: true
  validates :description, presence: true

  belongs_to :director

  acts_as_list

  scope :by_position, ->{ order(position: :asc) }


end
