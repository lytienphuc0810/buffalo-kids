class CreateBookInstances < ActiveRecord::Migration
  def change
    create_table :book_instances do |t|
			t.date :begin_date
			t.date :expired_date
			t.integer :user_id
			t.integer :book_id
      t.timestamps
    end
  end
end
