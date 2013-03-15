require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :admin => false,
        :balance => 1.5,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :identifier_url => "Identifier Url",
        :position_type_id => 1,
        :remember_token => "Remember Token",
        :sex_id => 2,
        :user_role_id => 3
      ),
      stub_model(User,
        :admin => false,
        :balance => 1.5,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :identifier_url => "Identifier Url",
        :position_type_id => 1,
        :remember_token => "Remember Token",
        :sex_id => 2,
        :user_role_id => 3
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Identifier Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Remember Token".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
