require "spec_helper"

describe HostgroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/hostgroups").should route_to("hostgroups#index")
    end

    it "routes to #new" do
      get("/hostgroups/new").should route_to("hostgroups#new")
    end

    it "routes to #show" do
      get("/hostgroups/1").should route_to("hostgroups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hostgroups/1/edit").should route_to("hostgroups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hostgroups").should route_to("hostgroups#create")
    end

    it "routes to #update" do
      put("/hostgroups/1").should route_to("hostgroups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hostgroups/1").should route_to("hostgroups#destroy", :id => "1")
    end

  end
end
