class AddRequestStatusIdToLeaveRequests < ActiveRecord::Migration
  def change
    add_column :leave_requests, :request_status_id, :integer
  end
end
