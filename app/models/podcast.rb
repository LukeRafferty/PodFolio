class Podcast < ApplicationRecord
  validates :name, presence: true
  has_many :selected_podcasts
  has_many :users, through: :selected_podcasts


end
