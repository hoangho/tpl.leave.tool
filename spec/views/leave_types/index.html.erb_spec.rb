require 'spec_helper'

describe "leave_types/index" do
  before(:each) do
    assign(:leave_types, [
      stub_model(LeaveType,
        :name => "Name",
        :value => 1.5
      ),
      stub_model(LeaveType,
        :name => "Name",
        :value => 1.5
      )
    ])
  end

  it "renders a list of leave_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
