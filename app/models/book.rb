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
end
