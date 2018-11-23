class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :songs

  validates :title, presence: true
  validates :date, presence: true

  has_one_attached :cover #D (capa do album)


  def self.enabled (heard_categories)
    joins(:category, :songs).where(category: heard_categories).distinct().limit(4)
  end
  
  def self.by_name
    order(:playerd_count)
  end
end