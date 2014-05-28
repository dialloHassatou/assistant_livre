require "spec_helper"

describe PersonnesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/personnes").to route_to("personnes#index")
    end

    it "routes to #new" do
      expect(:get => "/personnes/new").to route_to("personnes#new")
    end

    it "routes to #show" do
      expect(:get => "/personnes/1").to route_to("personnes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personnes/1/edit").to route_to("personnes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/personnes").to route_to("personnes#create")
    end

    it "routes to #update" do
      expect(:put => "/personnes/1").to route_to("personnes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personnes/1").to route_to("personnes#destroy", :id => "1")
    end

  end
end
