class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,
								  :password, 
								  :password_confirmation, 
								  :remember_me,
								  :username,
								  :role
								  							  
	has_many :book_reservations
	has_many :photo_registrations
	has_many :book_instances, :through => :book_reservations
	has_many :books, :through => :book_instances
	has_many :notices

	ROLES = [
		ADMIN = "admin",
		LIBRARIAN = "librarian",
		USER = "user"
	]

	before_validation :default_role
	# validates :username, :role, :presence => true
	# validates :username, :uniqueness => true
	validates :role, :inclusion => {:in => ROLES}

	ROLES.each do |role|
		# for selecting users based on given role
		scope role.pluralize.to_sym, where(:role => role)

		# for checking the given user has the given role or not
		# lay role tu #{role?}
		define_method("#{role}?") do
			self.role == role
		end		
	end
	 
	private
	  def default_role
	    self.role = USER if self.role.blank?
	  end

end
