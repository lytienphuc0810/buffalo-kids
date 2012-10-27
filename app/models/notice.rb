class Notice < ActiveRecord::Base
  attr_accessible 	:title,
				  					:content,
				  					:user_id
  validates :title, :content, :date_created, :date_updated, :presence => true

  belongs_to :user

  def short_content
  	self.content.truncate(30)
  end
end
