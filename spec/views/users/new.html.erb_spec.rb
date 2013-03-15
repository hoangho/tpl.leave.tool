require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :admin => false,
      :balance => 1.5,
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :identifier_url => "MyString",
      :position_type_id => 1,
      :remember_token => "MyString",
      :sex_id => 1,
      :user_role_id => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_balance", :name => "user[balance]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_identifier_url", :name => "user[identifier_url]"
      assert_select "input#user_position_type_id", :name => "user[position_type_id]"
      assert_select "input#user_remember_token", :name => "user[remember_token]"
      assert_select "input#user_sex_id", :name => "user[sex_id]"
      assert_select "input#user_user_role_id", :name => "user[user_role_id]"
    end
  end
end
