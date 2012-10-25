class BookReservation < ActiveRecord::Base
  attr_accessible :user_id, :start_date, :due_date, :extention_days
  belongs_to :user
  has_one :book_instance
  has_one :book, :through => :book_instance
  self.per_page = 10
end
