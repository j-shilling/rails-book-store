class CreateBookStores < ActiveRecord::Migration[5.1]
  def change
    create_table :book_stores do |t|
      t.integer :store_id
      t.integer :book_id

      t.timestamps
    end
  end
end
