class User < ActiveRecord::Base
  attr_accessible :admin, :balance, :day_of_birth, :email, :first_name, 
  					:identifier_url, :last_name, :position_type_id, :remember_token,
  					 :sex_id, :start_work_day, :user_role_id

  	belongs_to :position_type, class_name: "PositionType"
  	belongs_to :sex, class_name: "Sex"
  	belongs_to :user_role, class_name: "UserRole"

  	has_many :leave_requests, dependent: :destroy

  	validates :balance, :position_type_id, :sex_id, :user_role_id, :email, presence: true
end
