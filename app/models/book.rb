class Book < ApplicationRecord
  belongs_to :author
  has_many :book_stores
  has_many :stores, through: :book_stores

  validates :title, presence: true
  validates :price, numericality: { greater_than: 0 }

  accepts_nested_attributes_for :author, reject_if: :all_blank
end
