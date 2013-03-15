require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(/Email/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Identifier Url/)
    rendered.should match(/1/)
    rendered.should match(/Remember Token/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
