require 'spec_helper'

describe "Personnes", :type => :request do
  describe "GET /personnes" do
    it "works! (now write some real specs)" do
      get personnes_path
      expect(response.status).to be(200)
    end
  end
end
