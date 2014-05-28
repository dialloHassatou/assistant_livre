require "spec_helper"

describe ChapitresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chapitres").to route_to("chapitres#index")
    end

    it "routes to #new" do
      expect(:get => "/chapitres/new").to route_to("chapitres#new")
    end

    it "routes to #show" do
      expect(:get => "/chapitres/1").to route_to("chapitres#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chapitres/1/edit").to route_to("chapitres#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chapitres").to route_to("chapitres#create")
    end

    it "routes to #update" do
      expect(:put => "/chapitres/1").to route_to("chapitres#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chapitres/1").to route_to("chapitres#destroy", :id => "1")
    end

  end
end
