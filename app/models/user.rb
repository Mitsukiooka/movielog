class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :reviews, dependent: :destroy
  has_many :works, through: :reviews

  has_secure_token :api_token

end
