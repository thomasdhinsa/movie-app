class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true, numericality: { greater_than: 1994 }
  validates :plot, presence: true, length: { in: 20..700 }
  validates :director, presence: true
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  has_many :actors
end
