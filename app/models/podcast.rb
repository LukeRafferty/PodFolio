class Podcast < ApplicationRecord
  validates :name, presence: true
end
