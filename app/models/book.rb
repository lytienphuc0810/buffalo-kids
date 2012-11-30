class Book < ActiveRecord::Base
  attr_accessible :title, 
								  :book_code, 
								  :description, 
								  :author, 
								  :image_url, 
								  :release_date, 
								  :rating
	validates_uniqueness_of :title, :book_code
	validates_presence_of :title, :book_code

	before_validation :default_image_url

	has_many :book_instances, :dependent => :destroy
	has_many :book_reservations, :through => :book_instances
	has_many :photo_registrations

	self.per_page = 12

	ATTRS = [:title, :book_code, :description, :author, :category, :rating]

	searchable do
		text :title
		text :book_code
		text :description
		text :author
		text :category
		text :rating
	end

	def self.my_search params
		Book.reindex
		Book.search do
      ATTRS.each do |element|
        if params[element]
          fulltext params[element] do
            fields(element)
          end
        end
      end
		end.results
	end

	def free_instance_to_get
		result = nil
		self.book_instances.each do |book_inst|
			if book_inst.book_reservation.nil?
				result ||= book_inst
			end
		end
		result
	end

	def default_image_url 
		if self.image_url.blank?
			self.image_url = "/assets/no_photo.png"
		end
	end
end
