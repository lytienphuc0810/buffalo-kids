class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

	def set_locale
	  I18n.locale = current_user.nil? ? "en" : current_user.locale
	end

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
