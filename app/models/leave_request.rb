class LeaveRequest < ActiveRecord::Base
  attr_accessible :comment, :request_status_id, :leave_from, :leave_to,
  				 :leave_type_id, :user_approve_id, :user_request_id

  belongs_to :request_status, class_name: "RequestStatus"
  belongs_to :leave_type
  belongs_to :user_request, class_name: "User", :foreign_key => "user_request_id"
  belongs_to :user_approve, class_name: "User"

  validates :leave_from, :leave_to, :leave_type_id,
  			:user_approve_id, :user_request_id, presence: true

  scope :order_by_created_day, order: 'leave_requests.created_at DESC'
  before_save :init_request_status

  private
  	def init_request_status
  		#pendding status
  		self.request_status_id = 1
  	end

end
