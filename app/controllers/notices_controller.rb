class NoticesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@notices = Notice.paginate(:page => params[:page])
	end

	def show
		@notice = Notice.find_by_id params[:notice_id]
	end

	def edit
		@notice_edit = Notice.find_by_id(params[:notice_id])
	end

	def new
 
	end

  def delete
	notice = Notice.find_by_id(params[:notice_id])
 	notice.destroy
 	redirect_to '/notices/index/1'
	end
end
