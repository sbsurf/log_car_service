require "spec_helper"

describe ServiceRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/service_records").should route_to("service_records#index")
    end

    it "routes to #new" do
      get("/service_records/new").should route_to("service_records#new")
    end

    it "routes to #show" do
      get("/service_records/1").should route_to("service_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_records/1/edit").should route_to("service_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_records").should route_to("service_records#create")
    end

    it "routes to #update" do
      put("/service_records/1").should route_to("service_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_records/1").should route_to("service_records#destroy", :id => "1")
    end

  end
end
