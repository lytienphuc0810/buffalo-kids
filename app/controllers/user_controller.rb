class UserController < ApplicationController
	before_filter :authenticate_user!
	def welcome
	end
end
