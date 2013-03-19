class RemoveIsApprovedFromLeaveRequests < ActiveRecord::Migration
  def up
    remove_column :leave_requests, :is_approved
  end

  def down
    add_column :leave_requests, :is_approved, :boolean
  end
end
