class BookInstance < ActiveRecord::Base
  attr_accessible :begin_date, :expired_date, :user_id, :book_id, :photo_registration_id, :book_reservation_id
	has_many :book_reservations
	has_many :photo_registrations
  belongs_to :book
  belongs_to :book_reservation
  belongs_to :photo_registration
end
