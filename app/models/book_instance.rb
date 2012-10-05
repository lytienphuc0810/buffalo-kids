class BookInstance < ActiveRecord::Base
  attr_accessible :begin_date, :expired_date, :user_id, :book_id 

  belongs_to :user
  belongs_to :book
end
