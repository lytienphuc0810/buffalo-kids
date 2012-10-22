class PhotoRegistration < ActiveRecord::Base
  attr_accessible :user_id, :book_instance_id, :finish_date, :quantity
  belongs_to :user
  belongs_to :book_instance
end