class Work < ApplicationRecord
  validates :title, presence: true
  validates :release, presence: true
  validates :starring, presence: true
  validates :description, presence: true

  has_one_attached :image
  belongs_to :director

  has_many :work_genres, dependent: :destroy
  has_many :genres, through: :work_genres
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  attr_accessor :image_blob_id

  acts_as_list

  scope :by_update, ->{ order(updated_at: :desc) }
  scope :by_position, ->{ order(updated_at: :asc) }

  def avarage_rate
    total = 0
    reviews.each do |review|
      total += review.rate
    end
    avarage_rate = (total.to_f / reviews.length.to_f).ceil(1)
    return avarage_rate
  end

  def rate_max
    reviews.sort_by{|x| x.rate}.last.rate
  end

  def rate_min
    reviews.sort_by{|x| x.rate}.first.rate
  end


  def my_review(user)
      reviews.find_by(user_id: user.id)
  end
end
