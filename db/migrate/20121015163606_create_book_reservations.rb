class CreateBookReservations < ActiveRecord::Migration
  def change
    create_table :book_reservations do |t|
    	t.integer :user_id
      t.boolean :receive
    	t.date 		:start_date
    	t.date 		:due_date
    	t.integer :extention_days
      t.timestamps
    end
  end
end
