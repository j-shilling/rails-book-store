class CreateBookLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :book_locations do |t|
      t.integer :location_id
      t.integer :book_id

      t.timestamps
    end
  end
end
