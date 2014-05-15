class CreateBookGenres < ActiveRecord::Migration
  def change
    create_table :book_genres do |t|
      t.references :book, index: true
      t.references :genre, index: true

      t.timestamps
    end
  end
end
