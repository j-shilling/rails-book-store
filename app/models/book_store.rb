class BookStore < ApplicationRecord
  belongs_to :store
  belongs_to :book
end
