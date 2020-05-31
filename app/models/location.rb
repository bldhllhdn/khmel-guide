class Location < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 256}
  validates :address, presence: true, length: { minimum: 10, maximum: 256}
  validates :category, presence: true, length: { minimum: 5, maximum: 256}
  has_many :comments, dependent: :destroy
end
