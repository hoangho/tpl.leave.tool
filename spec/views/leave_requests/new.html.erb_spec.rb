require 'spec_helper'

describe "leave_requests/new" do
  before(:each) do
    assign(:leave_request, stub_model(LeaveRequest,
      :leave_type_id => 1,
      :comment => "MyText",
      :user_request_id => 1,
      :user_approve_id => 1,
      :is_approved => false
    ).as_new_record)
  end

  it "renders new leave_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leave_requests_path, :method => "post" do
      assert_select "input#leave_request_leave_type_id", :name => "leave_request[leave_type_id]"
      assert_select "textarea#leave_request_comment", :name => "leave_request[comment]"
      assert_select "input#leave_request_user_request_id", :name => "leave_request[user_request_id]"
      assert_select "input#leave_request_user_approve_id", :name => "leave_request[user_approve_id]"
      assert_select "input#leave_request_is_approved", :name => "leave_request[is_approved]"
    end
  end
end
