class CreatePhotoRegistrations < ActiveRecord::Migration
  def change
    create_table :photo_registrations do |t|
    	t.integer :user_id
    	t.integer :book_id
    	t.date 		:finish_date
    	t.string  :quantity
      t.timestamps
    end
  end
end
