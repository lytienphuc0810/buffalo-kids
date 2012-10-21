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

	def free_instance_to_reserve
		result = nil
		self.book_instances.each do |book_inst|
			if book_inst.book_reservations.empty?
				result ||= book_inst
			end
		end
		result
	end
end
