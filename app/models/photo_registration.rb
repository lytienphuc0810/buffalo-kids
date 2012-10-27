class PhotoRegistration < ActiveRecord::Base
  attr_accessible :user_id, :finish_date, :quantity
  belongs_to :user
  has_one :book_instance
  has_one :book, :through => :book_instance
  self.per_page = 12
end
