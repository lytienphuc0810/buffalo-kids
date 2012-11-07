class UsersController < ApplicationController
	before_filter :authenticate_user!
	def welcome
	end

	def index
		@users = User.paginate(:page => params[:page])
	end

	def show
		@user = User.find_by_id(params[:user_id])
	end

	def new
	end

	def edit
		@user = User.find_by_id(params[:user_id])
	end

	def update
		@user = User.find_by_id(params[:user_id])
		if(@user.update_attributes(params[:user]).nil?)
			#send some error messages
		else
			redirect_to "/users/show/#{@user.id}"
		end
	end

	def create
		user = User.find_by_username(params[:username])
		if(user.nil?)
			user = User.new(params[:user])
			user.save
			if(user.nil?)
				#send some error message
			else
				redirect_to "/users/show/#{user.id}"
			end
		else
			#send 'User exists' error message
		end
	end

	def delete
		user = User.find_by_id(params[:user_id])
		user.delete
		redirect_to '/users/index/1'
	end
end
