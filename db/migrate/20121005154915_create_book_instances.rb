class CreateBookInstances < ActiveRecord::Migration
  def change
    create_table :book_instances do |t|
			t.string :book_instance_code
			t.integer :book_id
			t.integer :book_reservation_id
			t.integer :photo_registration_id
      t.timestamps
    end
  end
end
