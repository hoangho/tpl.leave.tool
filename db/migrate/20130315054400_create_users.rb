class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin
      t.float :balance
      t.datetime :day_of_birth
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :identifier_url
      t.integer :position_type_id
      t.string :remember_token
      t.integer :sex_id
      t.datetime :start_work_day
      t.integer :user_role_id

      t.timestamps
    end
  end
end
