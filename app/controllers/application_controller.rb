class ApplicationController < ActionController::Base
  protect_from_forgery
	def after_sign_in_path_for(resource_or_scope)
		case resource_or_scope.role
			when "admin"
				"/users/index/1"
			when "user"
				"/book_reservations/home/1"
			when "librarian"
				"/books/index/1"
		end
	end
end
