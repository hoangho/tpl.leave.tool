require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :balance => 1.5,
        :user_rold_id => 1,
        :position_type_id => 2,
        :admin => false,
        :sex_id => 3,
        :email => "Email",
        :remember_token => "Remember Token",
        :identifier_url => "Identifier Url"
      ),
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :balance => 1.5,
        :user_rold_id => 1,
        :position_type_id => 2,
        :admin => false,
        :sex_id => 3,
        :email => "Email",
        :remember_token => "Remember Token",
        :identifier_url => "Identifier Url"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Remember Token".to_s, :count => 2
    assert_select "tr>td", :text => "Identifier Url".to_s, :count => 2
  end
end
