class BookInstance < ActiveRecord::Base
  attr_accessible :book_instance_code, :user_id, :book_id, :photo_registration_id, :book_reservation_id
  belongs_to :book
  belongs_to :book_reservation

  validates_presence_of :book_instance_code;
  validates_uniqueness_of :book_instance_code;
end
