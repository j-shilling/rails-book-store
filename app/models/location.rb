class Location < ApplicationRecord
  has_many :book_locations
  has_many :books, through: :book_locations
  has_many :authors, -> { distinct }, through: :books

  validates :name, presence: true
  validates :phone_number, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, message: "must be xxx-xxx-xxxx" }
end
