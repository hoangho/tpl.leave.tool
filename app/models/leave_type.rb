class LeaveType < ActiveRecord::Base
  attr_accessible :name, :value

  has_many :leave_requests, dependent: :destroy
  
  validates :name, :value, presence: true
end
