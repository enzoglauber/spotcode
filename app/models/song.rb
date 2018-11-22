class Song < ApplicationRecord
  belongs_to :album

  validates :title, presence: true
  has_one_attached :file #arquivo mp3
end