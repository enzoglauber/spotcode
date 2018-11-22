class Artist < ApplicationRecord
  has_many :albums #sempre da foreign to main

  validates :name, presence: true
  has_one_attached :photo
end