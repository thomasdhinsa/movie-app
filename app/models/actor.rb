class Actor < ApplicationRecord
  validates :first_name, presence: true, length:  { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :known_for, presence: true 
  validates :age, presence: true, numericality: { greater_than: 13 }
end
