class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
