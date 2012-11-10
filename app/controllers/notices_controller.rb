class NoticesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@notices = Notice.paginate(:page => params[:page])
	end

	def show
		@notice = Notice.find_by_id(params[:notice_id])
	end

	def edit
	  @notice = Notice.find_by_id(params[:notice_id])
	end

  def update
    @notice = Notice.find_by_id(params[:notice_id])
    if(@notice.update_attributes(params[:notice]))
      redirect_to "/notices/show/#{@notice.id}"
    else
      render action: "edit"
    end
  end

	def new
		@notice = Notice.new
	end

  def create 
    @notice = Notice.new(params[:notice])
    if(@notice.save)
      redirect_to "/notices/show/#{@notice.id}"
    else
      render action: "new"
    end
  end

  def delete
	notice = Notice.find_by_id(params[:notice_id])
 	notice.destroy
 	redirect_to '/notices/index/1'
	end
end
