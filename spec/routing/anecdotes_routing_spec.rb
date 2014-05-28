require "spec_helper"

describe AnecdotesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/anecdotes").to route_to("anecdotes#index")
    end

    it "routes to #new" do
      expect(:get => "/anecdotes/new").to route_to("anecdotes#new")
    end

    it "routes to #show" do
      expect(:get => "/anecdotes/1").to route_to("anecdotes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/anecdotes/1/edit").to route_to("anecdotes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/anecdotes").to route_to("anecdotes#create")
    end

    it "routes to #update" do
      expect(:put => "/anecdotes/1").to route_to("anecdotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anecdotes/1").to route_to("anecdotes#destroy", :id => "1")
    end

  end
end
