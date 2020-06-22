class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader
  validates :title, presence: true
  validates :release, presence: true
  validates :starring, presence: true
  validates :description, presence: true

  belongs_to :director

  has_many :work_genres, dependent: :destroy
  has_many :genres, through: :work_genres
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  acts_as_list

  scope :by_update, ->{ order(updated_at: :desc) }


end
