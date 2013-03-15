require 'spec_helper'

describe "leave_requests/show" do
  before(:each) do
    @leave_request = assign(:leave_request, stub_model(LeaveRequest,
      :leave_type_id => 1,
      :comment => "MyText",
      :user_request_id => 2,
      :user_approve_id => 3,
      :is_approved => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
  end
end
