class UsersController < ApplicationController
	before_filter :authenticate_user!
	def welcome
	end

	def index
		@users = User.all
	end

	def new
		@user = User.new

		respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
	end

	def edit
		@user = User.find_by_id(params[:user_id])
	end

	def save
		@user = User.find_by_id(params[:user_id])
		@user.save
	end

	def delete
		user = User.find_by_id(params[:user_id])
		user.delete
		redirect_to '/users/index'
	end
end
