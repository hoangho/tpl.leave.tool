require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/3/)
    rendered.should match(/Email/)
    rendered.should match(/Remember Token/)
    rendered.should match(/Identifier Url/)
  end
end
