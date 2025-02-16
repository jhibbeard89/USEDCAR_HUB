class Car < ApplicationRecord
  belongs_to :user

  validates :brand, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :model, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
end
