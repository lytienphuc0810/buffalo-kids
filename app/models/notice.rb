class Notice < ActiveRecord::Base
  attr_accessible 	:title,
  					:content,
  					:date_created,
  					:date_updated,
  					:user_id
  validates :title, :content, :date_created, :date_updated, :presence => true

  belongs_to :user
end
