class Book < ActiveRecord::Base
  attr_accessible :title, 
								  :book_code, 
								  :description, 
								  :author, 
								  :image_url, 
								  :release_date, 
								  :rating
	validates :title, :book_code, :image_url, :uniqueness => true
	validates :title, :book_code, :presence => true

	has_many :book_instances, :dependent => :destroy
	has_many :book_reservations, :through => :book_instances
	has_many :photo_registrations, :through => :book_instances

	self.per_page = 10
	def free_instance_to_get
		result = nil
		self.book_instances.each do |book_inst|
			if book_inst.book_reservation.nil? && book_inst.photo_registration.nil?
				result ||= book_inst
			end
		end
		result
	end
end
