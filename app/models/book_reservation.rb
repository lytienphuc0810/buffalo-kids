class BookReservation < ActiveRecord::Base
  attr_accessible :user_id, :book_instance_id, :start_date, :due_date, :extention_days
  belongs_to :user
  belongs_to :book_instance_id
end
