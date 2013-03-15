require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :balance => 1.5,
      :user_rold_id => 1,
      :position_type_id => 1,
      :admin => false,
      :sex_id => 1,
      :email => "MyString",
      :remember_token => "MyString",
      :identifier_url => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_balance", :name => "user[balance]"
      assert_select "input#user_user_rold_id", :name => "user[user_rold_id]"
      assert_select "input#user_position_type_id", :name => "user[position_type_id]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_sex_id", :name => "user[sex_id]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_remember_token", :name => "user[remember_token]"
      assert_select "input#user_identifier_url", :name => "user[identifier_url]"
    end
  end
end
