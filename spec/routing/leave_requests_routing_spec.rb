require "spec_helper"

describe LeaveRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/leave_requests").should route_to("leave_requests#index")
    end

    it "routes to #new" do
      get("/leave_requests/new").should route_to("leave_requests#new")
    end

    it "routes to #show" do
      get("/leave_requests/1").should route_to("leave_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leave_requests/1/edit").should route_to("leave_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leave_requests").should route_to("leave_requests#create")
    end

    it "routes to #update" do
      put("/leave_requests/1").should route_to("leave_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leave_requests/1").should route_to("leave_requests#destroy", :id => "1")
    end

  end
end
