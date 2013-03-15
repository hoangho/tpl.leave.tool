require 'spec_helper'

describe "leave_requests/index" do
  before(:each) do
    assign(:leave_requests, [
      stub_model(LeaveRequest,
        :leave_type_id => 1,
        :comment => "MyText",
        :user_request_id => 2,
        :user_approve_id => 3,
        :is_approved => false
      ),
      stub_model(LeaveRequest,
        :leave_type_id => 1,
        :comment => "MyText",
        :user_request_id => 2,
        :user_approve_id => 3,
        :is_approved => false
      )
    ])
  end

  it "renders a list of leave_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
