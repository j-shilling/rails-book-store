class Author < ApplicationRecord
  has_many :books
  has_many :locations, -> { distinct }, through: :books

  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :last_name, presence: true

  def full_name
    "#{last_name}, #{first_name}"
  end
end
