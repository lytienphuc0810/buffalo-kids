class BookReservation < ActiveRecord::Base
  attr_accessible :user_id, :start_date, :due_date, :extention_days, :receive
  belongs_to :user
  has_one :book_instance
  has_one :book, :through => :book_instance
  self.per_page = 12

  def self.timeout
  	book_reservations = BookReservation.all
      debugger
    book_reservations.each do |book_reservation|
  		if Date.today >= book_reservation.due_date && book_reservation.receive == false
  			book_reservation.destroy
  		end
  	end
  end
end
