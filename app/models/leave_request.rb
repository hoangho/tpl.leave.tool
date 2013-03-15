class LeaveRequest < ActiveRecord::Base
  attr_accessible :comment, :is_approved, :leave_from, :leave_to,
  				 :leave_type_id, :user_approve_id, :user_request_id

  belongs_to :leave_type
  belongs_to :user_request, class_name: "User"
  belongs_to :user_approve, class_name: "User"

  validates :is_approved, :leave_from, :leave_to, :leave_type_id,
  			:user_approve_id, :user_request_id, presence: true

  # scope :recent, order: 'leave_requests.created_at DESC'

  
end
