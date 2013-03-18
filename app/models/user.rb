class User < ActiveRecord::Base
  attr_accessible :admin, :balance, :day_of_birth, :email, :first_name, 
  					:identifier_url, :last_name, :position_type_id, :remember_token,
  					 :sex_id, :start_work_day, :user_role_id

  	belongs_to :position_type, class_name: "PositionType"
  	belongs_to :sex, class_name: "Sex"
  	belongs_to :user_role, class_name: "UserRole"

  	has_many :leave_requests, dependent: :destroy, :foreign_key => "user_request_id"

  	validates :balance, :position_type_id, :sex_id, :user_role_id, :email, presence: true

  	before_save :create_remember_token

  	def full_name
  		first_name + " " + last_name
  	end
    
  	private 
	    def create_remember_token
	      self.remember_token = SecureRandom.urlsafe_base64
	      #If you are using Ruby 1.8.7, you should use SecureRandom.hex here instead
	      # self.remember_token = SecureRandom.hex
	    end
end
