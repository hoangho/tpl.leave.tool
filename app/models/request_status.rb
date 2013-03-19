class RequestStatus < ActiveRecord::Base
  attr_accessible :name

  has_many :leave_requests

  validates :name, presence: true
end
