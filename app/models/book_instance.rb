class BookInstance < ActiveRecord::Base
  attr_accessible :begin_date, :expired_date, :user_id, :book_id 
	has_many :book_reservations
	has_many :photo_registrations
  belongs_to :book
end
