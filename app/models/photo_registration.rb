class PhotoRegistration < ActiveRecord::Base
  attr_accessible :user_id, :finish_date, :quantity, :book_id
  belongs_to :user
  belongs_to :book
  self.per_page = 12
end
