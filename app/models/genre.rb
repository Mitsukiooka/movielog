class Genre < ApplicationRecord
  has_many :work_genres, dependent: :destroy
  has_many :works, through: :work_genres
end
