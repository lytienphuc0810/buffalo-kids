class NoticesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@notices = Notice.paginate(:page => params[:page])
	end

	def show
		@notice = Notice.find_by_id params[:notice_id]
	end
end
