class EtcsController < ApplicationController
	def faq 
		
	end

	def contact
		
	end

	def set_en
		current_user.locale = "en"
		current_user.save
		redirect_to "/"
	end

	def set_vi
		current_user.locale = "vi"
		current_user.save
		redirect_to "/"
	end
end