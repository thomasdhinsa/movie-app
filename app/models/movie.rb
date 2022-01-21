class Movie < ApplicationRecord
  validates :title, presence: true, numericality: { less_than: 40}
  validates :year, presence: true, numericality: { greater_than: 1994 }
  validates :plot, presence: true, length: { in: 20..700 }
  validates :director, presence: true, numericality: { greater_than: 2}
end
