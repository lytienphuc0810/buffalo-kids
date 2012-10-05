class CreateNotices < ActiveRecord::Migration
	def change
		create_table :notices do |t|
			t.string :title
			t.string :content
			t.date :date_created
			t.date :date_updated
			t.integer :user_id
			t.timestamps
		end
	end
end
