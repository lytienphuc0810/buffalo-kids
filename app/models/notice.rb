class Notice < ActiveRecord::Base
  attr_accessible 	:title,
				  					:content,
				  					:user_id
  validates :title, :content, :date_created, :date_updated, :presence => true

  belongs_to :user
  
	self.per_page = 12

  def short_content
  	self.content.truncate(30)
  end
end
