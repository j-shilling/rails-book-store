class BookLocation < ApplicationRecord
  belongs_to :location
  belongs_to :book
end
