class UsersController < ApplicationController
	before_filter :authenticate_user!
	def welcome
	end
end
