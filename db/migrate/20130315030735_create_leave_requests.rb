class CreateLeaveRequests < ActiveRecord::Migration
  def change
    create_table :leave_requests do |t|
      t.integer :leave_type_id
      t.text :comment
      t.datetime :leave_from
      t.datetime :leave_to
      t.integer :user_request_id
      t.integer :user_approve_id
      t.boolean :is_approved

      t.timestamps
    end
  end
end
