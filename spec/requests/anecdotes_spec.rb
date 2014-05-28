require 'spec_helper'

describe "Anecdotes", :type => :request do
  describe "GET /anecdotes" do
    it "works! (now write some real specs)" do
      get anecdotes_path
      expect(response.status).to be(200)
    end
  end
end
