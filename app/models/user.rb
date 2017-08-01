class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  has_many :selected_podcasts
  has_many :podcasts, through: :selected_podcasts

end
