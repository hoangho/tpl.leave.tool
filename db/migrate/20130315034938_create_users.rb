class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :day_of_birth
      t.float :balance
      t.integer :user_rold_id
      t.integer :position_type_id
      t.boolean :admin
      t.datetime :start_work_day
      t.integer :sex_id
      t.string :email
      t.string :remember_token
      t.string :identifier_url

      t.timestamps
    end
  end
end
