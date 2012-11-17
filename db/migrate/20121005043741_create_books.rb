class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :book_code
      t.text :description
      t.string :author
      t.string :category
      t.date   :release_date
      t.string :image_url
      t.string :rating
      t.boolean :available
      t.timestamps
    end
  end
end
